<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DrivingPracticeResource\Pages;
use App\Models\DrivingPractice;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Actions\Action;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Forms\Components\Section;
use Filament\Support\Facades\FilamentView;
use Illuminate\Validation\Rule;

class DrivingPracticeResource extends Resource
{
    protected static ?string $model = DrivingPractice::class;

    protected static ?string $navigationIcon = 'heroicon-o-clock';

    protected static ?string $modelLabel  = 'Prácticas de conducción';

    protected static ?string $navigationGroup = 'REGISTRO PRACTICAS';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('vehicle_id')
                    ->relationship('vehicle', 'plate_number')
                    ->label('Vehiculo')
                    ->required()
                    ->preload()
                    ->searchable()
                    ->rule(function ($get) {  // funcion para validar que no se repita la patente a la misma hora.
                        return Rule::unique('driving_practices', 'vehicle_id')
                            ->where('start_time', $get('start_time'))
                            ->ignore($get('id'));
                    }),
                Forms\Components\Select::make('instructor_id')
                    ->relationship('instructor', 'name')
                    ->options(function () {    // Función para obtener los instructores disponibles
                        return DrivingPractice::getAvailableInstructors()->pluck('name', 'id');
                    })
                    ->required()
                    ->preload()
                    ->searchable(),
                Forms\Components\Select::make('student_id')
                    ->relationship('student', 'name')
                    ->label('Estudiante')
                    ->required()
                    ->preload()
                    ->searchable(),
                Forms\Components\DateTimePicker::make('start_time')
                    ->label('Fecha Hora Inicio')
                    ->seconds(false)
                    ->required(),

                Forms\Components\DateTimePicker::make('end_time')
                    ->label('Fecha Hora Termino')
                    ->seconds(false)
                    ->required(),
                Forms\Components\Select::make('status')
                    ->options([
                        'programado' => 'Programado',
                        'completado' => 'Completado',
                        'cancelado' => 'Cancelado',
                    ])
                    ->required(),
                Forms\Components\RichEditor::make('notes')
                    ->toolbarButtons([
                        'bold',
                        'bulletList',
                        'codeBlock',
                        'heading',
                        'italic',
                        'link',
                        'orderedList',
                        'redo',
                        'strike',
                        'undo',
                    ])
                    ->maxLength(200),  
                    
                ]);
            
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('vehicle.plate_number')
                    ->label('Vehiculo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('instructor.name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('student.name')
                    ->label('Estudiante')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('start_time')
                    ->label('Fecha Hora Inicio')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('end_time')
                    ->label('Fecha Hora Termino')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('status')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'programado' => 'warning',
                        'completado' => 'success',
                        'cancelado' => 'danger',
                    }),
            ])
            ->filters([
                SelectFilter::make('status')
                    ->options([
                        'programado' => 'Programado',
                        'completado' => 'Completado',
                        'cancelado' => 'Cancelado',
                    ]),
                SelectFilter::make('instructor')
                    ->relationship('instructor', 'name'),
                SelectFilter::make('vehicle')
                    ->relationship('vehicle', 'plate_number'),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                
                Tables\Actions\Action::make('print')
                    ->icon('heroicon-o-printer')
                    ->url(fn (DrivingPractice $record): string => route('practice.print', $record))
                    ->openUrlInNewTab(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                Tables\Actions\DeleteBulkAction::make(),
                ]),
                ExportBulkAction::make()
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDrivingPractices::route('/'),
            'create' => Pages\CreateDrivingPractice::route('/create'),
            'edit' => Pages\EditDrivingPractice::route('/{record}/edit'),
        ];
    }
    
}
<?php

namespace App\Filament\Resources\MatriculaResource\Pages;

use App\Filament\Resources\MatriculaResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;


class ViewMatricula extends ViewRecord
{
    protected static string $resource = MatriculaResource::class;


    // Muestra una vista mas detallada.

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('INFORMACIÓN DEL ALUMNO')
                    ->schema([
                        TextEntry::make('codigo')
                            ->label('Código')
                            ->badge('success') // Agrega un estilo de insignia de éxito (verde)
                            ->columnSpan('full'), 
                        
                        TextEntry::make('nombre')
                            ->label('Nombre')
                            ->columnSpan(1), // Alineado en una columna

                        TextEntry::make('apellido')
                            ->label('Apellido')
                            ->columnSpan(1),

                        TextEntry::make('rut')
                            ->label('RUT')
                            ->numeric()
                            ->columnSpan(1),

                        TextEntry::make('correo')
                            ->label('Email')
                            ->icon('heroicon-o-envelope-open') // Agrega un ícono de correo
                            ->columnSpan('1'), 

                        TextEntry::make('telefono')
                            ->label('Teléfono')
                            ->icon('heroicon-o-phone') // Agrega un ícono de teléfono
                            ->columnSpan(1),

                        TextEntry::make('edad')
                            ->label('Edad')
                            ->numeric()
                            ->badge('info') // Agrega un estilo de insignia de información (azul)
                            ->columnSpan(1),

                        TextEntry::make('fecha_matricula')
                            ->label('Fecha Matrícula')
                            ->date()
                            ->columnSpan(1),

                        TextEntry::make('fecha_nacimiento')
                            ->label('Fecha de Nacimiento')
                            ->date()
                            ->columnSpan(1),

                        TextEntry::make('direccion')
                            ->label('Dirección')
                            ->icon('heroicon-o-map-pin')
                            ->columnSpan('full'), // Alineado en una sola columna

                        TextEntry::make('comuna')
                            ->label('Comuna')
                            ->columnSpan(1),

                        TextEntry::make('nivel')
                            ->label('Nivel de Escolaridad')
                            ->badge('warning') // Insignia amarilla para resaltar
                            ->columnSpan(1),

                        TextEntry::make('licencia_actual')
                            ->label('Licencia Actual')
                            ->badge('primary') // Insignia principal
                            ->columnSpan(1),

                        TextEntry::make('curso.codigo')
                            ->label('Curso')
                            ->badge('secondary') // Insignia secundaria
                            ->columnSpan(1),

                        TextEntry::make('comments')
                            ->label('Comentarios')
                            ->limit(50)
                            ->columnSpan('full')
                            ->markdown() // Permite formato de Markdown para mejor estilo
                    ])
                    ->columns(2) // Distribuye en dos columnas
                    ->collapsible() // Permite ocultar la sección cuando no se necesita
            ]);
    }

}

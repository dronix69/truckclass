<?php

namespace App\Filament\Resources\DrivingPracticeResource\Pages;

use App\Filament\Resources\DrivingPracticeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDrivingPractice extends EditRecord
{
    protected static string $resource = DrivingPracticeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

<?php

namespace App\Filament\Resources\DrivingPracticeResource\Pages;

use App\Filament\Resources\DrivingPracticeResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDrivingPractice extends CreateRecord
{
    protected static string $resource = DrivingPracticeResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

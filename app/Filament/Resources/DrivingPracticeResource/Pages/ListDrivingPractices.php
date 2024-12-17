<?php

namespace App\Filament\Resources\DrivingPracticeResource\Pages;

use App\Filament\Resources\DrivingPracticeResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Widgets\DrivingPracticeStatsOverview;

class ListDrivingPractices extends ListRecords
{
    protected static string $resource = DrivingPracticeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    protected function getHeaderWidgets(): array
    {
        return [
            DrivingPracticeStatsOverview::class,
        ];
    }
}

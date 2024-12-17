<?php

namespace App\Filament\Widgets;

use App\Models\Instructor;
use App\Models\DrivingPractice;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Request;

class DrivingPracticeStatsOverview extends BaseWidget
{
    protected static ?string $pollingInterval = '10s';

    public static function canView(): bool
    {
        $currentUrl = Request::url();
        return str_contains($currentUrl, '/admin/driving-practices');
    }

    protected function getStats(): array
    {
        $instructors = Instructor::all();
        $stats = [];

        foreach ($instructors as $instructor) {
            $practiceCount = DrivingPractice::where('instructor_id', $instructor->id)
                ->whereDate('start_time', now()->toDateString())
                ->count();

            $stats[] = Stat::make("Clases de {$instructor->name}", $practiceCount)
                ->description('Hoy')
                ->descriptionIcon('heroicon-s-academic-cap')
                ->color($this->getStatColor($practiceCount));
        }

        $totalPractices = DrivingPractice::whereDate('start_time', now()->toDateString())->count();
        $stats[] = Stat::make('Total de clases', $totalPractices)
            ->description('Hoy')
            ->descriptionIcon('heroicon-s-calendar')
            ->color('info');

        return $stats;
    }

    protected function getStatColor(int $practiceCount): string
    {
        if ($practiceCount >= 8) {
            return 'danger';
        } elseif ($practiceCount >= 6) {
            return 'warning';
        }
        return 'success';
    }
}
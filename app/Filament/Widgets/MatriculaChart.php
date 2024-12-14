<?php

namespace App\Filament\Widgets;

use App\Models\Matricula;
use Filament\Widgets\ChartWidget;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;
use BezhanSalleh\FilamentShield\Traits\HasWidgetShield;

class MatriculaChart extends ChartWidget
{
    use HasWidgetShield;
    protected static ?int $sort = 5;
    protected static ?string $heading = 'Chart Matriculas';
    //protected static string $color = 'info';

    public ?string $filter = 'today';

    protected function getFilters(): ?array
    {
        return [
            'today' => 'Dia',
            'week' => 'Semana',
            'month' => 'Mes',
            'year' => 'Año',
        ];
    }

    protected function getData(): array
    {

        $activeFilter = $this->filter;

        $data = Trend::model(Matricula::class)
        ->between(
            start: now()->startOfYear(),
            end: now()->endOfYear(),
        )
        ->perMonth()
        ->count();
        return [
            'datasets' => [
                [
                    'label' => 'Matriculas Creadas',
                    'data' => $data->map(fn (TrendValue $value) => $value->aggregate),

                ]

            ],

            'labels' => $data->map(fn (TrendValue $value) => $value->date),
        ];
        
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
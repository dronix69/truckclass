<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\DrivingPracticeResource;
use App\Models\DrivingPractice;
use Illuminate\Database\Eloquent\Model;
use Filament\Widgets\Widget;
use Saade\FilamentFullCalendar\Widgets\FullCalendarWidget;
use Filament\Forms;

class CalendarWidget extends FullCalendarWidget
{

    protected static ?int $sort = 6;

    public Model | string | null $model = DrivingPractice::class;
    public function fetchEvents(array $fetchInfo): array
    {
        return DrivingPractice::query()
            ->where('start_time', '>=', $fetchInfo['start'])
            ->where('end_time', '<=', $fetchInfo['end'])
            ->get()
            ->map(
                fn (DrivingPractice $event) => [
                    'id' => $event->id,
                    'title' => $event->student->name,
                    'ppu' => $event->vehicle->plate_number,
                    'start' => $event->start_time,
                    'end' => $event->end_time,
                    
                ]
            )
            ->all();
    }
    
    
}

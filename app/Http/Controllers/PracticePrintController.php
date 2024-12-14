<?php

namespace App\Http\Controllers;

use App\Models\DrivingPractice;
use Illuminate\Http\Request;
use Carbon\Carbon;

class PracticePrintController extends Controller
{
    public function print(DrivingPractice $practice)
    {
        $student = $practice->student;
        $practices = $student->practices()
            ->with(['instructor', 'vehicle'])
            ->orderBy('start_time')
            ->get()
            ->map(function ($practice) {
                $startTime = Carbon::parse($practice->start_time);
                $endTime = Carbon::parse($practice->end_time);

                $durationInMinutes = $startTime->diffInMinutes($endTime);

                // Convierte a formato horas:minutos
                $practice->duration = sprintf('%01d:%02d', 
                    intdiv($durationInMinutes, 60), 
                    $durationInMinutes % 60
                );
                
                // Mantener el cálculo decimal si lo necesitas
                $practice->duration_hours = $durationInMinutes / 60;

                return $practice;
            });

        return view('practices.print', compact('student', 'practices', 'practice'));
    }
}
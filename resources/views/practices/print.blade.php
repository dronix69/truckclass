<!DOCTYPE html>
<html>

<head>
    <title>Prácticas de manejo - {{ $practice->student->name }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 20px;
        }

        .logo {
            width: 100px;
            height: auto;
            margin-right: 20px;
        }

        .header-text {
            flex-grow: 1;
        }

        .summary-section {
            margin: 20px 0;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .summary-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 15px;
        }

        .summary-card {
            background: white;
            padding: 15px;
            border-radius: 6px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .summary-card h3 {
            margin: 0 0 10px 0;
            color: #2c3e50;
            font-size: 16px;
        }

        .summary-card .number {
            font-size: 24px;
            font-weight: bold;
            color: #3498db;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .student-info {
            margin: 20px 0;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 5px;
        }

        .progress-bar {
            width: 100%;
            height: 20px;
            background-color: #e9ecef;
            border-radius: 10px;
            overflow: hidden;
            margin-top: 10px;
        }

        .progress-bar-fill {
            height: 100%;
            background-color: #3498db;
            transition: width 0.3s ease;
        }

        @media print {
            body {
                margin: 0;
                padding: 15px;
            }

            .header {
                margin-bottom: 20px;
            }

            .no-print {
                display: none;
            }

            .summary-section {
                break-inside: avoid;
            }
        }
    </style>
</head>

<body>
    <div class="header">
        <img src="{{ asset('images/logo-full.png') }}" alt="Logo" class="logo">
        <div class="header-text">
            <h1>Registro de prácticas de conducir</h1>
            <p>Escuela de Conducción PRUEBA</p>
        </div>
    </div>

    <div class="student-info">
        <h2>Información del Alumno</h2>
        <p><strong>Nombre:</strong> {{ $practice->student->name }}</p>
        <p><strong>Teléfono:</strong> {{ $practice->student->phone }}</p>
        <p><strong>Email:</strong> {{ $practice->student->email }}</p>
    </div>


    <div class="summary-grid">
        @php
            use Carbon\Carbon;
            $totalMinutes = 0;
            $completedMinutes = 0;
            $cancelledMinutes = 0;
            $scheduledMinutes = 0;

            foreach ($practices as $practice) {
                $durationMinutes = Carbon::parse($practice->start_time)->diffInMinutes(
                    Carbon::parse($practice->end_time),
                );

                $totalMinutes += $durationMinutes;

                switch ($practice->status) {
                    case 'completed':
                        $completedMinutes += $durationMinutes;
                        break;
                    case 'cancelled':
                        $cancelledMinutes += $durationMinutes;
                        break;
                    case 'scheduled':
                        $scheduledMinutes += $durationMinutes;
                        break;
                }
            }

            // Convertir minutos a horas con un decimal
            $totalHours = number_format($totalMinutes / 60, 1);
            $completedHours = number_format($completedMinutes / 60, 1);
            $scheduledHours = number_format($scheduledMinutes / 60, 1);
            $completionRate = $totalMinutes > 0 ? ($completedMinutes / $totalMinutes) * 100 : 0;
        @endphp


    </div>


    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Hora inicio</th>
                <th>Hora término</th>
                <th>Duración</th>
                <th>Instructor</th>
                <th>Vehículo</th>
                <th>Estado</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($practices as $practice)
                <tr>
                    <td>{{ $practice->start_time->format('d/m/Y') }}</td>
                    <td>{{ $practice->start_time->format('H:i') }}</td>
                    <td>{{ $practice->end_time->format('H:i') }}</td>
                    <td>
                        @php
                            $minutes = $practice->start_time->diffInMinutes($practice->end_time);
                            $formattedDuration = sprintf('%01d:%02d', intdiv($minutes, 60), $minutes % 60);
                        @endphp
                        {{ $formattedDuration }}
                    </td>
                    <td>{{ $practice->instructor->name }}</td>
                    <td>{{ $practice->vehicle->plate_number }}</td>
                    <td>
                        @php
                            $statusColors = [
                                'programado' => '#FFA500',
                                'completado' => '#4CAF50',
                                'cancelado' => '#FF0000',
                            ];
                            $statusText = [
                                'programado' => 'Programada',
                                'completado' => 'Completada',
                                'cancelado' => 'Cancelada',
                            ];
                        @endphp
                        <span style="color: {{ $statusColors[$practice->status] }}">
                            {{ $statusText[$practice->status] }}
                        </span>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div style="margin-top: 30px; text-align: center;">
        <p style="color: #666; font-size: 12px;">
            Documento generado el {{ now()->format('d/m/Y H:i') }}
        </p>
    </div>

    <button class="no-print" onclick="window.print()"
        style="
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;">
        Imprimir
    </button>
</body>

</html>
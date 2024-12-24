<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boleta</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 0;
            padding: 0;
            width: 80mm; /* Ancho estándar de impresora térmica */
        }
        .header, .footer {
            text-align: center;
            margin-bottom: 10px;
        }
        .header h1 {
            margin: 0;
            font-size: 16px;
        }
        .details, .items {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }
        .details td, .items td {
            padding: 4px;
        }
        .items th, .items td {
            border-bottom: 1px dashed #000;
            text-align: left;
        }
        .footer {
            font-size: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Nombre de la Empresa</h1>
        <p>Dirección: Calle Falsa 123</p>
        <p>RUT: 12.345.678-9</p>
        <p>Fecha: {{ now()->format('d/m/Y') }}</p>
    </div><br
    
    <table class="details">
        <tr>
            <td><strong>Nombre:</strong></td>
            <td>{{ $venta->nombre }} {{ $venta->apellido }}</td>
        </tr>
        <tr>
            <td><strong>RUT Cliente:</strong></td>
            <td>{{ $venta->rut }}</td>
        </tr>
        <tr>
            <td><strong>Forma de Pago:</strong></td>
            <td>{{ $venta->forma_pago }}</td>
            
        </tr>
    </table>
    
    <table class="items">
        <thead>
            <tr>
                <th>Boleta</th>
                <th>Cuota</th>
                <th>Valor</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{{ $venta->boleta }}</td>
                <td>{{ $venta->cuota }}</td>
                <td>${{ number_format($venta->total, 0, ',', '.') }}</td>
            </tr>
        </tbody>
    </table>
    
    <div class="footer">
        <p>Gracias por su preferencia</p>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }
        h1, h2 {
            color: #0056b3;
        }
        p {
            margin: 10px 0;
        }
        .footer {
            margin-top: 20px;
            font-size: 0.9em;
            color: #666;
        }
    </style>
</head>
<body>
    <h1>Hola</h1>
    <h2>{{ $matricula->nombre }} {{ $matricula->apellido }},</h2>
    <p>Te damos la bienvenida a nuestra Escuela de Conductores.</p>
    <br>
    <p>Tu código de matrícula es: <strong>{{ $matricula->codigo }}</strong></p>
    <p>Curso al cual te matriculaste: @if ($matricula->curso) <strong>{{ $matricula->curso->codigo }}</strong> @endif</p>
    <p>Dirección de la Escuela: Lord cochrane N° 490, Temuco</p>
    <p>Horario de Clases: Lunes a Viernes de 9:00 a 12:00 y de 14:00 a 17:00</p>
    <p>Para más información, no dudes en contactarnos a través de nuestro correo: <strong>prueba@prueba.cl</strong> o nuestro telefono: <strong>217868</strong></p>
    <br>
    <p>¡Te esperamos!</p>
    <div class="footer">
        <p>Este correo es generado automáticamente, por favor no respondas a este mensaje.</p>
        <p>WEB: www.startel.cl  &nbsp;&nbsp;&nbsp;&nbsp; WHATSAPP: +56 9 8855 1105</p>
    </div>
</body>
</html>

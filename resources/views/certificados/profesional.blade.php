</html><!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certificado Profesional</title>
    <style>
        @page {
            size: 232mm 309mm;
            margin: 0;
        }
        body {
            margin: 0;
            padding: 0;
            
        }
        .hoja {
            width: 232mm;
            height: 309mm;
            position: relative;
            background-color: #fff;
            page-break-after: avoid;
            overflow: hidden;
        }
        .elemento {
            position: absolute;
            font-family: Arial, sans-serif;
        }
        #cerca {
            top: 267px;
            left: 310px;
            font-size: 24px;
            font-weight: bold;
        }
        #escuela {
            top: 307px;
            left: 219px;
        }
        #rut {
            top: 307px;
            left: 625px;
        }
        #belloun {
            top: 336px;
            left: 268px;
        }
        #tenun {
            top: 362px;
            left: 182px;
        }
        #novena {
            top: 362px;
            left: 638px;
        }
        #codun {
            top: 393px;
            left: 461px;
        }
        #fecun {
            top: 393px;
            left: 610px;
        }
        #codos {
            top: 423px;
            left: 465px;
        }
        #fecdo {
            top: 423px;
            left: 615px;
        }
        #nombre {
            top: 532px;
            left: 231px;
            font-size: 22px;
            font-weight: bold;
        }
        #rutal {
            top: 585px;
            left: 167px;
        }
        #curso {
            top: 601px;
            left: 658px;
        }
        #sit {
            top: 672px;
            left: 302px;
        }
        #novenan {
            top: 697px;
            left: 640px;
        }
        #bellom {
            top: 731px;
            left: 228px;
        }
        #temuco {
            top: 759px;
            left: 224px;
        }
        #novenatre {
            top: 759px;
            left: 648px;
        }
        #codigo {
            top: 795px;
            left: 240px;
        }
        #finicio {
            top: 795px;
            left: 560px;
        }
        #ftermino {
            top: 795px;
            left: 680px;
        }
        #jorge {
            top: 882px;
            left: 207px;
        }
        #jorgerut {
            top: 925px;
            left: 203px;
        }
        #temucotres {
            top: 1109px;
            left: 110px;
        }
        #fnow {
            top: 1109px;
            left: 193px;
        }
    </style>
</head>
<body>
    <div class="hoja">
        <div id="cerca" class="elemento">Cerca Ltda</div>
        <div id="escuela" class="elemento">Centro de Estudios Regionales y Capac ltda</div>
        <div id="rut" class="elemento">76.018.710-0</div>
        <div id="belloun" class="elemento">Andres Bello 1180</div>
        <div id="tenun" class="elemento">Temuco</div>
        <div id="novena" class="elemento">Novena</div>
        <div id="codun" class="elemento">238</div>
        <div id="fecun" class="elemento">28-03-2014</div>
        <div id="codos" class="elemento">260</div>
        <div id="fecdo" class="elemento">02-04-2014</div>
        <div id="nombre" class="elemento">{{ $certificado->nombre }} {{ $certificado->apellido }}</div>
        <div id="rutal" class="elemento">{{ $certificado->rut }}</div>
        <div id="curso" class="elemento">{{ $certificado->curso }}</div>
        <div id="sit" class="elemento">REGULAR</div>
        <div id="novenan" class="elemento">Novena</div>
        <div id="bellom" class="elemento">Andres Bello 1180</div>
        <div id="temuco" class="elemento">Temuco</div>
        <div id="novenatre" class="elemento">Novena</div>
        <div id="codigo" class="elemento">{{ $certificado->codigo_curso }}</div>
        <div id="finicio" class="elemento">{{ \Carbon\Carbon::parse($certificado->fecha_start)->format('d/m/Y') }}</div>
        <div id="ftermino" class="elemento">{{ \Carbon\Carbon::parse($certificado->fecha_end)->format('d/m/Y') }}</div>
        <div id="jorge" class="elemento">Jorge Romero Fuentes</div>
        <div id="jorgerut" class="elemento">6.886.183-7</div>
        <div id="temucotres" class="elemento">Temuco:</div>
        <div id="fnow" class="elemento">
            <span style="margin-right: 50px;">{{ \Carbon\Carbon::parse($certificado->fecha_otorgado)->locale('es')->isoFormat('D') }}</span>
            <span style="margin-right: 50px;">{{ \Carbon\Carbon::parse($certificado->fecha_otorgado)->locale('es')->isoFormat('MMMM') }}</span>
            <span>{{ \Carbon\Carbon::parse($certificado->fecha_otorgado)->locale('es')->isoFormat('YY') }}</span>
        </div>
    </div>
</body>
</html>
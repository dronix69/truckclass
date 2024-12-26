<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Venta extends Model
{
    use HasFactory;
    use LogsActivity;

    protected $fillable = [
        'rut',
        'nombre',
        'apellido',
        'boleta',
        'forma_pago',
        'fecha_pago',
        'cuota',
        'valor',
        'total',
        'cancelado',
        'matricula_id',
        'certificado_id',
    ];

    public function matricula()
    {
        return $this->belongsTo(Matricula::class);
    }

    public function certificado()
    {
        return $this->hasOne(Certificado::class);
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['nombre', 'apellido', 'rut', 'boleta', 'forma_pago', 'fecha_pago', 'cuota', 'valor', 'total', 'cancelado']);
    }
}

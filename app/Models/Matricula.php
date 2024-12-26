<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UppercaseAttributes;  //Comvierte muniscula a mayuscula
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

use App\Mail\MatriculaCreated;
use Illuminate\Support\Facades\Mail;

class Matricula extends Model
{
    // funcion para comvertir de minuscula a mayuscula y esta relacionado con el MatriculResource y la carpeta Traits...
    use UppercaseAttributes;

    protected $uppercaseFields = [
        'nombre',
        'apellido',
        'direccion',
        'comuna',
        
    ];


    use HasFactory;
    use LogsActivity;

    protected $fillable = [
        'nombre',
        'apellido',
        'rut',
        'correo',
        'telefono',
        'edad',
        'fecha_matricula',
        'fecha_nacimiento',
        'direccion',
        'comuna',
        'codigo',
        'nivel',
        'licencia_actual',
        'curso_id',
        'venta_id',
        'comments',

    ];


    public function venta()
    {
        return $this->hasOne(Venta::class);
    }

    public function curso()
    {
        return $this->belongsTo(Curso::class);
    }

     //Genera un codigo aleatorio al campo codigo
     protected static function boot()
     {
         parent::boot();
 
         static::creating(function ($matricula) {
             $matricula->codigo = static::generateUniqueCode();
         });
     }
 
     // funcion que coloca un codigo en la matricula.
     protected static function generateUniqueCode()
     {
         $prefix = 'SAT-' . Carbon::now()->format('Ym');
         $lastCode = static::where('codigo', 'like', $prefix . '%')
                           ->orderByRaw('CAST(SUBSTRING(codigo, -2) AS UNSIGNED) DESC')
                           ->first();
 
         if ($lastCode) {
             $lastNumber = intval(substr($lastCode->codigo, -2));
             $newNumber = $lastNumber + 1;
         } else {
             $newNumber = 1;
         }
 
         return $prefix . str_pad($newNumber, 2, '0', STR_PAD_LEFT);
     }

     // Esto permite que se creen registros en la tabla de actividad
     public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['nombre', 'apellido', 'rut', 'correo', 'telefono', 'edad', 'fecha_matricula', 'fecha_nacimiento', 'direccion', 'comuna']);
    }

    // Esto crea un correo al crear una matricula
    protected static function booted()
{
    static::created(function ($matricula) {
        // Enviar correo al alumno
        Mail::to($matricula->correo)
            ->cc('soporte@startel.cl') // Reemplaza con el correo del administrador
            ->send(new MatriculaCreated($matricula));
    });
}
}

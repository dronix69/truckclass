<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UppercaseAttributes;

class Curso extends Model
{
    use HasFactory;
    use UppercaseAttributes;

    protected $uppercaseFields = [
        'codigo',
        
    ];

    protected $fillable = [
        'curso', 
        'codigo', 
        'tipo', 
        'fecha_start', 
        'fecha_end',
        'certificado_id',
        'matricula_id',
    ];

    public function certificado()
    {
        return $this->hasOne(Certificado::class);
    }

    public function matriculas()
    {
        return $this->hasMany(Matricula::class);
    }
}

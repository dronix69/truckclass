<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UppercaseAttributes; 

class Vehicle extends Model
{

    // funcion para comvertir de minuscula a mayuscula y esta relacionado con el MatriculResource y la carpeta Traits...
    use UppercaseAttributes;

    protected $uppercaseFields = [
        'plate_number',
        'model',
        
    ];

    use HasFactory;
    
    protected $fillable = ['plate_number', 'model', 'year'];
    
    public function practices()
    {
        return $this->hasMany(DrivingPractice::class);
    }
}

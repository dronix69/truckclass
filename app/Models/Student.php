<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UppercaseAttributes; 

class Student extends Model
{

    // funcion para comvertir de minuscula a mayuscula y esta relacionado con el MatriculResource y la carpeta Traits...
    use UppercaseAttributes;

    protected $uppercaseFields = [
        'name',
        
    ];

    use HasFactory;
    
    protected $fillable = ['name', 'email', 'phone'];
    
    public function practices()
    {
        return $this->hasMany(DrivingPractice::class);
    }
}
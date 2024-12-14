<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DrivingPractice extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'instructor_id',
        'vehicle_id',
        'student_id',
        'start_time',
        'end_time',
        'status',
        'notes'
    ];
    
    protected $casts = [
        'start_time' => 'datetime',
        'end_time' => 'datetime'
    ];
    
    public function instructor()
    {
        return $this->belongsTo(Instructor::class);
    }
    
    public function vehicle()
    {
        return $this->belongsTo(Vehicle::class);
    }
    
    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    
}

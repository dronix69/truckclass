<?php

// app/Traits/UppercaseAttributes.php
namespace App\Traits;

trait UppercaseAttributes
{
    public function setAttribute($key, $value)
    {
        if (in_array($key, $this->uppercaseFields ?? [])) {
            $value = strtoupper($value);
        }
        
        return parent::setAttribute($key, $value);
    }
}
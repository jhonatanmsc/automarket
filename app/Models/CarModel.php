<?php namespace App\Models;

use CodeIgniter\Model;

class CarModel extends Model
{
    protected $table      = 'cars';
    protected $primaryKey = 'id';

    protected $returnType     = 'array';
    protected $allowedFields = [
        'name', 'brand', 'manufacture_year', 'model', 'color', 
        'price', 'used'
    ];
}
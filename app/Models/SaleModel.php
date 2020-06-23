<?php namespace App\Models;

use CodeIgniter\Model;

class SaleModel extends Model
{
    protected $table      = 'item_sale';
    protected $primaryKey = 'id';

    protected $returnType     = 'array';
    protected $allowedFields = ['car_id', 'salesman_id', 'costumer_id', 'price'];
}
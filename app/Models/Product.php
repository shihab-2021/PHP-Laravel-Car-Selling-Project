<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable = ['car_name', 'price', 'interior', 'type', 'rating', 'review', 'engin', 'image_url', 'detail' ];
}

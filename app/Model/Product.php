<?php

namespace App\Model;

use App\Model\Review;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
		'id','nuemro_orden','fecha','monto','estado','id_detalle','id_usuario'
	];
    public function reviews()
    {
    	return $this->hasMany(Review::class); 
    }
}

<?php namespace App\Controllers;

use App\Models\CarModel;

class Home extends BaseController
{
	public function index()
	{
		$carModel = new carModel();
		$cars = $carModel->where('used', false)
						 ->findAll();
		$usedCars = $carModel->where('used', true)
							 ->findAll();
		return view('home', ['cars' => $cars, 'usedCars' => $usedCars]);
	}

	//--------------------------------------------------------------------

}

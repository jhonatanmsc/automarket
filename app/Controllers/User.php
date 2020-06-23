<?php namespace App\Controllers;

use App\Models\UserModel;

class User extends BaseController
{
	public function index()
	{
		$userModel = new UserModel();
		$salesmen = $userModel->where('salesman', true)
							  ->findAll();
		$costumers = $userModel->where('salesman', false)
							  ->findAll();
		return view('users/index', ['salesmen' => $salesmen, 'costumers' => $costumers]);
	}

	//--------------------------------------------------------------------

}

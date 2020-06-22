<?php namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		echo getenv('database.default.database');
		return view('welcome_message');
	}

	//--------------------------------------------------------------------

}

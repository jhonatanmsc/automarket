<?php namespace App\Controllers;

use App\Models\{UserModel, CarModel, SaleModel};

class Report extends BaseController
{
	public function index()
	{
        $userModel = new UserModel();
        $carModel = new carModel();
		$saleModel = new SaleModel();
		
		$salesItens = $saleModel->where('created_at >=', '2020-05-01 00:00:00')
						   ->findAll();
						   
		foreach ($salesItens as $item) {
			$sales[] = [
				'car' => $carModel->where('id', $item['id'])->first()['model'],
				'salesman' => $userModel->where('id', $item['salesman_id'])->first()['username'],
				'costumer' => $userModel->where('id', $item['costumer_id'])->first()['username'],
				'price' => $item['price'],
				'createdAt' => $item['created_at'] 
			];
		}
		return view('reports/index', ['sales' => $sales]);
	}

	//--------------------------------------------------------------------

}

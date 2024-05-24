<?php 
	//load file model
	include "models/SearchModel.php";
	class SearchController extends Controller{
		//ke thua class SearchModel
		use SearchModel;

		public function __construct(){			
		}
		//liet ke so ban ghi
		public function index(){
			//quy dinh so ban ghi mot trang
			$recordPerPage = 20;
			//tinh so trang
			//ham ceil la ham lay tran. VD: ceil(2.1) = 3
			$numPage = ceil($this->modelTotal()/$recordPerPage);
			//lay danh sach cac ban ghi co phan trang
			$data = $this->modelRead($recordPerPage);
			//goi view, truyen du lieu ra view
			$this->loadView("SearchView.php",["data"=>$data,"numPage"=>$numPage]);
		}

		// public function searchFlash(){
		// 	$key = isset($_GET["key"]) ? $_GET["key"] : "";
			
		// 	//dinh nghia so ban ghi tren mot trang
		// 	$recordPerPage = 15;
		// 	//tinh tong so trang
		// 	$numPage = ceil($this->totalRecordSearchFlash($key,$recordPerPage)/$recordPerPage);
		// 	//lay du lieu tu model
		// 	$data = $this->modelReadSearchFlash($key,$recordPerPage);
		// 	//load view, truyen du lieu ra view
		// 	$this->loadView("SearchFlash.php",["data"=>$data,"numPage"=>$numPage]);
		// }
		public function smartSearch(){
			$key = isset($_GET["key"]) ? $_GET["key"] : "";
			$data = $this->modelSmartSearch($key);
			foreach($data as $rows){
				echo "<li><img style='width:65px; vertical-align: middle;' src='assets/upload/products/{$rows->photo}'> <a href='index.php?controller=products&action=detail&id=$rows->id' style='color: black;text-decoration: none;font-weight:bold; margin-left:13px;font-size:13px; '>$rows->name</a></li>";
			}
		}	
	}
 ?>
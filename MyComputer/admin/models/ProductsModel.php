<?php 
	trait ProductsModel{
		//lay danh sach cac ban ghi, co phan trang
		public function modelRead($recordPerPage){			
			//lay bien page truyen tu url
			$page = isset($_GET["page"])&&is_numeric($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
			//lay tu ban ghi nao
			$from = $page * $recordPerPage;
			//---
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products order by id desc limit $from,$recordPerPage");
			//lay tat ca ket qua tra ve
			$result = $query->fetchAll();
			//---
			return $result;
		}
		//ham tinh tong so ban ghi
		public function modelTotal(){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id from products");
			//ham rowCount: dem so ket qua tra ve
			return $query->rowCount();
		}
		//lay mot ban ghi tuong ung voi id truyen vao
		public function modelGetRecord($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where id=$id");
			//tra ve mot ban ghi
			return $query->fetch();
		}
		//lay mot ban ghi tuong ung voi id truyen vao
		public function getCategory($category_id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select name from categories where id=$category_id");
			$record = $query->fetch();
			return $query->rowCount() > 0 ? $record->name : "";
		}
		public function modelUpdate($id){
			$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
			$name = $_POST["name"];
			$description = $_POST["description"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"])?1:0;
			$price = $_POST["price"];
			$discount = $_POST["discount"];
			$category_id = $_POST["category_id"];
			$soluong = $_POST["soluong"];
			//update cot name
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->prepare("update products set name=:_name,soluong=:_soluong,description=:_description,content=:_content,hot=:_hot,price=:_price,discount=:_discount,category_id=:_category_id where id=:_id");
			$query->execute([":_name"=>$name,":_soluong"=>$soluong,":_description"=>$description,":_content"=>$content,":_hot"=>$hot,":_price"=>$price,":_discount"=>$discount,":_category_id"=>$category_id,":_id"=>$id]);
			//---
			//neu user upload anh thi lay anh cu de xoa, sau do upload anh moi va update database
			if($_FILES["photo"]["name"] != ""){
				//---
				//lay anh cu de xoa
				$oldQuery = $conn->query("select photo from products where id=$id");
				if($oldQuery->rowCount() > 0)
					$oldPhoto = $oldQuery->fetch();
					if(file_exists("../assets/upload/products/".$oldPhoto->photo))
						unlink("../assets/upload/products/".$oldPhoto->photo);
				//---
				$photo = time()."_".$_FILES["photo"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/products/$photo");
				//update csdl
				$query = $conn->prepare("update products set photo = :_photo where id=:_id");
				$query->execute([":_photo"=>$photo,":_id"=>$id]);
				//---
			}
			if($_FILES["photo2"]["name"] != ""){
                //---
                //lay anh cu de xoa
                $oldQuery = $conn->query("select photo2 from products where id=$id");
                if($oldQuery->rowCount() > 0)
                    $oldphoto2 = $oldQuery->fetch();
                    if(file_exists("../assets/upload/products/".$oldphoto2->photo2))
                        unlink("../assets/upload/products/".$oldphoto2->photo2);
                //---
                $photo2 = time()."_".$_FILES["photo2"]["name"];
                //upload anh moi
                move_uploaded_file($_FILES["photo2"]["tmp_name"],"../assets/upload/products/$photo2");
                //update csdl
                $query = $conn->prepare("update products set photo2 = :_photo2 where id=:_id");
                $query->execute([":_photo2"=>$photo2,":_id"=>$id]);
                //---
            }
            if($_FILES["photo3"]["name"] != ""){
                //---
                //lay anh cu de xoa
                $oldQuery = $conn->query("select photo3 from products where id=$id");
                if($oldQuery->rowCount() > 0)
                    $oldphoto3 = $oldQuery->fetch();
                    if(file_exists("../assets/upload/products/".$oldphoto3->photo3))
                        unlink("../assets/upload/products/".$oldphoto3->photo3);
                //---
                $photo3 = time()."_".$_FILES["photo3"]["name"];
                //upload anh moi
                move_uploaded_file($_FILES["photo3"]["tmp_name"],"../assets/upload/products/$photo3");
                //update csdl
                $query = $conn->prepare("update products set photo3 = :_photo3 where id=:_id");
                $query->execute([":_photo3"=>$photo3,":_id"=>$id]);
                //---
            }
            if($_FILES["photo4"]["name"] != ""){
                //---
                //lay anh cu de xoa
                $oldQuery = $conn->query("select photo4 from products where id=$id");
                if($oldQuery->rowCount() > 0)
                    $oldphoto4 = $oldQuery->fetch();
                    if(file_exists("../assets/upload/products/".$oldphoto4->photo4))
                        unlink("../assets/upload/products/".$oldphoto4->photo4);
                //---
                $photo4 = time()."_".$_FILES["photo4"]["name"];
                //upload anh moi
                move_uploaded_file($_FILES["photo4"]["tmp_name"],"../assets/upload/products/$photo4");
                //update csdl
                $query = $conn->prepare("update products set photo4 = :_photo4 where id=:_id");
                $query->execute([":_photo4"=>$photo4,":_id"=>$id]);
                //---
            }
            if($_FILES["photo5"]["name"] != ""){
                //---
                //lay anh cu de xoa
                $oldQuery = $conn->query("select photo5 from products where id=$id");
                if($oldQuery->rowCount() > 0)
                    $oldphoto5 = $oldQuery->fetch();
                    if(file_exists("../assets/upload/products/".$oldphoto5->photo5))
                        unlink("../assets/upload/products/".$oldphoto5->photo5);
                //---
                $photo5 = time()."_".$_FILES["photo5"]["name"];
                //upload anh moi
                move_uploaded_file($_FILES["photo5"]["tmp_name"],"../assets/upload/products/$photo5");
                //update csdl
                $query = $conn->prepare("update products set photo5 = :_photo5 where id=:_id");
                $query->execute([":_photo5"=>$photo5,":_id"=>$id]);
                //---
            }
			//---
		}
		public function modelCreate(){
			$name = $_POST["name"];
			$description = $_POST["description"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"])?1:0;
			$photo = "";
			$photo2 = "";
			$photo3 = "";
			$photo4 = "";
			$photo5 = "";
			$price = $_POST["price"];
			$discount = $_POST["discount"];
			$category_id = $_POST["category_id"];
			$soluong = $_POST["soluong"];
			//---
			//neu user upload anh thi lay anh cu de xoa, sau do upload anh moi va update database
			if($_FILES["photo"]["name"] != ""){				
				$photo = time()."_".$_FILES["photo"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/products/$photo");
			}
			
			if($_FILES["photo2"]["name"] != ""){				
				$photo2 = time()."_".$_FILES["photo2"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo2"]["tmp_name"],"../assets/upload/products/$photo2");
			}
			if($_FILES["photo3"]["name"] != ""){				
				$photo3 = time()."_".$_FILES["photo3"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo3"]["tmp_name"],"../assets/upload/products/$photo3");
			}
			if($_FILES["photo4"]["name"] != ""){				
				$photo4 = time()."_".$_FILES["photo4"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo4"]["tmp_name"],"../assets/upload/products/$photo4");
			}
			if($_FILES["photo5"]["name"] != ""){				
				$photo5 = time()."_".$_FILES["photo5"]["name"];
				//upload anh moi
				move_uploaded_file($_FILES["photo5"]["tmp_name"],"../assets/upload/products/$photo5");
			}
			//---
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->prepare("insert into products set name=:_name,soluong=:_soluong,description=:_description,content=:_content,hot=:_hot,photo=:_photo,photo2=:_photo2,photo3=:_photo3,photo4=:_photo4,photo5=:_photo5,price=:_price,discount=:_discount,category_id=:_category_id");
			$query->execute([":_name"=>$name,":_soluong"=>$soluong,":_description"=>$description,":_content"=>$content,":_hot"=>$hot,":_photo"=>$photo,":_photo2"=>$photo2,":_photo3"=>$photo3,":_photo4"=>$photo4,":_photo5"=>$photo5,":_price"=>$price,":_discount"=>$discount,":_category_id"=>$category_id]);			
		}
		//xoa ban ghi
		public function modelDelete($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			//---
			//lay anh cu de xoa
			$oldQuery = $conn->query("select photo from products where id=$id");
			if($oldQuery->rowCount() > 0)
				$oldPhoto = $oldQuery->fetch();
				if(file_exists("../assets/upload/products/".$oldPhoto->photo))
					unlink("../assets/upload/products/".$oldPhoto->photo);
			//---
			$conn->query("delete from products where id=$id");
		}
		public function modelListCategories(){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id,name from categories where parent_id = 0 order by id desc");
			//tra ve mot ban ghi
			return $query->fetchAll();
		}
		public function modelListCategoriesSub($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id,name from categories where parent_id = $id order by id desc");
			//tra ve mot ban ghi
			return $query->fetchAll();
		}
	}
 ?>
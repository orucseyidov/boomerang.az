<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Process extends GO_Controller {
	
	function __construct(){
		parent::__construct();
		$this->load->model("Process_model","process");
		$this->load->helper("filter");
	}

	public function index($lang){
		$this->load->library('user_agent');
		if ($lang != 'az' && $lang != 'en' && $lang != 'ru') {
			if ($this->agent->is_referral()) {
				redirect($this->agent->referrer());
			}
			else{
				redirect("/");
			}
		}
		else{
			$this->session->set_userdata("dil",$lang);
			redirect($this->agent->referrer());
		}	
	}

	public function langChange($lang){
		$this->load->library('user_agent');
		if ($lang != 'az' && $lang != 'en' && $lang != 'ru') {
			redirect($this->agent->is_referral());
		}
		else{
			$this->session->set_userdata("dil",$lang);
			redirect($this->agent->referrer());
		}
	}

	public function updateCurrency(){
		$link = "https://www.cbar.az/currencies/".date("d.m.Y").".xml";
		$data = file_get_contents($link);
		$xml = simplexml_load_file($link);
		$object = $xml->ValType[1];
		$sql    = '';
		foreach($object->Valute as $state){
			print_r($state);
		    // $code 		= $state['Code'];
		    // $name 		= $state->Name;
		    // $currency 	= $state->Value;
		    // $keyword 	= strtolower($code);
		    // $sql .= " ('$code', '$keyword', '$currency', '1'), ";
		}

		// $newSql = 
		// "INSERT INTO `currency` (`name`, `keyword`, `currency`, `status`) VALUES "
		// .mb_substr($sql, 0,-2);

		// if (count($object) > 0) {
		// 	$this->Settings->myquery("TRUNCATE TABLE currency");
		// 	$this->Settings->myquery($newSql);
		// 	$date = date("H:i:s");
		// 	$this->Settings->myquery("UPDATE `settings` SET `currency_update` = '$date' WHERE `settings`.`id` = 1");
		// }
	}

	public function newsletter(){
		$data = array();
		if (isset($_POST['token']) && $_POST['token'] == $this->token) {
			unset($_POST['token']);
			$email 		= filter(strip_tags($this->input->post('email','trim')));
			if (!empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$dataInsert = array(
					"mail" => $email,
					"date"  => date("Y-m-d H:i:s")
				);
				if ($this->process->insertData("newsletter",$dataInsert)) {
					$data['status'] = 'success';
					$data['msg'] 	= $this->info_msg("subscribe_success","title");
				}
				else{
					$data['status'] = 'error';
					$data['msg']	= $this->info_msg("sistemxetasi","title");
				}
			}
			else{
				$data['status'] = 'error';
				$data['msg']	= $this->info_msg("subscrube_email_empty","title");;
			}
		}
		else{
			$data['status'] = 'error';
			$data['msg']	= $this->info_msg("sistemxetasi","title");
		}

		echo json_encode($data);
	}

	public function contactfrom(){
		$data = array();
		if (isset($_POST['token']) && $_POST['token'] == $this->token) {
			unset($_POST['token']);
			$fullname 	= filter(strip_tags($this->input->post('fullname','trim')));
			$email 		= filter(strip_tags($this->input->post('email','trim')));
			$service_id	= filter(strip_tags($this->input->post('service_id','trim')));
			$message 	= filter(strip_tags($this->input->post('message','trim')));
			$date 		= date("Y-m-d H:i:s");
			$empty 		= false;
			foreach ($_POST as $key => $value) {
				if (empty($value) && $key != 'email') {
					$data['empty'][] = $key;
					$empty = true;
				}
			}

			if ($empty == true) {
				$data['status'] = 'error';
				$data['msg'] 	= 'Boş Xanaları Doldurun Zəhmət olmasa';
				$data['color']	= 'red';
			}
			else{
				$dataInsert = array(
					"fullname" 		=> $fullname,
					"email" 		=> $email,
					"service_id" 	=> $service_id,
					"message" 		=> $message,
					"date" 			=> $date,
					"status" 		=> 0
				);
				
				// $this->process->insertData("messages",$dataInsert)
				if ($this->process->insertData("messages",$dataInsert)) {
					$data['status'] = 'success';
					$data['msg'] 	= 'Müraciətiniz uğurla qeydiyyata alınmışdır təşəkkür edirik.';
					$data['color']	= 'green';
					/* Mail send */
					$service = $this->core->get_values("services",$service_id,"title_az");
					debug($service_id);
					$senddingmail  = 'yxedice1@gmail.com'; //info@printerbaku.az
					$mailtitle  = 'Yeni mesajınız var';
					$subject  = 'Sizə Saytdan mesaj gəlib';
					$content  = "
						 <div>Ad Soyad : {$fullname}</div>
						 <div>E-poçt : {$email}</div>
						 <div>Servis : {$service}</div>
						 <div>Tarix : {$date}</div>
						 <div>Mesaj : {$message}</div>
					";
					// $this->sendMail($senddingmail,$mailtitle,$subject,$content);
				}
				else{
					$data['status'] = 'error';
					$data['msg']	= 'Sistem xətası baş verdi zəhmət olmasa səhifəni yeniləyib yenidən cəhd edin';
					$data['color']	= 'red';
				}
			}
		}
		else{
			$data['status'] = 'error';
			$data['msg']	= 'Sistem xətası baş verdi zəhmət olmasa səhifəni yeniləyib yenidən cəhd edin';
			$data['color']	= 'red';
		}

		echo json_encode($data);
	}

	public function test(){
		if ($this->sendMail("seyidovoruc@gmail.com","Subjecta","mesaj")) {
			echo "Mail 1";
		}
	}



	public function mobileContentChnage(){
		debug($_POST);
	}


	public function feedback(){
		$data = array();
		if (isset($_POST['token'])) {
			$postdata = array();
			unset($_POST['token']);
			foreach ($_POST as $key => $value) {
				$postdata[$key] = filter($value); 
			}
			
			$postdata['date'] = date("Y-m-d");

			if ($this->core->add("feedback",$postdata)) {
				$data['status'] = 'success';
				$data['msg'] 	= 'Məlumat Bazaya yazıldı';
			}
			else{
				$data['status'] = 'error';
				$data['msg'] 	= 'Sistem xətası baş verdi';
			}
		}
		else{
			$data['status'] = 'error';
			$data['msg'] 	= 'Sistem xətası baş verdi';
		}
		echo json_encode($data);
	}


	public function addComment(){
		$data = array();
		if (isset($_POST['token'])) {
			$comment 		= filter($this->input->post("comment",true));			
			$rating 		= filter($this->input->post("rating",true));			
			$terms_comment 	= filter($this->input->post("terms_comment",true));			
			$product 		= filter($this->input->post("product",true));
			$name 			= isset($_POST['name_control']) && $_POST['name_control'] == 'on' ? 1 : 0;
			if ($rating > 0) {
				$add = array(
					"user" => $this->data['user']['id'],
					"username" => $this->data['user']['fullname'],
					"product" => $product,
					"rating" => $rating,
					"comment" => $comment,
					"date" => date("Y-m-d H:i:s"),
					"name_status" => $name,
					"status" => 0,
					"type" => empty($comment) ? 0 : 1,
					"is_delete" => 0
				);
				if ($this->core->add("comments",$add)) {
					$data['status'] = 'success';
					$data['msg'] 	= 'Şərhiniz uğurla qeydə alındı!';
				}
				else{
					$data['status'] = 'error';
					$data['msg'] 	= 'Sistem xətası baş verdi';
				}
			}
			else{
				$data['status'] = 'error';
				$data['msg'] 	= 'Sistem xətası baş verdi';
			}
		}
		else{
			$data['status'] = 'error';
			$data['msg'] 	= 'Sistem xətası baş verdi';
		}
		echo json_encode($data);
	}



	public function next_product(){
		$prd = $this->process->prds();
		$sql = '';
		$time = 1605862421;
		foreach ($prd as $key => $value) {
			$time++;
			$sql .= "UPDATE `products` SET `next` = '{$time}' WHERE `products`.`id` = {$value['id']}; ";
		}

		debug($sql);
	}



	public function convert($img){
		// $img 		= 'uploads/images/test/testimage.webp';
		$imgexplode = explode(".", $img);
		// $im 		= imagecreatefromwebp($img);
		$newimg 	= $imgexplode[0]."2.jpg";
		// Convert it to a jpeg file with 100% quality
		imagejpeg($im, $newimg, 70);
		imagedestroy($im);
		return $newimg;
	}

	public function convertImage(){
        $result = $this->newarrayimg();
		// debug($result);
		foreach ($result as $key => $value) {
			// $img = $this->convert(str_replace("/up", "up", $value['image']));
			// $img = "/".$img;
			// $this->core->update("gallery",$value['id'],['image' => $img]);
			// unlink($img);
		}
	}


	public function imageTest(){
		$yol = "./uploads/images/test";
		foreach (scandir($yol) as $key => $value) {
			$img = base_url("/uploads/images/test/{$value}");
			$ext 		= pathinfo($img, PATHINFO_EXTENSION);
			if ($ext == 'jpg') {
				copy("uploads/images/test/{$value}","uploads/images/test/{$value}");
				echo "<img src='{$img}'><br>";
			}
		}
	}



	public function cache_test(){
		$this->core->ip_change();
	}



	

}

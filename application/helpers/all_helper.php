<?php 


function debug($data,$type=false){
	echo "<pre>";
	$type == true ? var_dump($data) : print_r($data);
	echo "</pre>";
	exit();
}

function s($key,$value){
	if ($key == $value) {
		return "selected";
	}
	else{
		return null;
	}
}


function hash_pass($pass){
	return md5(sha1(md5(sha1($pass))));
}


function control_file_type($filename){
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	if ($ext == 'pdf' || $ext == 'docx' || $ext == 'doc' || $ext == 'csv' || $ext == 'xlsx' || $ext == 'xlsm') {
	    return true;
	}
	else{
		return false;
	}
}


function chekbox_change($inputs){
	$post = array();
	foreach ($inputs as $key => $value) {
		if ($value == 'on') {
			$post[$key] = 1;
		}
		else{
			$post[$key] = $value;
		}
	}
	return $post;
}


function cut($str,$size,$start,$stop){
	$size = $size == null ? 50 : $size;
	if(strlen($str) > $size){
		$str = mb_substr($str, $start, $stop).'...';
	}
	return $str;
}


function tag_generator($tags){
	$newsTags = array();
	foreach ($tags as $key => $value) {
		foreach (explode(",", $value) as $key => $tag) {
			$newsTags[] = $tag;
		}
	}
	$result = array_unique(array_filter($newsTags));
	shuffle($result);
	return $result;
}


function class_generator($data,$colum=null){
	$col = $colum == null ? 'col-lg' : 'col-'.$colum;
	switch ($count = count($data)) {
		case $count == 1:
		$result = $col.'-12';
		break;
		case $count == 2:
		$result = $col.'-6';
		break;
		case $count == 3:
		$result = $col.'-4';
		break;
		case $count == 4:
		$result = $col.'-3';
		break;
		default:
		$result = $col.'-4';
		break;
	}
	return $result;
}


function full_base_url($url=null){
	if ($url == null) {
		return base_url($_SERVER['REQUEST_URI']);
	}
	else{
		return base_url($_SERVER['REQUEST_URI'].ltrim($url,"/")."/".$url);
	}
}


function delete_file($file){
	if (file_exists($_SERVER['DOCUMENT_ROOT'].$file)) {
		unlink($_SERVER['DOCUMENT_ROOT'].$file);
	}
}



function category_ads($category,$count){
	$CI =& get_instance();
	$CI->db->select("*");
    $CI->db->from("category_ads");
    $CI->db->where("category",$category);
    $CI->db->order_by("order","ASC");
    $data =  $CI->db->get()->result_array() ?? array();
    $html = '';
    if (count($data) > 0) {
    	$html 	= '<div class="row">';
    	$class 	= 'col-6';
    	if ($count == 4 || $count > 4) {
    		$class 	= 'col-12';
    	}
	    foreach ($data as $key => $value) {
	    	$html .= '
	    		<div class="'.$class.' col-ads-6">
                    <a href="'.$value['link'].'">
                        <img src="'.$value['image'].'">
                    </a>
                </div>
	    	';
	    }
		$html .= '</div>';
	}
	else{
		$html = false;
	}
    return $html;
}


function clean_html($str){       
    // $str = utf8_decode($str);
    // $str = str_replace("         ", "", $str);
    // $str = str_replace("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;", " ", $str);
    // $str = str_replace("&nbsp;", " ", $str);
    // $str = str_replace("&nbsp;", '', $str);
    // $str = preg_replace('/\s+/', ' ',$str);
    $str = str_replace("\xc2\xa0",' ',$str);
    return $str;

}


function sanitize_output($buffer) {

    $search = array(
        '/\>[^\S ]+/s',     // strip whitespaces after tags, except space
        '/[^\S ]+\</s',     // strip whitespaces before tags, except space
        '/(\s)+/s',         // shorten multiple whitespace sequences
        '/<!--(.|\s)*?-->/' // Remove HTML comments
    );

    $replace = array(
        '>',
        '<',
        '\\1',
        ''
    );

    $buffer = preg_replace($search, $replace, $buffer);

    return $buffer;
}


function send_mail($senddingmail,$mailtitle,$subject,$content){
	$to = $senddingmail;
    $subject = $subject;
    $headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type: text/html; charset=iso-8859-1" . "\r\n";
	$headers .= "From: info@goweb.az" . "\r\n" .
				"Reply-To: info@goweb.az" . "\r\n" .
				"X-Mailer: PHP/" . phpversion();
    $message = "<html><head>" .
           "<meta http-equiv='Content-Language' content='en-us'>" .
           "<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'>" .
           "<title>{$mailtitle}</title>" .
           "</head><body>" .$content.        
           "<br><br></body></html>";
  	mail($to, $subject, $message, $headers);
}


function all_category($category,$parent=0){
	$result = '';
	$count  = 1;
	foreach ($category as $key => $value) {
		$alt 		= get_alt_category($value['id']);
		$altcount  	= count($alt) ?? 0;
		$link  		= base_url("category/{$value['slug']}");
		$licalss 	= $altcount > 0 ? ' dropdown ' : null;
		$licalss    .= $count == 1 ? ' active ' : null;
		$acalss 	= $altcount > 0 ? 'class="dropdown-toggle" data-toggle="dropdown"' : null;
	    $result .= '<li '.$licalss.'>';
	    $result .= '<a class="nav-item '.$acalss.'" href="'.$link.'">'.$value['title'].'</a>';
	    $result .= $altcount > 0 ? ' <i class="fa fa-angle-down"></i> ' : null;
	    if ($altcount > 0) {
	    	$result .= '<ul class="utf_dropdown_menu" role="menu">';
                    	foreach ($alt as $key => $value) {
                    		$link  		= base_url("category/{$value['slug']}");
                    		$result .= '<li><a href="'.$link.'">'.$value['title'].'</a></li>';
                    	}
            $result .= '</ul>';
	    }
	    $result .= '</li>';
	    $count++;
	}
	echo $result;
}


function get_category_menu($array,$menu,$slug=null){
	$html = '
			<li class="nav-item dropdown"> 
               <span class="nav-link"> '.$menu.' <i class="ti-angle-down"></i></span>
               <ul class="dropdown-menu last">
	';
    foreach ($array as $key => $value) {
    	$link = "/".$slug."/".$value['slug'];
    	$html .= '
    			<li class="dropdown-item">
    				<a href="'.$link.'">
    					'.$value['title'].'
    				</a>
    			</li>';
    }
    $html .= '</ul>
            </li>';
    return $html;
}



?>
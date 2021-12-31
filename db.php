<?php

function connect(){
	$connection = mysqli_connect('localhost', 'root', '', 'search_engine');
	if(!$connection){
		die('Failed to connect db');
	}
	return $connection;
}

								



function display_questions(){
	$connection = connect();
	$html = '';

	$sql = "SELECT q.*, ql.user_id, SUM(ql.likes) AS likes, SUM(ql.dislikes) AS dislikes FROM questions q LEFT JOIN question_likes ql ON ql.question_id=q.id GROUP BY q.id";

	$result = mysqli_query($connection, $sql);

	if(mysqli_num_rows($result)){

		
		while($row = mysqli_fetch_assoc($result) ){
			$html .= '<div class="col-lg-12">';
			$html .= '<h2>'.$row['title'].'</h2>';
			$html .= '<p>'.$row['description'].'</p>';
			$html .= '<hr>';
			$html .= '<div class="footer-icons">';
			$html .= '<ul class="questions">';



			if($row['likes'] AND !$row['dislikes']){
				
				$html .= '<li>';
				$html .= '<a href="" class="likes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-up"></i>'; 
				$html .= '<span class="like-counter">'.$row['likes'].'</span>';
				$html .= '</a>';
				$html .= '</li>';

				$html .= '<li>';
				$html .= '<a href="" class="empty dislikes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-down"></i>'; 
				$html .= '<span class="like-counter"></span>';
				$html .= '</a>';
				$html .= '</li>';


			}
			else if(!$row['likes'] AND $row['dislikes']){

				$html .= '<li>';
				$html .= '<a href="" class="empty likes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-up"></i>'; 
				$html .= '<span class="like-counter"></span>';
				$html .= '</a>';
				$html .= '</li>';

				$html .= '<li>';
				$html .= '<a href="" class="dislikes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-down"></i>'; 
				$html .= '<span class="like-counter">'.$row['dislikes'].'</span>';
				$html .= '</a>';
				$html .= '</li>';				

			}
			else if($row['likes'] AND $row['dislikes']){

				$html .= '<li>';
				$html .= '<a href="" class="likes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-up"></i>'; 
				$html .= '<span class="like-counter">'.$row['likes'].'</span>';
				$html .= '</a>';
				$html .= '</li>';

				$html .= '<li>';
				$html .= '<a href="" class="dislikes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-down"></i>'; 
				$html .= '<span class="like-counter">'.$row['dislikes'].'</span>';
				$html .= '</a>';
				$html .= '</li>';

			}
			else if(!$row['likes'] AND !$row['dislikes']){

				$html .= '<li>';
				$html .= '<a href="" class="empty likes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-up"></i>'; 
				$html .= '<span class="like-counter"></span>';
				$html .= '</a>';
				$html .= '</li>';

				$html .= '<li>';
				$html .= '<a href="" class="empty dislikes" data-id="'.$row['id'].'">';
				$html .= '<i class="fa fa-thumbs-down"></i>'; 
				$html .= '<span class="like-counter"></span>';
				$html .= '</a>';
				$html .= '</li>';
			} 


			$html .= '</ul>';
			$html .= '</div>';
			$html .= '</div>';

		}

		echo $html;


	}
	else{
		echo "<p>No record exists in database</p>";
	}
}


function authenticate($user){
	$connection = connect();
	
	$email = $user['email'];
	$password = $user['password'];

	$sql = "SELECT * FROM users WHERE email='$email'";
	$result = mysqli_query($connection, $sql);
	if(mysqli_num_rows($result)){

		$row = mysqli_fetch_assoc($result);

		if(password_verify($password, $row['password'])){
			return $row;
		}

	}
	return false;
}

function get_qustion_status($arg){
	
	$connection  = connect();
	$user_id     = $_SESSION['logged_in']['id'];
	$question_id = $arg['id'];
	$action      = $arg['action'];

	$sql = "SELECT likes AS liked, dislikes AS disliked FROM question_likes WHERE question_id=$question_id AND user_id=$user_id";

	$result = mysqli_query($connection, $sql);
	if(mysqli_num_rows($result)){
		return mysqli_fetch_assoc($result);
	}
	return false;	

}

function update_action($arg, $like=NULL, $dislike=NULL){

	$connection  = connect();
	$user_id     = $_SESSION['logged_in']['id'];
	$question_id = $arg['id'];
	$action      = $arg['action'];
	$sql         = '';
	$html        = '';

	if($like == 'decrement' AND empty($dislike)){
		$sql = "DELETE FROM question_likes WHERE question_id=$question_id AND user_id=$user_id";
	}
	else if($like === 'decrement' AND $dislike === 'increment'){
		$sql = "UPDATE question_likes SET likes=likes-1, dislikes=dislikes+1 WHERE question_id=$question_id AND user_id=$user_id";
	}
	else if(empty($like) AND $dislike === 'decrement'){
		$sql = "DELETE FROM question_likes WHERE question_id=$question_id AND user_id=$user_id";
	}

	else if($like === 'increment' AND $dislike === 'decrement'){
		$sql = "UPDATE question_likes SET likes=likes+1, dislikes=dislikes-1 WHERE question_id=$question_id AND user_id=$user_id";
	}
	else if(empty($like) AND empty($dislike)){
		//$sql = "INSERT INTO question_likes(question_id, user_id, ".$action.") VALUES($question_id, $user_id, 1)";

		if($action === 'likes'){
			$sql = "INSERT INTO question_likes(question_id, user_id, likes) VALUES($question_id, $user_id, 1)";
		}
		else if($action === 'dislikes'){
			$sql = "INSERT INTO question_likes(question_id, user_id, dislikes) VALUES($question_id, $user_id, 1)";
		}
	}

	mysqli_query($connection, $sql);
	if(mysqli_affected_rows($connection)){
		return fetch_updated_row( $question_id );
	}
	return false;
}

function fetch_updated_row($question_id){
	$connection = connect();
	$html       = '';

	$sql = "SELECT question_id, SUM(likes) AS likes, SUM(dislikes) AS dislikes FROM question_likes WHERE question_id=$question_id";

	$result = mysqli_query($connection, $sql);
	if(mysqli_num_rows($result)){

		$row = mysqli_fetch_assoc($result);

		//$html .= '<ul class="questions">';

		if($row['likes'] AND !$row['dislikes']){
			
			$html .= '<li>';
			$html .= '<a href="" class="likes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-up"></i>'; 
			$html .= '<span class="like-counter">'.$row['likes'].'</span>';
			$html .= '</a>';
			$html .= '</li>';

			$html .= '<li>';
			$html .= '<a href="" class="empty dislikes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-down"></i>'; 
			$html .= '<span class="like-counter"></span>';
			$html .= '</a>';
			$html .= '</li>';


		}
		else if(!$row['likes'] AND $row['dislikes']){

			$html .= '<li>';
			$html .= '<a href="" class="empty likes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-up"></i>'; 
			$html .= '<span class="like-counter"></span>';
			$html .= '</a>';
			$html .= '</li>';

			$html .= '<li>';
			$html .= '<a href="" class="dislikes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-down"></i>'; 
			$html .= '<span class="like-counter">'.$row['dislikes'].'</span>';
			$html .= '</a>';
			$html .= '</li>';				

		}
		else if($row['likes'] AND $row['dislikes']){

			$html .= '<li>';
			$html .= '<a href="" class="likes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-up"></i>'; 
			$html .= '<span class="like-counter">'.$row['likes'].'</span>';
			$html .= '</a>';
			$html .= '</li>';

			$html .= '<li>';
			$html .= '<a href="" class="dislikes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-down"></i>'; 
			$html .= '<span class="like-counter">'.$row['dislikes'].'</span>';
			$html .= '</a>';
			$html .= '</li>';

		}
		else if(!$row['likes'] AND !$row['dislikes']){

			$html .= '<li>';
			$html .= '<a href="" class="empty likes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-up"></i>'; 
			$html .= '<span class="like-counter"></span>';
			$html .= '</a>';
			$html .= '</li>';

			$html .= '<li>';
			$html .= '<a href="" class="empty dislikes" data-id="'.$question_id.'">';
			$html .= '<i class="fa fa-thumbs-down"></i>'; 
			$html .= '<span class="like-counter"></span>';
			$html .= '</a>';
			$html .= '</li>';
		} 


		//$html .= '</ul>';

		return $html;

	}
}

function debug($arg){
	echo '<pre>';
	print_r($arg);
	echo '</pre>';
	exit;
}
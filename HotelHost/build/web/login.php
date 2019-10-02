<?php
session_start();

if(isset($_POST['Username'], $_POST['Password'])) //verify we've got what we need to work with
{
	/*********database_credentials.php**************/
	$mysqli = new MySQLi('localhost', 'root', '567', 'rubble'); //change to suit your database
	if($mysqli->errno) //connection wasn't made, so we handle the error here
		header("location: main.html"); //this will redirect back to the homepage 
	/************************************************/	
	$stmt = $mysqli->prepare("SELECT COUNT(Username) AS total FROM Guest WHERE Username = ? AND Password = ?");
	$stmt->bind_param('ss', $_POST['Username'], $_POST['Password']);
	$stmt->execute();
	$stmt->bind_result($total); //place the result (total) into this variable
	$stmt->fetch(); //fill the result variables binded 
	
	//close all connections
	$stmt->close();
	$mysqli->close();

	//if total is equal to 1 then that means we have a match
	if((int)$total == 1)
	{
		session_regenerate_id(true); //delete old session variables
		/*********Explained below************/
		$_SESSION['user'] = $_POST['Username'];
		$key = generate_key();
		$hash = hash_hmac('sha512', $_POST['Password'], $key);
		$_SESSION['key'] = $key;
		$_SESSION['auth'] = hash_hmac('sha512', $key, 
				    hash_hmac('sha512', $_SESSION['user'] . 
						(isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? 
					 	       $_SERVER['HTTP_X_FORWARDED_FOR'] : 
					               $_SERVER['REMOTE_ADDR']), $hash));
		/************************************/
		if(!setcookie('hash', $hash, 0, '/')) //login isn't possible if user's browser doesn't accept cookies
		{
			session_regenerate_id(true);
			header("location: loggedin.php"); //original_page would be your login page
			exit();
		}
		header("location: loginfailed.php");
	}
	else
	{
		//anything else we don't care about
		header("location: loggedin.php");
	}
}
?>
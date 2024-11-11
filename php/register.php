<?php
	require_once 'sendValidationEmail.php';
	$errors = [];


	if(!isset($_POST['name']) || strlen($_POST['name']) > 255 || !preg_match('/^[a-zA-Z- ]+$/', $_POST['name'])) {
		$errors[] = 1;
	}
	if(!isset($_POST['email']) || strlen($_POST['email']) > 255 || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
		$errors[] = 2;
	}
	else if(!checkdnsrr(substr($_POST['email'], strpos($_POST['email'], '@') + 1), 'MX')) {
		$errors[] = 3;
	}
	if(!isset($_POST['password']) || !preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\~?!@#\$%\^&\*])(?=.{8,})/', $_POST['password'])) {
		$errors[] = 4;
	}
	else if(!isset($_POST['confirm-password']) || $_POST['confirm-password'] !== $_POST['password']) {
		$errors[] = 5;
	}



	if(count($errors) === 0) {
		if(isset($_POST['csrf_token']) && validateToken($_POST['csrf_token'])) {
			
			$C = connect();
			if($C) {
			
				$res = sqlSelect($C, 'SELECT id FROM users WHERE email=?', 's', $_POST['email']);
				if($res && $res->num_rows === 0) {
					
					$hash = password_hash($_POST['password'], PASSWORD_DEFAULT);
					$id = sqlInsert($C, 'INSERT INTO users (id, name, email, password, verified,role) VALUES (NULL, ?, ?, ?, 0,?)', 'ssss', $_POST['name'], $_POST['email'], $hash,'student' );

					if($id !== -1) {
						$err = sendValidationEmail($_POST['email']);
						if($err === 0) {
							$errors[] = 0;
						}
						else {
							$errors[] = $err + 9;
						}
					}
					else {
						
						$errors[] = 6;
					}
					$res->free_result();
				}
				else {
				
					$errors[] = 7;
				}
			}
			else {
				
				$errors[] = 8;
			}
		}
		else {
			
			$errors[] = 9;
		}
	}


	echo json_encode($errors);

<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Marleen
 * Date: 27.02.13
 * Time: 11:02
 * To change this template use File | Settings | File Templates.
 */
class auth
{
	function index()
	{
		global $_request;
		global $_errors;
		if (isset ($_POST['username'])) {
			$username = $_POST['username'];
			$password = $_POST['password'];
			$user_id = get_one("SELECT user_id FROM user WHERE username='$username' AND password='$password'");
			if (!empty($user_id)) {
				$_SESSION['user_id'] = $user_id;
				$_request->redirect('tournaments');
			}
			$_errors[] = "Vale kasutajanimi või parool.";
		}
		require 'views\auth.php';

	}

	function logout()
	{
		global $_request;
		session_destroy();
		$_request->redirect('auth');
	}
}

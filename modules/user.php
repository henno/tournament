<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kasutaja
 * Date: 22.02.13
 * Time: 16:46
 * To change this template use File | Settings | File Templates.
 */
class user
{
	public $logged_in = false;
	public $id = 5;

	function __construct()
	{
		session_start();
		if (isset ($_SESSION ['user_id'])) {
			$this->logged_in = true;
		}
	}

	public function require_auth()
	{
		global $_request;
		if ($this->logged_in !== true) {
			if (isset($_SERVER['HTTP_X_REQUESTED_WITH'])
				&& $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest') {
				header('HTTP/1.0 401 Unauthorized');
				exit(json_encode(array('data'=>'session_expired')));
			} else {
			$_SESSION['session_expired'] = true;
			$_request->redirect('auth');
			}
		}
	}
}

$_user = new user;
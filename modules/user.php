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
			$_request->redirect('login');
		}
	}
}

$_user = new user;
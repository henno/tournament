<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kasutaja
 * Date: 22.02.13
 * Time: 16:46
 * To change this template use File | Settings | File Templates.
 */
class auth
{
	public $logged_in = false;

	function __construct()
	{
		session_start();
		if (isset ($_SESSION ['user_id'])) {
			$this->logged_in = true;
		}
	}
}

$auth = new auth;

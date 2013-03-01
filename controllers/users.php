<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Allan Kõrts
 * Date: 25.02.13
 * Time: 10:27
 * To change this template use File | Settings | File Templates.
 */
class users
{
	function index()
	{
		global $_user;
		$users = get_all("SELECT * FROM user");
		require 'users_view_index.php';

	}

	function view()
	{
		global $_request;
		$id = $_request->params[0];
		$users = get_all("SELECT * FROM user WHERE user_id='$id'");
		require 'users_view_view.php';

	}
}
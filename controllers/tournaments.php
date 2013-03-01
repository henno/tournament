<?php
class tournaments
{
	function index()
	{
		global $_request;
		global $_user;
		$_user->require_auth();
		$tournaments = get_all("SELECT * FROM tournament NATURAL JOIN place");
		require 'views/master_view.php';

	}

	function view()
	{
		global $_request;
		$id = $_request->params[0];
		$users = get_all("SELECT * FROM user WHERE user_id='$id'");
		require 'users_view_view.php';

	}

	function add()
	{
		global $_request;
		$tournaments = get_all("SELECT * FROM tournament WHERE deleted=0");
		require 'views/master_view.php';

	}

	function remove()
	{
		global $_request;
		$id = $_request->params[0];
		$result = q("UPDATE tournament SET deleted=1 WHERE tournament_id='$id'");
		require 'views/master_view.php';

	}
}

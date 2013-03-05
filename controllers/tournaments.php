<?php
class tournaments
{
	function index()
	{
		global $_request;
		global $_user;
		$_user->require_auth();
		$tournaments = get_all("SELECT * FROM tournament NATURAL JOIN place WHERE tournament.deleted=0");
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
		# $participants = get_all("SELECT * FROM participant as pa LEFT JOIN institute using(institute_id) WHERE pa.deleted=0");
		require 'views/master_view.php';

	}

	function remove()
	{
		global $_request;
		$id = $_request->params[0];
		$result = q("UPDATE tournament SET deleted=1 WHERE tournament_id='$id'");
		require 'views/master_view.php';

	}
	function remove_participant()
	{
		global $_request;
		$id = $_request->params[0];
		$result = q("UPDATE participant SET deleted=1 WHERE participant_id='$id'");
		require 'views/master_view.php';

	}

	function add_participant()
	{
		global $_request;
		$result = q("INSERT INTO participant(participant_name,institute_id) VALUES ('$_POST[participant_name]',$_POST[institute_id])");
		require 'views/master_view.php';

	}
}

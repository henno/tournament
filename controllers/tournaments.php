<?php
class tournaments
{

	public $requires_auth = TRUE;

	function index()
	{
		global $_request;
		global $_user;
		$tournaments = get_all("SELECT * FROM tournament NATURAL JOIN place WHERE tournament.deleted=0");
		require 'views/master_view.php';

	}

	function add()
	{
		global $_request;

		// If submit
		if (isset($_POST['participants'])) {
			require 'modules/tournament.php';
			$tournament = new tournament;
			$tournament->add();
		}
		$institutes = get_all("SELECT * FROM institute WHERE deleted=0");
		$places = get_all("SELECT * FROM place WHERE place_deleted=0");
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
		$result = NULL;
		if (isset($_POST['institute_name'])
			&& isset($_POST['participant_name'])
			&& isset($_POST['tournament_id'])
		) {
			require 'modules/tournament.php';
			$tournament = new tournament;
			$result = $tournament->add_participant($_POST['participant_name'], $_POST['tournament_id'], $_POST['institute_name']);
		}
		require 'views/tournaments_add_participant_view.php';

	}

	function view()
	{
		global $_request;
		$id = $_request->params[0];
		$tournament = get_all("SELECT * FROM tournament WHERE tournament_id='$id'");
		$tournament = $tournament[0];
		$participants = get_all(
			"SELECT * FROM participant as pa LEFT JOIN institute using(institute_id) WHERE pa.deleted=0 AND tournament_id='$id'"
		);
		require 'views/master_view.php';

	}
}

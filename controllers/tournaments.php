<?php
class tournaments
{

	public $requires_auth = TRUE;
	public $scripts = NULL;

	function index()
	{
		$this->scripts[] = 'tournament.js';
		global $_request;
		global $_user;
		$tournaments = get_all("SELECT * FROM tournament NATURAL JOIN place WHERE tournament.deleted=0");
		require 'views/master_view.php';

	}

	function add()
	{
		global $_request;
		$this->scripts[] = 'tournament.js';

		// If submit
		if (isset($_POST['participants'])) {
			require 'modules/tournament.php';
			$tournament_model = new tournament;
			$tournament_model->add();
		}
		$datetime = new DateTime; // current time = server time
		$EEtime  = new DateTimeZone('Europe/Tallinn');
		$datetime->setTimezone($EEtime); // calculates with new EE time(UTC+2) now
		$tournament = array(
			'tournament_id'            => '',
			'tournament_name'          => '',
			'tournament_year'          => '',
			'tournament_place'         => '',
			'place_id'                 => '',
			'deleted'                  => '0',
			'tournament_start'         => $datetime->format('d.m.Y h:i:s'),
			'tournament_end'           => $datetime->format('d.m.Y h:i:s'),
			'tournament_loser_bracket' => '0',
			'tournament_game_time'     => '1',
			'tournament_game_pause'    => '1',
			'tournament_field'         => '1',
			'tournament_group'         => '1',
			'tournament_win'           => '1',
			'tournament_type'          => '1',
			'tournament_game_win'      => '3',
			'tournament_game_tie'      => '2',
			'tournament_game_loss'     => '1'
		);
		$place_name = '';
		$participants = array();
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
		if (isset($_POST['tournament'])) {
			$tournament = $_POST['tournament'];

			$id = $tournament['tournament_id'];
			unset($tournament['tournament_id']);
			$tournament['place_id'] = $this->get_place_id($tournament['place_name']);
			unset($tournament['place_name']);
			$tournament['tournament_start'] = $this->convert_date($tournament['tournament_start']);
			$tournament['tournament_end'] = $this->convert_date($tournament['tournament_end']);
			if (! isset($tournament['tournament_loser_bracket'])) {
				$tournament['tournament_loser_bracket'] = 0;
			} else {
				$tournament['tournament_loser_bracket'] = 1;
			}
			update('tournament', $tournament, "WHERE tournament_id= $id");
			$_request->redirect('tournaments');
		}
		global $_request;
		$this->scripts[] = 'tournament.js';
		$id = $_request->params[0];
		$tournament = get_all("SELECT * FROM tournament WHERE tournament_id='$id'");
		$tournament = $tournament[0];
		$places = get_all("SELECT * FROM place WHERE place_deleted=0");
		$institutes = get_all("SELECT * FROM institute WHERE deleted=0");
		$participants = get_all("SELECT *
								 FROM participant as pa
								 LEFT JOIN institute using(institute_id)
								 WHERE pa.deleted=0 AND tournament_id='$id'");

		$place_id = $tournament['place_id'];
		$place_name = get_one("SELECT place_name FROM place WHERE place_id = $place_id ");
		$tournament_id = $tournament['tournament_id'];
		$tournament['tournament_start'] = $this->convert_date2($tournament['tournament_start']);
		$tournament['tournament_end'] = $this->convert_date2($tournament['tournament_end']);
		require 'views/master_view.php';

	}

	function convert_date2($date)
	{
		list($date, $time) = explode(' ', $date);
		list($y, $mon, $d) = explode('-', $date);
		list($h, $min) = explode(':', $time);
		return "$d.$mon.$y $h:$min:00";
	}

	private function get_place_id($place_name)
	{
		$place_id = get_one("SELECT place_id FROM place WHERE place_name LIKE '$place_name'");
		return $place_id ? $place_id : q("INSERT INTO place SET place_name='$place_name'");
	}

	private function convert_date($date)
	{
		list($date, $time) = explode(' ', $date);
		list($d, $mon, $y) = explode('.', $date);
		list($h, $min) = explode(':', $time);
		return "$y-$mon-$d $h:$min:00";
	}
}

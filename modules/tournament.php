<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kasutaja
 * Date: 7.03.13
 * Time: 11:42
 * To change this template use File | Settings | File Templates.
 */
class tournament
{

	function add()
	{
		global $_request;
		if (isset($_POST['tournament'])) {
			$tournament = $_POST['tournament'];

			// Convert dates
			$tournament['tournament_start'] = $this->convert_date($tournament['tournament_start']);
			$tournament['tournament_end'] = $this->convert_date($tournament['tournament_end']);

			// Add  places
			$tournament['place_id'] = $this->get_place_id($tournament['place_name']);
			unset($tournament['place_name']);

			// INSERT new tournament
			$id = save('tournament', $tournament);

			// Add participants to inserted tournament, if any
			if ($id) {
				$participants = $_POST['participants'];
				$participants = json_decode($participants, TRUE);


				if (! empty ($participants)) {
					foreach ($participants as $participant) {
						$participant['institute_id'] = $this->get_institute_id($participant['institute_name']);
						unset($participant['institute_name']);
						$participant['tournament_id'] = $id;
						save('participant', $participant);
					}
				}
				$_request->redirect('tournaments');
			}
		}
	}

	/**
	 * modifies tournament
	 *
	 * @param $tournament_id int
	 * @param $tournament array
	 * @param $participants array
	 */
	function edit($tournament_id, $tournament, $participants)
	{


		if (isset($tournament_id, $tournament, $participants)) {

			// Convert dates
			$tournament['tournament_start'] = $this->convert_date($tournament['tournament_start']);
			$tournament['tournament_end'] = $this->convert_date($tournament['tournament_end']);

			// Add  places
			$tournament['place_id'] = $this->get_place_id($tournament['place_name']);
			unset($tournament['place_name']);

			// UPDATE tournament
			$affected_rows = update('tournament', $tournament, "tournament_id={$tournament_id}");

			// Add participants to inserted tournament, if any
			$participants = json_decode($participants, TRUE);


			if (! empty ($participants)) {
				foreach ($participants as $key => $participant) {

					$participant['institute_id'] = $this->get_institute_id($participant['institute_name']);
					unset($participant['institute_name']);
					$participant['tournament_id'] = $tournament_id;
					if (substr($key, 0, 20) == "existing_participant") {
						update('participant', $participant, "participant_id=".substr($key, 20, strlen($key))."");
					} else {
						save('participant', $participant);
					}
				}
			}

		}
	}



function add_participant($participant_name, $tournament_id, $institute_name)
{
	$institute_id = $this->get_institute_id($institute_name);
	return q(
		"INSERT INTO participant
						 SET
						    tournament_id = '$tournament_id',
						    participant_name = '$participant_name',
						    institute_id = '$institute_id'"
	);
}

function convert_date($date)
{
	list($date, $time) = explode(' ', $date);
	list($d, $mon, $y) = explode('.', $date);
	list($h, $min) = explode(':', $time);
	return "$y-$mon-$d $h:$min:00";
}


function get_institute_id($institute_name)
{
	$institute_id = get_one("SELECT institute_id FROM institute WHERE institute_name LIKE '$institute_name'");
	return $institute_id ? $institute_id : q("INSERT INTO institute SET institute_name = '$institute_name'");
}


function get_place_id($place_name)
{
	$place_id = get_one("SELECT place_id FROM place WHERE place_name LIKE '$place_name'");
	return $place_id ? $place_id : q("INSERT INTO place SET place_name = '$place_name'");
}

}

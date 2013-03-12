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
	private function convert_date($date){
		list($date, $time) = explode(' ',$date);
		list($d,$mon,$y) = explode('.',$date);
		list($h,$min) = explode(':',$time);
		return "$y-$mon-$d $h:$min:00";
	}

	private function get_institute_id($institute_name)
	{
		$institute_id = get_one("SELECT institute_id FROM institute WHERE institute_name LIKE '$institute_name'");
		return $institute_id ? $institute_id : q("INSERT INTO institute SET institute_name='$institute_name'");
	}
}

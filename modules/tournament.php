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

			// INSERT new tournament
			$id = save('tournament', $_POST['tournament']);

			// Add participants to inserted tournament, if any
			if ($id) {
				$participants = $_POST['participants'];
				$participants = json_decode($participants, TRUE);

				if (! empty ($participants)) {
					foreach ($participants as $participant) {
						$participant['institute_id'] = $this->get_institute_id($participant['institute_name']);
						unset($participant['institute_name']);
						save('participant', $participant);
					}
				}
				$_request->redirect('tournaments');
			}
		}
	}
	private function convert_dates(){
		$tournament_start = $_POST['tournament[tournament_start]'];
		$tournament_end = $_POST['tournament[tournament_end]'];
		list($d,$m,$y) = explode('.',$tournament_start);
		$new_dateorig_start = date("Y-m-d", strtotime("$y-$m-$d"));
		list($d,$m,$y) = explode('.',$tournament_end);
		$new_dateorig_end = date("Y-m-d", strtotime("$y-$m-$d"));
	}
	private function get_institute_id($institute_name)
	{
		$institute_id = get_one("SELECT institute_id FROM institute WHERE institute_name LIKE '$institute_name'");
		return $institute_id ? $institute_id : q("INSERT INTO institute SET institute_name='$institute_name'");
	}
}

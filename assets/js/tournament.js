// Declare global variables
var new_participant_id = 0;
var tournament_id = 0;
var groups = 'ABCDEFGHIJKLMNOPQRSTUVXYZ';
var participant_name_field;
var participants_table_body;
var institute_name_field;
var max_groups_field;
var current_group_number = -1;

function remove_tournament_ajax(id) {

	// Remove specified row from table
	$.post(BASE_URL + "tournaments/remove/" + id)
		.done(function (data) {
			if (data == 'OK') {
				$('table#tournaments-table>tbody>tr#tournament' + id).remove();
			}
			else
				alert("Viga\n\nServer vastas: '" + data + "'.\n\nKontakteeru arendajaga.");
		});
}


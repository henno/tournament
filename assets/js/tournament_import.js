var participant_array = new Array();

// Import participants from an Excel (or equivalent) file
function import_participants() {
	//$input = document.getElementById('import-participants').innerHTML;
	var input = $('textarea#import-participants').val();
	if((/^\s*$/).test(input)) {
		alert("Tekstiväli ei tohi olla tühi!");
		die();
	}

	var rows = input.split("\n");

	// Participant template
	function participant(participant_name, institute_name, pool_name, participant_favorite) {
		this.participant_name = participant_name,
			this.institute_name = institute_name,
			this.pool_name = pool_name,
			this.participant_favorite = participant_favorite;
	}
	// Save rows as (participant) objects & place those objects into one (participants) array
	for (var r = 0; r < rows.length; r++) {
		fields = rows[r].split(/\s/);                       //what if there are spaces or sth similar?
		var fields_elements=fields.slice();
		if(fields_elements[0] == ""||fields_elements[0]=='undefined'){
			alert("Sisestatud andmed ei ole korrektses vormis!"); return false;
		}
		else {


		var field_array = new Array();

		for (var f = 0; f < fields.length; f++) {
			field_array[f] = fields[f];
		}

		// Any alphabetic or numeric char (except 0) makes 'favorite == true'
		var favorite = function () {
			var fav_value = field_array[3];
			if (/[1]/.test(fav_value)) {
				return true;
			}
			else {
				return false;
			}
		};
		participant_array[r] = new participant(field_array[0], field_array[1], field_array[2], favorite());
	}
		}


	// JSONize participants array
	var json_text = JSON.stringify(participant_array, null);
	// Assign JSONized array to hidden input field
	$('#participants').val(json_text);

	// Submit form

	$('#upload-file').submit();
	//window.close();


}
var participant_id = 0;
var participants = new Array;
function add_participant() {
	
	// Verify that the participant name field is filled
	if (!$('#participant_name').val())
	{
		$('#participant_name').addClass('viga');
		return false;
	}
	
	participant_id++;
	participant_name = $('#participant_name').val();
	$('#participant_name').val('');

	institute_name = $('.esTextBox').val();
	$('.esTextBox').val('');

	$('#participants-table > tbody:last').append('<tr ' +
		'id="participant' + participant_id + '"><td>' + participant_id + '</td><td>' + participant_name + '</td><td' +
		'>' + institute_name + '</td><td><input type="checkbox"></td><td><a href="#"><i class="icon-pencil"></i></a><a href="#" onclick="if (confirm(' + "'Oled kindel?'" + ')) remove_participant('+participant_id+')"><i class="icon-trash"></i></a></td></tr>');
		return false;
	// Store new participant in participants array
	participants[participant_id]={"participant_name":participant_name, "institute_name":institute_name};

}

function convert_table_to_json() {
	//$('#participants').val(tableToJson($('#participants-table')));
	var json_text = JSON.stringify(participants, null, 2);

	console.debug (json_text);
	$('#participants').val(json_text);
	$('#confirm-form').submit();
}
function remove_participant(id) {
	$(document.getElementById('participant'+id)).remove();

	/*$.post("<?=BASE_URL?>tournaments/remove_participant/" + id + "?ajax",
		function (r) {
			if (r == 'OK') {
				$('#participant' + id).remove();
			}
			else {
				alert(r);
			}
		}).fail(function () {
			alert("serveriga ühendamine ebaõnnestus");
		});*/
}

$(function () {
	$('#institute_name').editableSelect();
});

var participant_id = 0;
var participants = new Array;
function add_participant() {

	// Cache repetitive and expensive jQuery element finding operation results to variables (makes it faster)
	institute_name_field = $('.esTextBox');
	participant_name_field = $('#participant_name');
	participants_table_body = $('table#participants-table > tbody:last');

	// Verify that the participant name field is correctly filled, or else abort
	if (!participant_name_field.val()) {
		participant_name_field.addClass('viga');
		return false;
	}

	// Add new row to participants' table
	participants_table_body.append('' +
		'<tr id="participant' + participant_id + '">' +
		'<td>' + participant_name_field.val() + '</td>' +
		'<td>' + institute_name_field.val() + '</td>' +
		'<td><input type="checkbox"></td>' +
		'<td>' +
		'<a href="#"><i class="icon-pencil"></i></a>' +
		'<a href="#" onclick="if (confirm(' + "'Oled kindel?'" + ')) remove_participant(' + participant_id + ')"><i class="icon-trash"></i></a>' +
		'</td>' +
		'</tr>');

	// Store new participant in participants array
	participants[participant_id] = {"participant_name": participant_name, "institute_name": institute_name};

	// Bump participants' array's next id number
	participant_id++;

	// Clear participant name and institute fields
	institute_name_field.val('');
	participant_name_field.val('');

	// Cancel <a>'s onclick event to prevent page reload
	return false;
}

function convert_table_to_json() {
	//$('#participants').val(tableToJson($('#participants-table')));
	var json_text = JSON.stringify(participants, null, 2);

	console.debug(json_text);
	$('#participants').val(json_text);
	$('#confirm-form').submit();
}
function remove_participant(id) {
	$(document.getElementById('participant' + id)).remove();

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

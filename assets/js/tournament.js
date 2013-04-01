// Declare global variables
var new_participant_id = 0;
var tournament_id = 0;
var groups = 'ABCDEFGHIJKLMNOPQRSTUVXYZ';
var participant_name_field;
var participants_table_body;
var institute_name_field;
var max_groups_field;
var current_group_number = -1;
function get_tournament_participant(){
	$('.tournament_participant').html(document.getElementById('tournament_participant').value)
};

function get_tournament_classification(){
	$('.tournament_classification').html(document.getElementById('tournament_classification').value)
};

function remove_tournament_ajax(id) {

	// Remove specified row from table
	$.post(BASE_URL + "tournaments/remove/" + id)
		.done(function (data) {
			if (data == 'OK') {
				$('table#tournaments-table>tbody>tr#tournament' + id).remove();
				alert("Turniir kustutatud");
			}
			else
				alert("Viga\n\nServer vastas: '" + data + "'.\n\nKontakteeru arendajaga.");
		});
}

function get_group_name() {

	current_group_number = (current_group_number++ >= max_groups_field.val() - 1) ? 0 : current_group_number;
	return groups[current_group_number];
}
function update_participant_count() {
	$('#participant-count').html(Math.round(participants_table_body.find('tr').length / $('#max_groups').val()));
}
function add_participant() {
	group_name = get_group_name();


	// Verify that the participant name field is correctly filled, or else abort
	if (!participant_name_field.val()) {
		participant_name_field.addClass('viga');
		return false;
	}
	var institute_name_length = $('[name="institute_name"]').val().length;
	if (institute_name_length > 17) {
		alert("Instituudi nimi on liiga pikk!");
		return false;
	}

	// TODO Verify that the participant names are not same

	if (!verify_participant_names()) {
		return false;
	}
	// Add new row to participants' table
	participants_table_body.append('' +
		'<tr id="new_participant' + new_participant_id + '">' +
		'<td>x</td>' +
		'<td>' + participant_name_field.val().trim() + '</td>' +
		'<td>' + institute_name_field.val().trim() + '</td>' +
		'<td>' + group_name + '</td>' +
		'<td><input type="checkbox"></td>' +
		'<td>' +
		'<a href="#" onclick="if (confirm(' + "'Oled kindel?')) remove_participant('new_participant" + new_participant_id + "')" + '"><i class="icon-trash"></i></a>' +
		'</td>' +
		'</tr>');

	// Bump participants' array's next id number
	new_participant_id++;

	// Clear participant name and institute fields
	institute_name_field.val('');
	participant_name_field.val('');

	// Reset numbers
	reset_numbers();

	// Update participant count
	update_participant_count();
	// Cancel <a>'s onclick event to prevent page reload
	return false;
}
function verify_participant_names() {
	var fail = 0;
	participants_table_body.find('tr').each(function () {
		var participant_name = $(this).find('td:nth-child(2)').html().trim();
		if (participant_name == participant_name_field.val().trim()) {
			fail = 1;
			return false;
		}
	});
	console.log(fail);
	if (fail) {
		if (!confirm('Oled kindel?')) {
			return false;
		}
		else {
			return true;
		}
	} else {
		return true;
	}
	;

}

/**
 * Reorganizes groups based on max_group field value.
 */
function reinit_groups() {
	// Reset table
	participants_table_body.find('tr').each(function () {

		// Overwrite group cell
		var new_group_name = get_group_name();
		$(this).find('td:nth-child(4)').html(new_group_name);
		var participant_id = $(this).attr('id');
	});
	update_participant_count();
}
function reset_numbers() {

	// Initialize row counter
	var n = 1;

	// Iterate through each first cell in every row in participants table and write row number
	participants_table_body.find('>tr>td:nth-child(1)').each(function () {
		$(this).html(n++ + '.');
	});
}

function convert_table_to_json() {
	// Check that tournament_name is given
	if (!$('#tournament-name').val()) {
		$('#tournament-name').addClass('viga');
		$("#tabs").tabs("option", "active", 0);
		return false;
	}

	// Check that tournament_place is given & its length is under 21
	if ($('input[name="tournament[place_name]"]').val().length > 21) {
		$("#tabs").tabs("option", "active", 0);
		alert("Koht ei saa nii pikk olla!");
		return false;
	}

	// Check that game length is not 0
	if (!$('#game-length').val() || $('#game-length').val() == '0' || $('#game-length').val() == '00') {
		$('#game-length').addClass('viga');
		$("#tabs").tabs("option", "active", 0);
		return false;
	}

	// Create participants array
	participants_table_body.find('tr').each(function () {
		var participant_id = $(this).attr('id');
		participants[participant_id]['participant_name'] = $(this).find('td:nth-child(2)').html();
		participants[participant_id]['institute_name'] = $(this).find('td:nth-child(3)').html();
		participants[participant_id]['group_name'] = $(this).find('td:nth-child(4)').html();
		participants[participant_id]['participant_favorite'] = $(this).find('td:nth-child(5)').html();
	});

	// JSONize participants array
	var json_text = JSON.stringify(participants, null, 2);

	// Assign JSONized array to hidden input field
	$('#participants').val(json_text);

	// Check whether the tournament start is set and is earlier than tournament end
	$(".datepicker").datetimepicker();

	var start = $('#tournament_start').val();
	var end = $('#tournament_end').val();

	if (start >= end || !start) {
		$("#tabs").tabs("option", "active", 0);
		alert("Turniiri algus peab olema varasem kui lõpp!");
		$('#tournament_start').addClass('viga');
		$('#tournament_end').addClass('viga');
		if (!start) {
			$('#tournament_start').addClass('viga');
		}
		if (!end) {
			$('#tournament_end').addClass('viga');
		}
		return false;
	}

	if (!$('#tournament_participant').val()) {
		$('#tournament_participant').addClass('viga');
		$("#tabs").tabs("option", "active", 0);
		return false;
	}

	if (!$('#tournament_classification').val()) {
		$('#tournament_classification').addClass('viga');
		$("#tabs").tabs("option", "active", 0);
		return false;
	}

	// Submit form
	$('#tournament-add-form').submit();
}
function remove_participant(id) {

	// Remove specified row from participant table
	$('table#participants-table>tbody>tr#' + id).remove();

	// Reset numbers
	reset_numbers();
}

function validate(evt) {
	var theEvent = evt || window.event;
	var key = theEvent.keyCode || theEvent.which;
	key = String.fromCharCode(key);
	var r1 = /[0-9]/;
	var r2 = /[\b]/;
	if (!(r1.test(key) || r2.test(key))) {
		theEvent.returnValue = false;
		if (theEvent.preventDefault) theEvent.preventDefault();
	}
}

$(function () {
	get_tournament_participant();
	get_tournament_classification();
	tournament_id = $('input[type=hidden]#tournament_id').val();
	$('.spinner').spinner();

	participants_table_body = $('table#participants-table > tbody:last');
	$('#max_groups').spinner({
		stop: function (event, ui) {
			current_group_number = -1;
			reinit_groups();
			update_participant_count()
		}
	});

// Initialize place_name combobox
	$('.makeEditable').editableSelect();

// Cache repetitive and expensive jQuery element finding operation results to variables (makes it faster)
	institute_name_field = $('input[name="institute_name"]');
	participant_name_field = $('input#participant_name');
	max_groups_field = $('input#max_groups');

	var keyStop = {
		8 : ":not(input:text, textarea)", // stop backspace = back
		13: "input:text", // stop enter = submit

		end: null
	};
	$(document).bind("keydown", function (event) {
		var selector = keyStop[event.which];

		if (selector !== undefined && $(event.target).is(selector)) {
			event.preventDefault(); //stop event
		}
		return true;
	});

	var startDateTextBox = $('#tournament_start');
	var endDateTextBox = $('#tournament_end');

	startDateTextBox.datetimepicker({
		dateFormat: 'dd.mm.yy',
		onClose   : function (dateText, inst) {
			if (endDateTextBox.val() != '') {
				var testStartDate = startDateTextBox.datetimepicker('getDate');
				var testEndDate = endDateTextBox.datetimepicker('getDate');
				if (testStartDate > testEndDate)
					endDateTextBox.datetimepicker('setDate', testStartDate);
			}
			else {
				endDateTextBox.val(dateText);
			}
		},
		onSelect  : function (selectedDateTime) {

			var x = startDateTextBox.datetimepicker('getDate');
			x.setDate(x.getDate() + 365);

			endDateTextBox.datetimepicker('option', 'minDate', startDateTextBox.datetimepicker('getDate'));
			endDateTextBox.datetimepicker('option', 'maxDate', x);
		}
	});
	endDateTextBox.datetimepicker({
		dateFormat: 'dd.mm.yy',
		onClose   : function (dateText, inst) {
			if (startDateTextBox.val() != '') {
				var testStartDate = startDateTextBox.datetimepicker('getDate');
				var testEndDate = endDateTextBox.datetimepicker('getDate');
				if (testStartDate > testEndDate)
					startDateTextBox.datetimepicker('setDate', testEndDate);
			}
			else {
				startDateTextBox.val(dateText);
			}
		},
		onSelect  : function (selectedDateTime) {
			startDateTextBox.datetimepicker('option', 'maxDate', endDateTextBox.datetimepicker('getDate'));
		}
	});


})
;

// Declare global variables
var new_participant_id = 0;
var participant_array = new Array();
var tournament_id = 0;
var groups = 'ABCDEFGHIJKLMNOPQRSTUVXYZ';
var participant_name_field;
var participants_table_body;
var institute_name_field;
var max_groups_field;
var current_group_number = -1;

function get_group_member_count(group_name) {
	var counter = 0;
	participants_table_body.find('tr').each(function () {
		var this_pool_name = $(this).find('td:nth-child(4)').html().trim();
		if (this_group_name == group_name) {
			counter++;
		}
	})
	return counter;
};


function add_group() {
	$('#tabs-3').empty();
	var participants_row = new Array();
	var participants_cell = new Array();

	// Iterate sub-group tables
	for (var i = 0; i < $('#max_groups').val(); i++) {
		if (!document.getElementById('group-table' + groups[i] + '')) {
			group_table_header = '<th></th>';
			participants_table_body.find('tr').each(function () {
				var this_group_name = $(this).find('td:nth-child(4)').html().trim();
				var participant_name = $(this).find('td:nth-child(2) input').val();
				var participant_id = $(this).attr('id');
				if (typeof participants_cell[this_group_name] == 'undefined') {
					participants_cell[this_group_name] = new Array();
				}
				if (this_group_name == groups[i]) {
					group_table_header += '<th width="120px" height="25px">' + participant_name + '</th>';
					participants_cell[this_group_name].push(participant_id);
				}
				participants_row.push(participant_id);
			});
			$('#tabs-3').append('<h3>Alagrupp ' + groups[i] + '</h3>');
			$('#tabs-3').append('<table id="group-table' + groups[i] + '" class="table table-bordered group-table"><tbody><tr>' + group_table_header + '<th width="120px">väravate vahe</th><th width="50px">punkte</th><th width="50px">koht</th></tr></tbody></table>');

		}
	}

	// For each participant...
	participants_table_body.find('tr').each(function () {
		var group_name = $(this).find('td:nth-child(4)').html().trim();  // A
		var participant_name = $(this).find('td:nth-child(2) input').val(); // Juku
		var participant_id = $(this).attr('id');

		// Generate body row
		var row = $(this).index();
		group_table = '';
		for (cell = 0; cell <= get_group_member_count(group_name) + 2; cell++) {
			group_table += '<td>&nbsp;</td>';
		}

		// Generate body
		$('#group-table' + group_name).append(
			'<tr>' +
				'<th width="120px" height="25px">' + participant_name + '</th>' + group_table +
				'</tr>');
	});
	black_background();
}
function black_background() {
	for (var i = 0; i < $('#max_groups').val(); i++) {
		var counter = 1;
		$('#group-table' + groups[i] + '').find('tr').each(function () {
			$(this).find('td:nth-child(' + counter + ')').addClass('blackbackground').html('');
			counter++;
		})
	}
}
function set_participant_type() {
	$('.tournament_participant').html(document.getElementById('tournament_participant').value);
}
function get_scores(a, b) {
	console.debug(a);
	console.debug(b);
	if (typeof a == 'undefined' || typeof b == 'undefined' || a.substr(0, 3) == 'new') {
		return 'andmed puuduvad';
	}
	else {
		obj = JSON.parse(get_scores_ajax(a, b));
		return obj['a'] + ':' + obj['b'];
	}
}
function get_scores_ajax(a, b) {
	return $.ajax({type: 'post', name: 'test', dataType: 'json', url: BASE_URL + 'tournaments/get_scores', a: a, b: b, async: false})
		.done(function (msg) {
		}).responseText;
}


function set_unit_type() {
	$('.tournament_classification').html(document.getElementById('tournament_classification').value)
}

function get_pool_name() {

	current_group_number = (current_group_number++ >= max_groups_field.val() - 1) ? 0 : current_group_number;
	return groups[current_group_number];
}
function update_participant_count() {
	$('#participant-count').html(Math.round(participants_table_body.find('tr').length / $('#max_groups').val()));
}

// Import participants from an Excel (or equivalent) file
function import_participants() {
	//$input = document.getElementById('import-participants').innerHTML;
	var input = $('textarea#import-participants').val();
	var rows = input.split("\n");

	// Participant template
	function participant(participant, unit, pool, favorite) {
		this.participant = participant,
			this.unit = unit,
			this.pool = pool,
			this.favorite = favorite;
	}

	// Save rows as (participant) objects & place those objects into one (participants) array
	for (var r = 0; r < rows.length; r++) {
		var fields = rows[r].split("\t");                       //what if there are spaces or sth similar?
		var field_array = new Array();

		for (var f = 0; f < fields.length; f++) {
			field_array[f] = fields[f];
		}

		// Any alphabetic or numeric char (except 0) makes 'favorite == true'
		var favorite = function () {
			var fav_value = field_array[3];
			if (/[a-zA-Z1-9]/.test(fav_value)) {
				return true;
			}
			else {
				return false;
			}
		};
		participant_array[r] = new participant(field_array[0], field_array[1], field_array[2], favorite());
		console.log(participant_array[r]);
	}
	//console.log(participant_array[0].participant);
	for (var p in participant_array) {
		add_participant(participant, unit, pool, favorite);
	}
}

function add_participant_wrapper() {
	var participant = participant_name_field.val();
	var unit = $('[name="institute_name"]').val();
	var pool = get_pool_name();
	var favorite = false;
	add_participant(participant, unit, pool, favorite);
}

function add_participant(participant, unit, pool, favorite) {
	// Verify that the participant name field is correctly filled, or else abort
	if (!participant_name_field.val()) {
		participant_name_field.addClass('viga');
		return false;
	}
	var institute_name_length = unit.length;
	if (institute_name_length > 17) {
		alert("Instituudi nimi on liiga pikk!");
		return false;
	}

	// Verify that the participant names are not same
	if (!verify_participant_names()) {
		return false;
	}
	// Add new row to participants' table
	var checked = favorite ? 'checked="checked"' : '';
	participants_table_body.append('' +
		'<tr id="new_participant' + new_participant_id + '">' +
		'<td>x</td>' +
		'<td>' + participant.trim() + '</td>' +
		'<td>' + institute_name_field.val().trim() + '</td>' +
		'<td>' + pool + '</td>' +
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
		var participant_name = $(this).find('td:nth-child(2)').find('input').val();
		if (participant_name == participant_name_field.val().trim()) {
			fail = 1;
			return false;
		}
	});
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
}

/**
 * Reorganizes groups based on max_group field value.
 */
function reinit_groups() {
	// Reset table
	participants_table_body.find('tr').each(function () {

		// Overwrite group cell
		var new_pool_name = get_pool_name();
		$(this).find('td:nth-child(4)').html(new_pool_name);
		var participant_id = $(this).attr('id');
	});
	update_participant_count();
	add_group();
}
function reset_numbers() {

	// Initialize row counter
	var n = 1;

	// Iterate through each first cell in every row in participants table and write row number
	participants_table_body.find('>tr>td:nth-child(1)').each(function () {
		$(this).html(n++ + '.');
	});
}

function submit1() {

	// Check that tournament_name is given
	if (!$('#tournament-name').val()) {
		$('#tournament-name').addClass('viga');
		$("#tabs").tabs("option", "active", 0);
		alert("Turniiri nimi on puudu!");
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
		alert("Mängu pikkus on 0!");
		return false;
	}

	// Create participants array
	var participants = {};
	participants_table_body.find('tr').each(function () {
		var participant_id = $(this).attr('id');
		participants[participant_id] = {};

		//trim the text to remove newline and tab characters
		//if the field is editable, use val, else use text
		//if length > 0, input field exists
		if (($(this).find('td:nth-child(2) input')).length > 0) {
			participants[participant_id]['participant_name'] = $.trim($(this).find('td:nth-child(2) input').val());
		} else {
			participants[participant_id]['participant_name'] = $.trim($(this).find('td:nth-child(2)').text());
		}
		participants[participant_id]['institute_name'] = $.trim($(this).find('td:nth-child(3)').text());
		participants[participant_id]['pool_name'] = $.trim($(this).find('td:nth-child(4)').text());
		participants[participant_id]['participant_favorite'] = $(this).find('td:nth-child(5) input').prop('checked') ? "1" : "0";


	});

	// JSONize participants array
	var json_text = JSON.stringify(participants, null);
	alert(json_text);
	//console.log(participants);
	//return false;

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
	add_group();
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
	// Write participant table captions
	set_participant_type();
	set_unit_type();

	// Initialize place_name combobox
	$('.makeEditable').editableSelect();

	// Cache repetitive and expensive jQuery element finding operation results to variables (makes it faster)
	institute_name_field = $('input[name="institute_name"]');
	participant_name_field = $('input#participant_name');
	max_groups_field = $('input#max_groups');
	tournament_id = $('input[type=hidden]#tournament_id').val();
	participants_table_body = $('table#participants-table > tbody:last');

	// Initialize spinners
	$('.spinner').spinner();
	$('#max_groups').spinner({
		stop: function (event, ui) {
			current_group_number = -1;
			reinit_groups();
			update_participant_count()
		}
	});

	var keyStop = {
		8 : ":not(input:text, textarea)", // stop backspace = back
		13: "input:text", // stop enter = submit1

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

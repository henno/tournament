var participant_count = 0;
function add_participant() {
	participant_count++;
	participant_id = 1;
	participant_name = $('#participant_name').val();
	institute_name = $('#institute_name').val();
	$('#participants-table > tbody:last').append('<tr ' +
		'id="participant' + participant_id + '"><td>' + participant_count + '</td><td>' + participant_name + '</td><td' +
		'>' + institute_name + '</td><td><input type="checkbox"></td><td><a href="#"><i class="icon-pencil"></i></a><a href="#" onclick="if (confirm(' + "'Oled kindel?'" + ')) remove_participant(participant_id)"><i class="icon-trash"></i></a></td></tr>');
	console.debug ($('table#participants-table tbody tr'));
	var data = $('table#participants-table tbody tr').map(function(index) {
		var cols = $(this).find('td');
		return {
			id: index + 1,
			name: cols[0].innerHTML,
			age: (cols[1].innerHTML + '') * 1, // parse int
			grade: (cols[2].innerHTML + '') * 1 // parse int
		};
	}).get();

	console.log(data);
}
function convert_table_to_json() {
	//$('#participants').val(tableToJson($('#participants-table')));
	$('#participants').val('tere');
	//$('#confirm-form').submit();
}
function remove_participant(id) {
	$.post("<?=BASE_URL?>tournaments/remove_participant/" + id + "?ajax",
		function (r) {
			if (r == 'OK') {
				$('#participant' + id).remove();
			}
			else {
				alert(r);
			}
		}).fail(function () {
			alert("serveriga ühendamine ebaõnnestus");
		});
}

$(function () {
	$("#institute_name").editableSelect();
});

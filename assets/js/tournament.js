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


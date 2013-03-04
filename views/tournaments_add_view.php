<script>
	function remove_participant(id) {
		$.post("<?=BASE_URL?>tournaments/remove_participant/" + id + "?ajax",
				function (r) {
					if (r == 'OK') {
						$('#participant' + id).remove();
					}
					else{
						alert(r);
					}
				}).fail(function () {
					alert("serveriga ühendamine ebaõnnestus");
				});
	}
</script>
<style>
	input[type="date"]::-webkit-calendar-picker-indicator {
		display: inline-block;
		margin-top: 2%;
		float: right;
	}

	input[type="date"]::-webkit-inner-spin-button {
		display: none;
		-webkit-appearance: none;
		margin: 0;
	}

	.points {
		width: 40px;
		margin-right: 15px;
	}
</style>
<form>
	<div class="span6">

		<table class="table">
			<tbody>


			<tr>
				<th>Turniiri nimi</th>
				<td><input type="text" name="tournament_name"></td>
			</tr>

			<tr>
				<th>Koht</th>
				<td><input type="text" name="tournament_place"></td>
			</tr>

			<tr>
				<th>Turniiri algus</th>
				<td><input type="date" name="tournament_start"></td>
			</tr>

			<tr>
				<th>Turniiri lõpp</th>
				<td>
					<input type="date" name="tournament_end"></td>
			</tr>

			<tr>
				<th>Mängu kestvus</th>
				<td><input type="number" value="1" min="1" name="tournament_game_time"></td>
			</tr>

			<tr>
				<th>Paus</th>
				<td><input type="number" value="1" min="1" name="tournament_game_pause"></td>
			</tr>
			<tr>
				<th>Platside arv</th>
				<td><input type="number" value="1" min="1" name="tournament_field"/></td>
			</tr>

			</tbody>
		</table>
	</div>
</form>

<table class="table table-bordered table-striped">
	<thead>
	<tr>
		<th>
			#
		</th>
		<th>
			Meeskonna/mängija nimi
		</th>
		<th>
			instituut
		</th>
		<th>
			Favoriit
		</th>
		<th>
			Tegevused
		</th>
	</tr>
	</thead>
	<tbody>

	<? $i = 1; foreach ($participants as $participant): ?>
	<tr id="participant<?=$participant['participant_id']?>">
		<td>
			<?=$i ++?>
		</td>
		<td>
			<?=$participant['participant_name']?>
		</td>
		<td>
			<?=$participant['institute_name']?>
		</td>
		<td>
			<input type="checkbox">
		</td>
		<td>
			<a href="#"><i class="icon-pencil"></i></a>
			<a href="#" onclick="if (confirm('Oled kindel?')) remove_participant(<?=$participant['participant_id']?>)">
				<i class="icon-trash"></i>
			</a>
		</td>
	</tr>
		<? endforeach?>
	</tbody>
</table>
<p>Mitu Alagruppi moodustada:</p>
<input type="number" value="1" min="1" name="tournament_group"/>
<p>Mitu alagrupi võitjat edasi saab:</p>
<input type="number" value="1" min="1" name="tournament_group"/>
<p>Tüüp:</p>
<select>
	<option>Alagrupi mängud</option>
	<option>Alagrupi mängud + playoff</option>
	<option>Playoff</option>
</select>
<p>Kaotajate ring: <input type="checkbox"></p>
<table>
	<tbody>
	<tr>
		<td>võit :</td>
		<td>viik:</td>
		<td>kaotus :</td>
	</tr>

	<tr>
		<td><input class="points" type="number" value="3" min="0" name="tournament_game_win"/></td>
		<td><input class="points" type="number" value="1" min="0" name="tournament_game_tie"/></td>
		<td><input class="points" type="number" value="0" min="0" name="tournament_game_loss"/></td>
	</tr>

	</tbody>
</table>
<form class="form-signin" method="post">
	<button class="btn btn-large btn-primary" type="submit">Turniiri eelvaade</button>
</form>
<form class="form-signin" method="post">
	<button class="btn btn-large btn-primary" type="submit">Kinnita</button>
</form>

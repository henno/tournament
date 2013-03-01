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
					<input type="date" value="2011-06-01" name="tournament_end"></td>
			</tr>

			<tr>
				<th>Mängu kestvus</th>
				<td><input type="number" value="1" min="1" name="tournament_game_time"></td>
			</tr>

			<tr>
				<th>Paus</th>
				<td><input type="number" value="1" min="1" name="tournament_game_pause">min</td>
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
			võistkonna nimi
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
	<?foreach ($tournaments as $tournament):?>
	<tr>
		<td>
			1
		</td>
		<td>
			Kõvad mehed
		</td>
		<td>
			-
		</td>
		<td>
			<input type="checkbox">
		</td>
		<td>
			<a href="#"><i class="icon-pencil"></i>
				<a href="<?=BASE_URL?>tournaments/remove/<?=$tournament['tournament_id']?>" onclick="if (!confirm('Oled kindel?'))return false"><i class="icon-trash">
		</td>
	</tr>
	<?endforeach?>
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

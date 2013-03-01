<style>
	input[type="date"]::-webkit-calendar-picker-indicator{
		display:inline-block;
		margin-top:2%;
		float:right;
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
				<td><input type="number" value="1" max="999" min="1" name="tournament_game_time"></td>
			</tr>

			<tr>
				<th>Paus</th>
				<td><input type="number" value="1" max="999" min="1" name="tournament_game_pause">min</td>
			</tr>
			<tr>
				<th>Platside arv</th>
				<td><input type="number" value="1" max="99" min="1" name="tournament_field"/></td>
			</tr>

			</tbody>
		</table>
	</div>
</form>

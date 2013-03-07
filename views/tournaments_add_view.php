<script src="<?=BASE_URL?>assets/js/jquery.combobox.js"></script>
<style>
	.esContainer {
		background: white;
		padding: 5px;
		border: 1px solid #5CB3FF;
		border-radius: 10px;
	}

	.esItem {
		background: white;
	}

	.esItemHover {
		background: #E3E4FA;
	}

	.esTextBox {
		background: url(<?=BASE_URL?>assets/ico/arrowdown.png) 98% 50% no-repeat;
	}

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
	.viga{
		background-color: #f2dede !important;
	}
</style>
<form>
	<div class="span6 ">

		<table class="table ">
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

<table id="participants-table" class="table table-bordered table-striped">
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
	</tbody>
</table>
<form class="form-inline" style="width: 520px">
	<div style="float:left;">
		<input type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name" style="height:35px"
		       onclick="$(this).removeClass('viga')">
		<select id="institute_name" class="makeEditable" style="height: 35px">
			<option value=""</option>
			<?foreach ($institutes as $institute) : ?>
			<option value="<?=$institute['institute_name']?>"><?=$institute['institute_name']?></option>
			<? endforeach?>
		</select>
	</div>
	<button type="button" class="btn btn-large" onclick="add_participant()" style="margin-left:5px ">Lisa
		mängija
	</button>
</form>
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
<form class="form-signin" method="post" id="confirm-form">
	<input type="hidden" id="participants" name="participants">
	<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Kinnita</button>
</form>

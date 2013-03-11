<script src="<?=BASE_URL?>assets/js/jquery.combobox.js"></script>
<style>
	.container {
		margin-top: 10px;
	}

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

	.spinner {
		width: 40px;
	}

	.viga {
		background-color: #f2dede !important;
	}

	#tournament-attributes-table td:last-child {
		vertical-align: middle !important;
		text-align: right;
	}

	#tournament-attributes-table input {
		margin-bottom: 0 !important;
	}

	#tournament-attributes-table select {
		margin-bottom: 0 !important;
	}

	#tournament-attributes-table th {
		text-align: left;
		vertical-align: middle;
		padding: 5px;
	}

	#tournament-attributes-table td {
		padding: 5px;

	}

	#participants-table td {
		word-break: break-all;
	}
</style>

<form method="post" id="tournament-add-form">

	<div class="row-fluid">
	<span style="display: inline-block;">
	<div class="span6">

		<table id="tournament-attributes-table">
			<tbody>
			<tr>
				<th>Turniiri nimi</th>
				<td><input id="tournament-name" onclick="$(this).removeClass('viga')" type="text"
						   name="tournament[tournament_name]"></td>
			</tr>
			<tr>
				<th>Koht</th>
				<td><select name="tournament[place_id]">
					<option value="1">torn</option>
					<option value="2">maja</option>
				</select></td>
			</tr>
			<tr>
				<th>Turniiri algus</th>
				<td><input type="date" name="tournament[tournament_start]"></td>
			</tr>
			<tr>
				<th>Turniiri lõpp</th>
				<td>
					<input type="date" name="tournament[tournament_end]"></td>
			</tr>
			<tr>
				<th>Mängu kestvus</th>
				<td><input type="number" value="1" min="1" name="tournament[tournament_game_time]"></td>
			</tr>
			<tr>
				<th>Paus</th>
				<td><input type="number" value="1" min="1" name="tournament[tournament_game_pause]"></td>
			</tr>
			<tr>
				<th>Platside arv</th>
				<td><input type="number" value="1" min="1" name="tournament[tournament_field]"/></td>
			</tr>
			<tr>
				<th>Alagruppe:</th>
				<td><input type="number" value="1" min="1" name="tournament[tournament_group]"/></td>
			</tr>
			<tr>
				<th>Edasipääsejaid:</th>
				<td><input type="number" value="1" min="1" name="tournament[tournament_win]"/></td>
			</tr>
			<tr>
				<th>Tüüp:</th>
				<td><select name="tournament[tournament_type]">
					<option>Alagrupi mängud</option>
					<option>Alagrupi mängud + playoff</option>
					<option>Playoff</option>
				</select></td>
			</tr>
			<tr>
				<th>Kaotajate ring:</th>
				<td><input name="tournament[tournament_losers]" type="checkbox"></td>
			</tr>
			<tr>
				<th>Võit :</th>
				<td><input class="spinner" type="number" value="3" min="0" name="tournament[tournament_game_win]"/></td>
			</tr>
			<tr>
				<th>Viik:</th>
				<td><input class="spinner" type="number" value="1" min="0" name="tournament[tournament_game_tie]"/></td>
			</tr>
			<tr>
				<th>Kaotus :</th>
				<td><input class="spinner" type="number" value="0" min="0" name="tournament[tournament_game_loss]"/></td>
			</tr>
			</tbody>
		</table>

	</div>

	<div class="span6">
		<div style="width: 472px">
			<table id="participants-table" class="table table-bordered table-striped" style="width: 472px !important;">
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
					<th title="Vali favoriidiks" style="width: 20px">
						<i class="icon-star"></i>
					</th>
					<th title="Kustuta rida" style="width: 20px">
						<i class="icon-trash"></i>
					</th>
				</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
		<!-- add row begins here -->
		 
		<div style="width: 472px">
			<input type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name"
				   style="height:35px"
			  onclick="$(this).removeClass('viga')">
			<select id="institute_name" class="makeEditable" style="height: 35px; width: 203px">
				<option value="">&nbsp;</option>
				<? foreach ($institutes as $institute) : ?>
				<option value="<?= $institute['institute_name'] ?>"><?=$institute['institute_name']?></option>
				<? endforeach?>
			</select>
			<button type="button" class="btn btn-large" onclick="add_participant()" style="margin-left:5px; float: right ">Lisa
				mängija
			</button>
		</div>

		<!-- add row ends here -->

	</div>
	</span>
	</div>

	<div class="row-fluid">
		<div class="span12 text-center">
			<button class="btn btn-large btn-primary" type="submit">Turniiri eelvaade</button>
			<input type="hidden" id="participants" name="participants">
			<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Kinnita</button>
		</div>
	</div>
</form>
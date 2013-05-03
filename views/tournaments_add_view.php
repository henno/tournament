<style type="text/css">
.blackbackground {
	background: #bbb;
}

.kast {
	width: 450px;
	float: left;
	border: 1px solid black;
	padding: 90px 30px 10px 30px;
	border-color: #bbb;
	margin-right: 20px;
	margin-top: 10px;
	position: relative !important;
	background: #eeeeee;
}

.titlebar {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 50px;
	border-bottom: 1px solid lightgrey;
	padding-bottom: 10px;
	background: #ddd;
}

.number {
	display: inline-block;
	position: absolute;
	right: 13px;
	top: 17px;
	font-size: 2.5em;
	font-weight: bold;
	color: lightgrey;
	z-index: 20;
}

	/* css for timepicker */
.ui-timepicker-div dl {
	text-align: left;
}

.ui-timepicker-div dl dt {
	height: 25px;
	margin-bottom: -25px;
}

.ui-timepicker-div dl dd {
	margin: 0 10px 10px 65px;
}

.ui-timepicker-div td {
	font-size: 90%;
}

.ui-timepicker-rtl dl {
	text-align: right;
}

.ui-timepicker-rtl dl dd {
	margin: 0 65px 10px 10px;
}

.esContainer {
	width: 500px;
	word-break: break-all;
	background: white;
	padding: 5px;
	border: 1px solid #5CB3FF;
	border-radius: 10px;
}

.esItem {
	width: auto;
	background: white;
}

.makeEditable {
	width: 100px;
}

.esItemHover {
	background: #E3E4FA;
}

.esTextBox {
	background: url(<?= ASSETS_URL?>ico/arrowdown.png) 98% 50% no-repeat;
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

#participants-table {
	margin-bottom: 10px;
}

.datetimepicker {
	background: url(<?= ASSETS_URL?>ico/arrowdown.png) 98% 50% no-repeat;
}

.score-input {
	width: 45px;
	font-weight: 600;
	text-align: center;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
}

.score_cell {
	text-align: center;
}

.bracket-top {
	margin: 0;
	border-style: solid;
	border-width: 1px;
	background-size: cover;
	height: 64px;
	width: 250px;
	position: relative;
	padding-left:10px;
	text-align: center;

	vertical-align:middle;
	display:table-cell;

	-webkit-border-top-right-radius: 25px;
	-moz-border-radius-topright: 25px;
	border-top-right-radius: 25px;

	-webkit-box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);
	box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);

	background-color: rgba(1, 0, 227, 0.13);
}

.bracket-place {
	margin: 0;
	border-style: solid;
	border-width: 1px;
	background-size: cover;
	height: 64px;
	width: 250px;
	position: relative;
	padding-left:10px;
	text-align: center;

	vertical-align:middle;
	display:table-cell;

	-webkit-box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);
	box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);

	background-color: rgba(1, 0, 227, 0.13);
}

.bracket-low {
	margin: 0;
	border-style: solid;
	border-width: 1px;
	background-size: cover;
	height: 64px;
	width: 250px;
	position: relative;
	vertical-align:middle;
	padding-left:10px;
	text-align: center;


	display:table-cell;

	-webkit-border-bottom-right-radius: 25px;
	-moz-border-radius-bottomright: 25px;
	border-bottom-right-radius: 25px;

	-webkit-box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);
	box-shadow: inset 0px 2px 2px 1px rgba(0, 0, 0, 0.2);

	background-color: rgba(1, 0, 227, 0.13);
}

.bracket-mid {

	margin: 0;
	border-style: solid;
	border-width: 1px;
	background-size: cover;
	height: 64px;
	width: 250px;
	position: relative;
	vertical-align:middle;
	padding-left:10px;
	text-align: center;


	display:table-cell;

	-webkit-border-top-right-radius: 25px;
	-webkit-border-bottom-right-radius: 25px;
	-moz-border-radius-topright: 25px;
	-moz-border-radius-bottomright: 25px;
	border-top-right-radius: 25px;
	border-bottom-right-radius: 25px;

	-webkit-box-shadow: 0px 3px 5px 1px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 3px 5px 1px rgba(0, 0, 0, 0.2);


}

.bracket-none {
	margin: 0;
	position: relative;
	vertical-align:middle;

	border-style: solid;
	border-width: 1px;

	background-position: center center;
	height: 64px;
	width: 250px;
}

.bracket-empty {
	margin: 0;
	height: 66px;
	width: 250px;
	vertical-align:middle;
	display:table-cell;
	position: relative;
}

.playoff-table {
	margin: 0;
	float: left;
	width: 250px;
	height: 64px;
	border-style: none;

}

.playoff-table td{
	padding: 0;
	margin-bottom:0px;
	border-top: none;

}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {

	-webkit-opacity: 0.5;
	-moz-opacity: 0.5;
	opacity: 0.5;

}

#tabs ul {
	background: none;
	border: none;
	margin-top: -45px;
}

#tabs {
	margin-top: 50px;
	zoom: 1;
	float: left;
	padding-bottom: 15px;
	box-shadow: 1px 1px 5px 0 #181818, -1px -1px 5px 0 #181818;
	border-radius: 5px;
}

@media screen and (max-width:1200px) {
	.kast {
		float: none
	}
}

@media screen and (max-width:1200px) {
	.kast {
		float: none
	}
}

</style>
<script>
	$(function () {

		tournament_type = <?=$tournament['tournament_type']?>;

		$("#tabs").tabs();
		<? switch ($tournament['tournament_type']){
		case 0:?>
		$('[name=playoff]').show();
		$('[name=alagrupp]').show();
		games_array = eval('(<?=$games?>)');
		playoffs_db_array = eval('(<?=$playoffs?>)');
		losers_db_array = eval('(<?=$losers?>)');
		<?break; case 1:?>
		$('[name=alagrupp]').show();
		games_array = eval('(<?=$games?>)');
		<?break; case 2:?>
		$('[name=playoff]').show();
		playoffs_db_array = eval('(<?=$playoffs?>)');
		losers_db_array = eval('(<?=$losers?>)');
		<?break; case 3:?>
		$('[name=leaderboard]').show();
		<?break; case -1:?>
		<?break;}?>


	});

</script>
<script src="<?= ASSETS_URL ?>js/jquery.combobox.js"></script>
<script src="<?= ASSETS_URL ?>js/jquery-ui-timepicker-addon.js"></script>
<form method="post" id="tournament-add-form">
<div class="mywell"><h1>Turniiri lisamine</h1></div>
<input type="hidden" id="tournament_id" value="<?= $tournament['tournament_id'] ?>" name="tournament[tournament_id]">

<div style="clear: both; margin: 15px 0">
	<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Tagasi</a>
	<button class="btn btn-large btn-primary" type="button" onclick="submit1()">Salvesta</button>
</div>
<div id="tabs">
<ul>
	<li><a href="#tabs-1">Üldandmed</a></li>
	<li><a href="#tabs-2">Mängijate lisamine</a></li>
	<li style="display: none" name="alagrupp"><a href="#tabs-3">Alagrupp</a></li>
	<li style="display: none" name="playoff"><a href="#tabs-4">Playoff</a></li>
	<li style="display: none" name="leaderboard"><a href="#tabs-5" onclick="redo_leaderboard()">Paremusjärjestus</a></li>
</ul>

<div id="tabs-1">
	<div class="kast">
		<div class="number">1</div>
		<div class="titlebar"><h3>Turniiri üldandmed</h3>
		</div>
		<table id="tournament-attributes-table" class="table table-bordered ">
			<tbody>
			<tr>
				<th>Turniiri nimi:</th>
				<td><input id="tournament-name" onfocus="$(this).removeClass('viga')" type="text"
				           name="tournament[tournament_name]" autocomplete="off"
				           value="<?= $tournament['tournament_name'] ?>"></td>
			</tr>
			<tr>
				<th>Koht:</th>
				<td>
					<select id="tournament[place_name]" class="makeEditable" style="height: 20px; width: 207px"
					        placeholder="Koht">
						<option value=""><?= ! empty($place_name) ? $place_name : '&nbsp;' ?></option>
						<? foreach ($places as $place) : ?>
							<option value="<?= $place['place_name'] ?>"><?= $place['place_name'] ?></option>
						<? endforeach ?>
					</select>

				</td>
			</tr>
			<tr>
				<th>Turniiri algus:</th>

				<td><input type="text" id="tournament_start" class="datetimepicker" name="tournament[tournament_start]"
				           placeholder="pp.kk.aaaa hh:mm" autocomplete="off" onfocus="$(this).removeClass('viga')"
				           value="<?= $tournament['tournament_start'] ?>"></td>

			</tr>
			<tr>
				<th>Turniiri lõpp:</th>
				<td>
					<input type="text" class="datetimepicker" id="tournament_end" name="tournament[tournament_end]"
					       autocomplete="off" onfocus="$(this).removeClass('viga')" placeholder="pp.kk.aaaa hh:mm"
					       value="<?= $tournament['tournament_end'] ?>"></td>
			</tr>
			<tr>
				<th>Osaleja tüüp:</th>
				<td><input id="tournament_participant" onfocus="$(this).removeClass('viga')"
				           onblur="set_participant_type();" type="text"
				           name="tournament[tournament_participant]" autocomplete="off"
				           value="<?= $tournament['tournament_participant'] ?>"></td>
				</td>
			</tr>
			<tr>
				<th>Asutus:</th>
				<td><input id="tournament_classification" onfocus="$(this).removeClass('viga')"
				           onblur="set_unit_type();" type="text"
				           name="tournament[tournament_classification]" autocomplete="off"
				           value="<?= $tournament['tournament_classification'] ?>"></td>
			</tr>
			<tr>
				<th>Kaotajate ring:</th>
				<td><input id="loser-bracket" name="tournament[tournament_loser_bracket]" type="checkbox" value="1"
						<?= $tournament['tournament_loser_bracket'] == 1 ? 'checked="checked" value="yes"' : 'value="no"'
						?>></td>
			</tr>
			<tr>
				<th>Mängu kestvus:</th>
				<td><input id="game-length" class="spinner" min="1" maxlength="2"
				           name="tournament[tournament_game_time]" onkeypress="validate(event)"
				           onfocus="$(this).removeClass('viga')" value="<?= $tournament['tournament_game_time'] ?>"></td>
			</tr>
			<tr>
				<th>Paus:</th>
				<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_pause]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_game_pause'] ?>"></td>
			</tr>
			<tr>
				<th>Platside arv:</th>
				<td><input class="spinner" min="1" maxlength="2" name="tournament[tournament_field]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_field'] ?>"/></td>
			</tr>
			<tr>
				<th>Edasipääsejaid:</th>
				<td><input class="spinner" min="1" maxlength="2" name="tournament[tournament_win]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_win'] ?>"/></td>
			</tr>
			<tr>
				<th>Võit:</th>
				<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_win]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_game_win'] ?>"/></td>
			</tr>
			<tr>
				<th>Viik:</th>
				<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_tie]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_game_tie'] ?>"/></td>
			</tr>
			<tr>
				<th>Kaotus:</th>
				<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_loss]"
				           onkeypress="validate(event)" value="<?= $tournament['tournament_game_loss'] ?>"/></td>
			</tr>
			</tbody>
		</table>
	</div>
</div>
<div id="tabs-2">
	<div class="kast">
		<div class="number">2</div>
		<div class="titlebar"><h3>
				Osalejad
			</h3>
		</div>

		<div style="width: 250px; float:left">
			<p>Alagruppide arv:
				<input tabindex="1" class="spinner" min="1" value="<?= $tournament['tournament_group'] ?>" maxlength="2"
				       name="tournament[tournament_group]"
				       id="max_groups"
				       onkeyup="validate(event); reinit_groups();" onclick="update_participant_count()"
				       value="<?= $tournament['tournament_group'] ?>"/></p>

			<p>Võistlejaid alagrupis: <span id="participant-count"></span></p>
		</div>
		<div style="width: 200px; float:left">
			<span class="help-block">Turniiri tüübi muutmiseks lisa mängijad ja vajuta "Salvesta"</span>
		</div>
		<div style="clear: both">
			<table id="participants-table" class="table table-bordered table-striped" style="width: 472px !important;">
				<thead>
				<tr>
					<td colspan="6">
						<!-- add row begins here -->

						<input tabindex="2" type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name"
						       autocomplete="off"
						       style="height:35px; width: 150px;" onfocus="$(this).removeClass('viga')">
						<select tabindex="3" id="institute_name" class="makeEditable" style="height: 35px;"
						        placeholder="Instituut">
							<option value="">&nbsp;</option>
							<? foreach ($institutes as $institute) : ?>
								<option value="<?= $institute['institute_name'] ?>"><?= $institute['institute_name'] ?></option>
							<? endforeach ?>
						</select>
						<button tabindex="4" type="button" class="btn btn-large" onclick="add_participant_wrapper()"
						        style="margin-left:5px; float: right ">
							Lisa mängija
						</button>
						<button tabindex="4" type="button" class="btn btn-large" onclick="
							newwindow = window.open(BASE_URL+'tournaments/import/','name','height=500, width=650','resizable=no'); if (window.focus) {newwindow.focus()}
							return false;"
						        style="margin-left:5px; float: right ">
							Impordi mängijad
						</button>

						<!-- add row ends here -->

					</td>
				</tr>

				<tr>
					<th>
						#
					</th>
					<th class="tournament_participant">
					</th>
					<th class="tournament_classification">
					</th>
					<th>
						Alagrupp
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
				<? if (! empty($participants)) {
					$i = 1;
					foreach ($participants as $participant): ?>
						<tr id="existing_participant<?= $participant['participant_id'] ?>">
							<td>
								<?= $i ++ ?>
							</td>
							<td>
								<input class="input-small" id="e_participant_name"
								       value="<?= $participant['participant_name'] ?>">
							</td>
							<td>
								<?= $participant['institute_name'] ?>
							</td>
							<td>
								<?= $participant['pool_name'] ?>
							</td>
							<td>

								<input type="checkbox" id="favorite" <?if ($participant['participant_favorite'] == 1) {
									echo "checked";
								}?> >
							</td>
							<td>
								<a href="<?= BASE_URL ?>tournaments/remove_participant/<?= $participant['participant_id'] ?>"
								   onclick="if (!confirm('Oled kindel?'))return false; remove_participant
									   ('existing_participant<?= $participant['participant_id'] ?>'); return false;
									   "><i
										class="icon-trash">
							</td>
						</tr>
					<? endforeach;
				}?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="kast<? if (empty($participants)): ?> hidden <? endif ?> " id="tournament_type">
		<div class="number">3</div>
		<div class="titlebar"><h3>
				Mängu tüüp
			</h3>
		</div>
		<label class="checkbox">
			<input tabindex="5" id="alagrupp_playoff" type="radio" <?if ($tournament['tournament_type'] == 0) {
				echo "checked";
			}?> name="tournament[tournament_type]" value="0" onclick="$
			('[name=playoff]').show();$
			('[name=alagrupp]').show()
			;$('[name=leaderboard]').hide();">
			Alagrupid + playoff
		</label>
		<label class="checkbox">
			<input tabindex="6" id="alagrupp" type="radio" <?if ($tournament['tournament_type'] == 1) {
				echo "checked";
			}?> name="tournament[tournament_type]" value="1" onclick="$
			('[name=alagrupp]').show
			();$
			('[name=playoff]').hide
			();$
			('[name=leaderboard]').hide
			();$('#alagrupid_add_group').show()"> Alagrupid
		</label>
		<label class="checkbox">
			<input tabindex="7" id="playoff" type="radio" <?if ($tournament['tournament_type'] == 2) {
				echo "checked";
			}?> name="tournament[tournament_type]" value="2" onclick="$('[name=playoff]').show();$
			('[name=alagrupp]').hide
			();$
			('[name=leaderboard]').hide
			();"> Playoff
		</label>

		<label class="checkbox">
			<input tabindex="8" id="leaderboard" type="radio" <?if ($tournament['tournament_type'] == 3) {
				echo "checked";
			}?> name="tournament[tournament_type]" value="3" onclick="$
			('[name=alagrupp]').hide();
			$('[name=playoff]').hide()
			;$('[name=leaderboard]').show();">
			Paremusjärjestus
		</label>

	</div>
</div>
<div id="tabs-3">

</div>
<div id="tabs-4">

</div>
<div id="tabs-5">
	<table class="table" id="leaderboard">
		<thead>
		<tr>
			<th>#</th>
			<th>Võistleja</th>
			<th>Aeg</th>
		</tr>
		</thead>
		<tbody>

		</tbody>

	</table>
<input type="hidden" id="leaderb_input" name ="leaderboard" value='<?= $leaderboard ?>'>

</div>
<div style="clear: both; padding: 15px 0">
	<input type="hidden" id="games" name="games" value="">
	<input type="hidden" id="playoffs" name="playoffs" value="">
	<input type="hidden" id="participants" name="participants" value="">
	<input type="text" id="losers" name="losers" value="">


</div>

</form>

<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Tagasi</a>
<button tabindex="10" class="btn btn-large btn-primary" type="button" onclick="submit1()">Salvesta</button>
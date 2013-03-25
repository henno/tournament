<h2 class="form-signin-heading">Turniirid</h2>
<p><a class="btn btn-large btn-primary" href="<?=BASE_URL?>tournaments/add">Lisa uus turniir</a></p>
<table id="tournaments-table" class="table table-bordered table-striped">
	<thead>
	<tr>
		<th>
			Turniiri nimi
		</th>
		<th>
			Aasta
		</th>
		<th>
			Koht
		</th>
		<th>
			Tegevused
		</th>
	</tr>
	</thead>
	<tbody>
	<? if (! empty ($tournaments)): foreach ($tournaments as $tournament): ?>
	<tr id="tournament<?=$tournament['tournament_id'] ?>">
		<td>
			<?=$tournament['tournament_name']?>
		</td>
		<td>
			<?=substr($tournament['tournament_start'], 0, 4)?>
		</td>
		<td>
			<?=$tournament['place_name']?>
		</td>
		<td>
			<?="Vaata"?>
			<a href="<?=BASE_URL?>tournaments/view/<?=$tournament['tournament_id']?>"><i
					class="icon-pencil"></i></a>
			<a href="<?= BASE_URL ?>tournaments/remove/<?=$tournament['tournament_id']?>"
			   onclick="if (!confirm('Oled kindel?'))return false; remove_tournament_ajax
				   (<?=$tournament['tournament_id']?>); return false">Kustuta <i class="icon-trash"></i></a>
		</td>

	</tr>
		<? endforeach; endif ?>
	</tbody>
</table>
<div hidden=""></div>
<h2 class="form-signin-heading">Turniirid</h2>
<p><a class="btn btn-large btn-primary" href="<?=BASE_URL?>tournaments/add">Lisa uus turniir</a></p>
<table class="table table-bordered table-striped">
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
	<tr>
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
		</td>
	</tr>
		<? endforeach; endif ?>
	</tbody>
</table>
<div hidden=""></div>
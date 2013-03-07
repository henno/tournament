<?php
/**
 * Created by JetBrains PhpStorm.
 * User: kasutaja
 * Date: 7.03.13
 * Time: 11:42
 * To change this template use File | Settings | File Templates.
 */
class tournament
{

	function add()
	{
		$sql = "INSERT INTO tournament
				SET
					tournament_name='$_POST[tournament_name]'";
		var_dump($sql);
	}
}

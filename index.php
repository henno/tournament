<?php
/**
 * Created by JetBrains PhpStorm.
 * User: hennotaht
 * Date: 2/4/13
 * Time: 21:18
 * To change this template use File | Settings | File Templates.
 */
require 'config.php';
require 'classes/request.php';
require 'classes/auth.php';
require 'lib/database_lib.php';

if ($auth->logged_in){
	if (file_exists('pages/' . $request->controller .'/'. $request->controller . '.php')) {
		require 'pages/' . $request->controller . '/'. $request->controller .  '.php';
	} else {
		echo "The page '$request->controller' does not exist";
	}
}
else
	require 'pages/login/login.php';

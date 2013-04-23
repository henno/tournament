<?php
/**
 * Created by JetBrains PhpStorm.
 * User: hennotaht
 * Date: 2/4/13
 * Time: 21:18
 * To change this template use File | Settings | File Templates.
 */

require 'config.php';
require 'modules/request.php';
require 'modules/user.php';
require 'modules/database.php';

if (file_exists('controllers/'.$_request->controller.'.php')) {
	require 'controllers/'.$_request->controller.'.php';
	$controller = new $_request->controller;
	if (isset ($controller->requires_auth)) {
		$_user->require_auth();
	}
	$controller->{$_request->action}();
} else {
	echo "The page '{$_request->controller}' does not exist";
}
echo microtime(true) - $_SERVER["REQUEST_TIME"];



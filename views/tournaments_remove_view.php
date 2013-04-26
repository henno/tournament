<?php
ob_end_clean();
echo json_encode($result?'OK':'FAIL');
die();

?>
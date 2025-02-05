<?php

$online = ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "127.0.0.1" || $_SERVER['HTTP_HOST'] == "192.168.2.240") ? false : true;

defined('SITE_FOLDER')  ? '' : define('SITE_FOLDER', '');
defined('SITE_STR')     ? '' : define('SITE_STR', '');

if ($online) { // ONLINE SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'barpeepa_barpeepalresort');
    define('DB_PASS',   'hGs(&+fa$*E[');
    define('DB_NAME',   'barpeepa_barpeepalresort');

} else {    // LOCAL SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'root');
    define('DB_PASS',   '');
    define('DB_NAME',   'barpeepal');

}

?>

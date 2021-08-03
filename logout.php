<?php
session_start();
session_destroy();
echo'<script type="text/javascript">
                window.location.href="https://www.ddcweb.com.ar/proyectophp/index.php";</script>';
//header('location: index.php');
?>
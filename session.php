<?php
session_start();

if (empty($_SESSION['usuario'])) {
    echo'<script type="text/javascript">
                window.location.href="https://www.ddcweb.com.ar/proyectophp/index.php";</script>';
    //header('location: index.php');
    exit();
}
?>
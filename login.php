<?php
include("conexion.php");


$usuarioCorrecto = $_POST['usuario'];
$passwordCorrecto = $_POST['password'];

//PHP Version 7.3.28  
    if(empty($usuarioCorrecto) || empty($passwordCorrecto)){
        echo'<script type="text/javascript">
        window.location.href="https://www.ddcweb.com.ar/proyectophp/index.php?err";</script>'; 
        //header("Location:/index.php?err");
    } else {
        $baseUsuarios = mysqli_query($conexion, "SELECT * FROM users WHERE usuario = '$usuarioCorrecto' AND pass = '$passwordCorrecto'");
        
        if (mysqli_num_rows($baseUsuarios)==1) {
            if($row = mysqli_fetch_array($baseUsuarios)){
                session_start();
                $_SESSION['id'] = $row['id_user'];
                $_SESSION['usuario'] = $usuarioCorrecto;
                $_SESSION['imagen']= $row['imagen'];
                $_SESSION['pass'] = $passwordCorrecto;
                echo'<script type="text/javascript">
    window.location.href="https://www.ddcweb.com.ar/proyectophp/gestion.php";</script>';
               //header("Location: /gestion.php");
            }

        } else {
            //error de ingreso 
            echo'<script type="text/javascript">
        window.location.href="https://www.ddcweb.com.ar/proyectophp/index.php?err";</script>'; 
            //header("Location:/index.php?err");
        }

    }


?>


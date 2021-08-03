<?php
include("session.php");
include("conexion.php");

if (isset($_POST['guardar_cliente'])){

 $razon_social = $_POST['razon_social'];
 $cuit = $_POST['cuit'];
 $telefono = $_POST['telefono'];
 $email = $_POST['email'];

//insertar valores en tabla 
 $query = "INSERT INTO clientes(nombre, cuit, telefono, email) VALUES ('$razon_social', '$cuit', '$telefono', '$email')";
 
 //almacenar valores
 $resultado = mysqli_query($conexion, $query);  

 if(!$resultado){
     die("Query failed");
 }else{
    $_SESSION['message']= 'Cliente guardado';
    $_SESSION['message-type'] = 'success';
    echo'<script type="text/javascript">
    window.location.href="https://www.ddcweb.com.ar/proyectophp/gestion.php";</script>';
    //header('Location: gestion.php');
 }
    
    

 }





?>
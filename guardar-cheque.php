<?php
include("session.php");
include("conexion.php");

if (isset($_POST['guardar_cheque'])){
    $clientes_id = $_POST['clientes_id'];
    $numero_cheque = $_POST['cheque'];
    $razon_social = $_POST['razon_social'];
    $cuit_librador = $_POST['cuit_librador'];
    $originalDate = $_POST['vto'];
    $vencimiento = date("d-m-Y", strtotime($originalDate));
    $importe = $_POST['importe'];
    $propio = $_POST['propio'];
    $echeq = $_POST['echeq'];

   

    //insertar valores en tabla 
    $query = "INSERT INTO cheques(clientes_id, numero_cheque, nombre, cuit_librador, fecha_vto, importe, propio, echeq) VALUES ('$clientes_id', '$numero_cheque', '$razon_social', '$cuit_librador', '$vencimiento', '$importe', '$propio', '$echeq')";
    
    //almacenar valores
    $resultado = mysqli_query($conexion, $query);  

    if(!$resultado){
        die("Query failed");
    }else{
        $_SESSION['message'] = 'Cheque guardado';
        $_SESSION['message-type'] = 'success';
        echo'<script type="text/javascript">
                window.location.href="https://www.ddcweb.com.ar/proyectophp/cheques.php";</script>';
        //header('Location: cheques.php');
    }

}








?>
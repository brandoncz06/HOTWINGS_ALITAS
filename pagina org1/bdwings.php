<?php
// CONEXIÓN A LA BASE DE DATOS BDWINGS
$conexion =  new mysqli("localhost", "root", "", "bdwingsorg");
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}
$consultaAlitas = $conexion->query("SELECT * FROM t_alitas");
$consultaBebidas = $conexion->query("SELECT * FROM t_bebidas");
$consultaSnacks = $conexion->query("SELECT * FROM t_snacks");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Wings</title>
<link rel="stylesheet" href="estilo_menu.css">
  
</head>
<body>
<h1>MENU HOTWINGS ALITAS  <h1>
<h2>Alitas</h2>
<table>
<tr><th>ID</th><th>Sabor</th><th>Descripción</th><th>Precio</th></tr>
<?php while($fila = $consultaAlitas->fetch_assoc()) { ?>
<tr><td><?= $fila['Id_Ala'] ?></td><td><?= $fila['Sabor_Ala'] ?></td><td><?= $fila['Descripción_Ala'] ?></td><td>$<?= number_format($fila['Precio_Ala'], 2) ?></td></tr>
<?php } ?>
</table>

<h2> Bebidas</h2>
<table>
<tr><th>ID</th><th>Nombre</th><th>Descripción</th><th>Precio</th></tr>
<?php while($fila = $consultaBebidas->fetch_assoc()) { ?>
<tr><td><?= $fila['Id_Bebida'] ?></td><td><?= $fila['Nombre_Sabor_Beb'] ?></td><td><?= $fila['Descripción_Beb'] ?></td><td>$<?= number_format($fila['Precio_Beb'], 2) ?></td></tr>
<?php } ?>
</table>

<h2> Snacks</h2>
<table>
<tr><th>ID</th><th>Nombre</th><th>Descripción</th><th>Precio</th></tr>
<?php while($fila = $consultaSnacks->fetch_assoc()) { ?>
<tr><td><?= $fila['Id_Snack'] ?></td><td><?= $fila['Nombre_Sabor_Sn'] ?></td><td><?= $fila['Descripción_Sn'] ?></td><td>$<?= number_format($fila['Precio_Sn'], 2) ?></td></tr>
<?php } ?>
</table>

<div class=contenedor>
<a href="indexcarrito.html" class="btn-1">REALIZAR PEDIDO </a>
</div>
</body>
</html>
<?php $conexion->close();
 ?>

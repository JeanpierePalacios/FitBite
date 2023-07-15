<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

session_start();
include "connection.php";

$conn = mysqli_connect($servername, $username, $password, $database);

// Verificar la conexión
if (!$conn) {
    die("Error al conectar con la base de datos: " . mysqli_connect_error());
}

// Utiliza sentencias preparadas para evitar problemas de seguridad
$stmt = $conn->prepare(
"SELECT c.nomComida FROM comidas c
INNER JOIN relacion r ON c.idComida = r.idComida
LEFT JOIN fruta F on r.idFruta = f.idFruta
LEFT JOIN verduras V on r.idVerduras = v.idVerduras
WHERE f.nomFruta = ? OR v.nomVerduras = ?");
$stmt->bind_param("ss", $etiqueta, $etiqueta);
$stmt->execute();
$result = $stmt->get_result();

// Crea un array para almacenar los resultados
$comidas = array();

// Obtén cada fila de resultados y agrégala al array
while ($row = $result->fetch_assoc()) {
    $comidas[] = $row;
}

// Cierra la conexión y devuelve los resultados en formato JSON
$stmt->close();
$conn->close();

echo json_encode($comidas);
?>

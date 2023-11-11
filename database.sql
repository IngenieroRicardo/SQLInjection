CREATE DATABASE IF NOT EXISTS chat;

USE chat;

CREATE TABLE IF NOT EXISTS mensajeria(
idmensajeria BIGINT NOT NULL AUTO_INCREMENT,
usuarios VARCHAR(100) NOT NULL,
mensajes LONGTEXT NOT NULL,
PRIMARY KEY(idmensajeria)
);

DROP PROCEDURE IF EXISTS insertar;
DELIMITER //
CREATE PROCEDURE insertar(usuario VARCHAR(100), mensaje LONGTEXT)
BEGIN
	INSERT INTO mensajeria(usuarios, mensajes)
	VALUES(usuario,mensaje);
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS mostrar;
DELIMITER //
CREATE PROCEDURE mostrar()
BEGIN
	SELECT usuarios, mensajes FROM mensajeria
	ORDER BY idmensajeria DESC
	LIMIT 0, 5;
END//
DELIMITER ;


CREATE DATABASE IF NOT EXISTS ApiRest;

USE ApiRest;

CREATE TABLE IF NOT EXISTS credenciales(usuarios VARCHAR(100) NOT NULL, passwords VARCHAR(100) NOT NULL)
SELECT uniones.usuarios, uniones.passwords FROM
((SELECT 'Admin' AS usuarios, '123456' AS passwords) UNION ALL (SELECT 'Invitado' AS usuarios, '654321' AS passwords)) AS uniones;

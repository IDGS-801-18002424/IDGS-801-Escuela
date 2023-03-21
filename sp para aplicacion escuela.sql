USE idgs803;

SELECT * FROM idgs803.maestros;

DELIMITER //
CREATE PROCEDURE maestroLST (IN IdMaestro INT)
BEGIN
	SELECT * FROM idgs803.maestros WHERE id = COALESCE(IdMaestro,id);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE maestroUPD (IN IdMaestro INT,IN Vnombre VARCHAR(50),IN Vapellidos VARCHAR(50),IN Vemail VARCHAR(50))
BEGIN
	
	INSERT INTO idgs803.maestros (
	  id, nombre, apellidos, email, created_at
	) VALUES (
	  IdMaestro,Vnombre,Vapellidos,Vemail, now()
	) ON DUPLICATE KEY UPDATE
	  -- id=VALUES(id)
	  nombre=VALUES(nombre)
	, apellidos=VALUES(apellidos)
	, email=VALUES(email);
 
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE maestroDEL (IN IdMaestro INT)
BEGIN
	DELETE FROM idgs803.maestros WHERE id = IdMaestro;
END //
DELIMITER ;

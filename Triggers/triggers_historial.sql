DELIMITER //

CREATE TRIGGER registro_contrato
AFTER INSERT ON contratos
FOR EACH ROW
BEGIN
   INSERT INTO historial(descripcion)
   VALUES('Nuevo contrato creado');
END//

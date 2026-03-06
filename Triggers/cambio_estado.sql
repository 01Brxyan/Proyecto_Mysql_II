DELIMITER //

CREATE TRIGGER cambio_estado_propiedad
AFTER UPDATE ON propiedades
FOR EACH ROW
BEGIN
    IF OLD.estado <> NEW.estado THEN
        INSERT INTO historial(descripcion)
        VALUES (
            CONCAT(
                'Cambio de estado de propiedad ID ',
                NEW.id_propiedad,
                ': ',
                OLD.estado,
                ' -> ',
                NEW.estado
            )
        );
    END IF;
END //
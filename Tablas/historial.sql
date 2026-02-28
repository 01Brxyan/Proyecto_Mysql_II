CREATE TABLE historial_propiedades (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_propiedad INT,
    estado_anterior VARCHAR(50),
    estado_nuevo VARCHAR(50),
    fecha_cambio DATETIME,
    FOREIGN KEY (id_propiedad) REFERENCES propiedades(id_propiedad)
);
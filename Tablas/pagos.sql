CREATE TABLE pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_contrato INT,
    fecha_pago DATE,
    monto DECIMAL(12,2),
    estado_pago VARCHAR(50),
    FOREIGN KEY (id_contrato) REFERENCES contratos(id_contrato)
);
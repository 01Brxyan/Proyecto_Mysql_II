CREATE USER 'agente'@'localhost'
IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE
ON inmobiliaria.*
TO 'agente'@'localhost';

FLUSH PRIVILEGES;
\c padeldb

INSERT INTO usuario (id, username, "password", nombre, apellidos, fechaalta, fechabaja, saldo, socio) VALUES(1, 'cdiez', '123', 'Carlos', 'Díez Manjón', '2021-06-15', NULL, 50.00, true);
INSERT INTO usuario (id, username, "password", nombre, apellidos, fechaalta, fechabaja, saldo, socio) VALUES(2, 'dtapu', '123', 'Diana', 'Tapu', '2021-06-15', NULL, 50.00, true);
INSERT INTO usuario (id, username, "password", nombre, apellidos, fechaalta, fechabaja, saldo, socio) VALUES(3, 'rmartinez', '123', 'Roman', 'Martínez Ruiz', '2021-06-15', NULL, 50.00, true);
INSERT INTO usuario (id, username, "password", nombre, apellidos, fechaalta, fechabaja, saldo, socio) VALUES(4, 'jcorujo', '123', 'Jorge ', 'Corujo Díaz', '2021-06-15', NULL, 50.00, true);


INSERT INTO pista (id, nombre, ubicacion) VALUES(1, 'Pista 1 Sanjo', 'Centro deportivo Sanjo  2.1');
INSERT INTO pista (id, nombre, ubicacion) VALUES(2, 'Pista 2 Sanjo', 'Centro deportivo Sanjo  2.1');
INSERT INTO pista (id, nombre, ubicacion) VALUES(3, 'Pista 1 Poli', 'Polígono La Vega');
INSERT INTO pista (id, nombre, ubicacion) VALUES(4, 'Pista 2 Poli', 'Polígono La Vega');

INSERT INTO tarifa (id, nombre, preciohora) VALUES(1, 'Socio-Mañana', 7.00);
INSERT INTO tarifa (id, nombre, preciohora) VALUES(2, 'Socio-Tarde', 8.00);
INSERT INTO tarifa (id, nombre, preciohora) VALUES(3, 'No Socio-Mañana', 10.00);
INSERT INTO tarifa (id, nombre, preciohora) VALUES(4, 'No Socio-Tarde', 11.00);


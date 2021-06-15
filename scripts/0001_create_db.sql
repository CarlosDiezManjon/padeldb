\c padeldb

DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Pista;
DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Tarifa;


CREATE TABLE Usuario (
id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL PRIMARY KEY,
username VARCHAR(40) NOT NULL UNIQUE,
password VARCHAR(20) NOT NULL,
nombre VARCHAR(30) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
fechaAlta DATE NOT NULL,
fechaBaja DATE,
Saldo NUMERIC(12, 3) NOT NULL DEFAULT 0,
socio BOOLEAN NOT NULL);

CREATE TABLE Pista (
id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
ubicacion VARCHAR(200) NOT NULL);

CREATE TABLE Reserva (
id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL PRIMARY KEY,
fechaHoraInicio TIMESTAMP NOT NULL,
fechaHoraFin TIMESTAMP NOT NULL,
importe MONEY NOT NULL,
id_tarifa INTEGER NOT NULL,
id_usuario BIGINT NOT NULL,
id_pista INTEGER NOT NULL);

CREATE TABLE Tarifa (
id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL UNIQUE,
precioHora NUMERIC(12, 3) NOT NULL);

ALTER TABLE Reserva ADD CONSTRAINT Reserva_id_tarifa_Tarifa_id FOREIGN KEY (id_tarifa) REFERENCES Tarifa(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Reserva ADD CONSTRAINT Reserva_id_usuario_Usuario_id FOREIGN KEY (id_usuario) REFERENCES Usuario(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Reserva ADD CONSTRAINT Reserva_id_pista_Pista_id FOREIGN KEY (id_pista) REFERENCES Pista(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
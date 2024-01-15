-- Active: 1705009405041@@127.0.0.1@3306@henry
CREATE DATABASE Siniestros;

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE 'secure_file_priv';


use Siniestros;
DROP TABLE hechos;
CREATE TABLE Hechos (
    Id VARCHAR(10) PRIMARY KEY,
    Fecha DATE,
    Año INT,
    Mes INT,
    Día INT,
    Día_Semana VARCHAR(20),
    Hora_completa VARCHAR(20),
    Hora INT,
    Numero_víctimas INT,
    Participantes VARCHAR(20),
    Rol VARCHAR(20),
    Acusado VARCHAR(20),
    Victima VARCHAR(20),
    Sexo VARCHAR(20),
    Edad INT,
    Rango_etario VARCHAR(50),
    Fecha_fallecimiento VARCHAR(50),
    Lugar_del_hecho VARCHAR(200),
    Tipo_de_calle VARCHAR(200),
    Calle VARCHAR(200),
    Cruce VARCHAR(255)  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    Dirección_normalizada VARCHAR(255)  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    Comuna INT,
    Barrios VARCHAR(200),
    Coordenada_x VARCHAR(50),
    Coordenada_y VARCHAR(50),
    Pos_x VARCHAR(50),
    Pos_y VARCHAR(50),
    Semestre VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOAD DATA local INFILE 'C:\\Users\\belen\\OneDrive\\Escritorio\\PI-DA\\Data\\Siniestro_viales_limpio.csv' INTO TABLE Hechos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

SELECT * from Hechos;




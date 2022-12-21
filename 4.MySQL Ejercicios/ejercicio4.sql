-- Crear la Base de Datos.
create database ejercicio4
charset utf8mb4
collate utf8mb4_spanish2_ci;

-- Activar la Base de Datos.
use ejercicio4;

-- Crear la tabla 'Asignaturas'.
CREATE TABLE asignaturas (
    idAsignatura INT AUTO_INCREMENT,
    nombreAsignatura VARCHAR(45),
    PRIMARY KEY (idAsignatura)
);

-- Crear la tabla 'Temas'.
CREATE TABLE temas (
    idTema INT AUTO_INCREMENT,
    numeroTema INT,
    descripcionTema VARCHAR(45),
    idAsignaturaFK INT,
    PRIMARY KEY (idTema),
    FOREIGN KEY (idAsignaturaFK)
        REFERENCES asignaturas (idAsignatura)
);

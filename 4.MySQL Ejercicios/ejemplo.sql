-- Crear la Base de Datos:
create database ejemplo
character set utf8mb4
collate utf8mb4_spanish2_ci;

-- Activar la Base de Datos:
use ejemplo;

-- Crear las tablas:
CREATE TABLE departamentos (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nombreDepartamento VARCHAR(15),
    ciudadDepartamento VARCHAR(15)
);

CREATE TABLE empleados (
    idEmpleado INT PRIMARY KEY,
    nombreEmpleado VARCHAR(20),
    puestoEmpleado VARCHAR(15),
    fechaAltaEmpleado DATE,
    salarioEmpleado DECIMAL(10 , 2 ),
    comisionEmpleado INT,
    idDepartamentoFK INT,
    FOREIGN KEY (idDepartamentoFK)
        REFERENCES departamentos (idDepartamento)
);

-- Modificar la estructura de la Base de Datos:
alter table empleados add telefonoEmpleado int not null;
alter table empleados add emailEmpleado varchar(100) after comisionEmpleado;
alter table empleados change emailEmpleado correoElectronicoEmpleado varchar(100);

-- Insertar los datos:
insert into departamentos
value(null, 'Contabilidad', 'Cádiz');

insert into departamentos
value(null, 'Informática', 'Sevilla'),
(null, 'Finanzas', 'Málaga');

-- CRUD: Create, Read, Update, Delete
-- Create sería con el Insert
-- Read sería con el  Select
-- Update sería con el update, set y where
-- > Si no ponemos where, cambiaríamos el nombre a todo.
-- Delete sería con delete from y con where. 
-- > Si no ponemos where, borraríamos todo.

Update departamentos
set nombreDepartamento = 'Marketing'
where idDepartamento = 4;

delete from departamentos
where idDepartamento = 4;

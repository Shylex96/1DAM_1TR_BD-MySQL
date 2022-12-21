use prueba;
CREATE TABLE clientes (
    idCliente INT AUTO_INCREMENT,
    nombreCliente VARCHAR(45),
    apellidosCliente VARCHAR(45),
    telefonoCliente VARCHAR(9),
    PRIMARY KEY (idCliente)
);

CREATE TABLE facturas (
    idFactura INT AUTO_INCREMENT,
    fechaFactura DATE,
    idClienteFK INT,
    PRIMARY KEY (idFactura),
    FOREIGN KEY (idClienteFK)
        REFERENCES clientes (idCliente)
);

CREATE TABLE empleados (
    idEmpleado INT AUTO_INCREMENT,
    nombreEmpleado VARCHAR(45),
    apellidosEmpleado VARCHAR(45),
    idEmpleadoJefeFK INT,
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idEmpleadoJefeFK)
        REFERENCES empleados (idEmpleado)
);

CREATE TABLE alumnos (
    idAlumno INT AUTO_INCREMENT,
    nombreAlumno VARCHAR(45),
    apellidosAlumno VARCHAR(45),
    idAlumnoDelegadoFK INT,
    PRIMARY KEY (idAlumno)
);

-- ALTER table alumnos add name
-- ALTER table alumnos delete name
-- ALTER table alumnos change name

alter table alumnos add
foreign key(idAlumnoDelegadoFK) references alumnos(idAlumno);
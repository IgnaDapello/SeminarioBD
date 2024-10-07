CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nombreUsuario VARCHAR(50),
    contrasena VARCHAR(255),
    rol ENUM('Administrador', 'Técnico', 'Capturista')
);

CREATE TABLE Paciente (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Tratamiento (
    idTratamiento INT PRIMARY KEY AUTO_INCREMENT,
    descripcion TEXT,
    estado ENUM('Registrado', 'En Proceso', 'Completado', 'Cancelado'),
    idPaciente INT,
    idTecnico INT,
    FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente),
    FOREIGN KEY (idTecnico) REFERENCES Usuario(idUsuario)
);

CREATE TABLE Reporte (
    idReporte INT PRIMARY KEY AUTO_INCREMENT,
    fechaGeneracion DATE,
    contenido TEXT,
    idAdministrador INT,
    FOREIGN KEY (idAdministrador) REFERENCES Usuario(idUsuario)
);

CREATE TABLE Backup (
    idBackup INT PRIMARY KEY AUTO_INCREMENT,
    fechaBackup DATE,
    rutaArchivo VARCHAR(255),
    idAdministrador INT,
    FOREIGN KEY (idAdministrador) REFERENCES Usuario(idUsuario)
);

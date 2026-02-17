CREATE DATABASE IF NOT EXISTS Alpha_Fitness;
USE Alpha_Fitness;

CREATE TABLE Instructores (
    ID_Instructores varchar(10) PRIMARY KEY,
    Nombre_Ins varchar(100),
    Apellidos_Ins varchar(100)
);

CREATE TABLE Catalogo_de_clases (
    ID_Clases INT PRIMARY KEY,
    Clase_Inscrita varchar(100),
    Tarifa_Mensual decimal(10,2)
);

CREATE TABLE Socios (
    ID_Socio INT PRIMARY KEY,
    Nombres_Socio varchar(100),
    Apellidos_Socio varchar(100),
    Telefono varchar(20)
)

CREATE TABLE Asignacion_Clases (
    ID_REGISTRO INT PRIMARY KEY AUTO_INCREMENT,
    ID_Socio INT,
    ID_Instructor varchar(10),
    FOREIGN KEY (ID_Socio) REFERENCES Socios(ID_Socio),
    FOREIGN KEY (ID_Clases) REFERENCES Catalogo_de_Clases(ID_Clases),
    FOREIGN KEY (ID_Instructores) REFERENCES Instructores(ID_Instructores)

)
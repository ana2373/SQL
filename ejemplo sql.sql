CREATE DATABASE IF NOT EXISTS Supermercado;
USE Supermercado;

-- Tabla independiente: Clientes
CREATE TABLE Clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(150),
telefono VARCHAR(20)
);

-- Tabla independiente: Productos
CREATE TABLE Productos (
id_producto INT PRIMARY KEY AUTO_INCREMENT,
nombre_producto VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
stock INT NOT NULL
);
---

-- Tabla dependiente: Facturas
CREATE TABLE Facturas (

id_factura INT PRIMARY KEY AUTO_INCREMENT,
fecha DATE NOT NULL,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL,
total DECIMAL(10,2),

-- Constraints de llave foránea

CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
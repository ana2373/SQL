-- crear la base de datos
create database if not exists letras_abiertas;
use letras_abiertas;
-- tabla independiente
create table editores;
CREATE TABLE autor (
  autor_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) not null,
  correo varchar(100) not null,
  cargo varchar(100) not null
);
create table publicacion(
publicacion_id int auto_increment primary key,
titulo varchar(200) not null,
fecha_publicacion varchar(100) not null,
numero_paginas int 
); 
CREATE TABLE editor (
  editor_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) not null,
  correo varchar(100) not null,
  cargo varchar(100) not null
);
create table libros(
libros_id int auto_increment primary key,
titulo varchar(250) not null,
numero_edicion int not null,
ISBN int not null,
tipo_formato varchar(250) not null
);
create table coleccion (
coleccion_id int auto_increment primary key,
nombre varchar (150) not null,
descripcion varchar (250) not null ,
año_creacion int not null 
);
create table volumenes (
volumen_id int auto_increment primary key,
numero_edicion int not null,
año date
);
create table revistas (
revistas_id int auto_increment primary key ,
nombre va
);


CREATE DATABASE PRIMER_CRUD
GO

USE PRIMER_CRUD
GO


CREATE TABLE cliente (
id int identity (1,1) primary key not null,
nombre1 nvarchar (20) not null,
nombre2 nvarchar (20),
apellido1 nvarchar (40) not null,
apellido2 nvarchar (40) not null,
telefono nvarchar (9) not null
)
go


CREATE TABLE direccion_cliente (
id int identity (1,1) primary key not null,
tipo nvarchar(20),
direccion1 nvarchar (max) not null,
direccion2 nvarchar (max),
clienteId int foreign key references cliente(id) not null
)
go




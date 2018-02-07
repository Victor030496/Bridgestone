CREATE DATABASE Bridgestone;
use Bridgestone;


create table Usuario (
  id varchar(20) not null primary key,
  clave varchar(20),
  tipo integer
);


create table Trabajador (
 id  varchar(20) not null primary key,
 clave varchar(20),
 tipo integer,
 identificacion varchar(30),
 nombre varchar(30),
 apellido varchar(30),
 telefono varchar(30),
 correo varchar(30)
);

alter table Trabajador
  add constraint foreign key (id) references  Usuario (id) on update cascade;


create table Contrato(
   
   codigoContrato varchar(15),
   fechaInicio Date,
   fechaVencimiento Date,
   estado integer,
   constraint PK_Contrato primary key(codigoContrato)
);


create table Comprobante(

   numeroDeComprobante varchar(15),
   constraint PK_Activo primary key(numeroDeComprobante)

);


create table Activo(

	numeroDeSerie varchar(15),
	fechaDeEntrada Date,
	descripción varchar(20),
	codigoContratoLeasing varchar(10),
	numeroComprobante varchar(15),
	constraint PK_Activo primary key(numeroDeSerie)
);

ALTER TABLE Activo ADD Foreign Key (codigoContratoLeasing) REFERENCES Contrato(codigoContrato) on update cascade;
ALTER TABLE Activo ADD Foreign Key (numeroComprobante) REFERENCES Comprobante(numeroDeComprobante)  on update cascade;







  
  insert into Usuario (id,clave,tipo) values ('LuisO19','LuisO19', 2);
  insert into Usuario (id,clave,tipo) values ('1','1', 2);
  
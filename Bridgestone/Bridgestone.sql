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

create table Persona(
   id  varchar(20) not null primary key,
   nombre varchar(30),
   apellido varchar(30),
   telefono varchar(30),
   correo varchar(30)


);




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


create table Equipo(
  idEquipo integer auto_increment,
  contrato varchar(15) ,
  comprobante varchar(15) ,
  marca varchar(20),
  modelo varchar(20),
  memoria varchar(20),
  procesador varchar(20),
  departamento varchar(30),
  usuario varchar(20),
  descripcion varchar(40),
  estado varchar(15),
 PRIMARY KEY (idEquipo)

);

alter table Equipo
  add constraint foreign key (contrato) references Contrato (codigoContrato) on update cascade;


alter table Equipo
  add constraint foreign key (comprobante) references Comprobante(numeroDeComprobante) on update cascade;

alter table Equipo
  add constraint foreign key (usuario) references Persona(id) on update cascade;

  
  insert into Usuario (id,clave,tipo) values ('LuisO19','LuisO19', 2);
  insert into Usuario (id,clave,tipo) values ('1','1', 2);
  

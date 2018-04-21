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
   garantia Date,
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



create table Prestamo(
  id integer auto_increment,
  id_Persona varchar(15) ,
  id_equi integer ,
  departamento varchar(15),
  fechaInicio Date,
  fechaDevolucion Date,
  comentario varchar(40),
 PRIMARY KEY (id)

);


alter table Prestamo
  add constraint foreign key (id_Persona) references Persona (id) on update cascade;


alter table Prestamo
  add constraint foreign key (id_equi) references Equipo(idEquipo) on update cascade;
  
  
  create table Devolucion(
  id integer auto_increment,
  id_Prestamo integer,
  comentario varchar(40),
  id_Persona varchar(15) ,
  id_equi integer ,
 PRIMARY KEY (id)

);


alter table Devolucion
  add constraint foreign key (id_Prestamo) references Prestamo(id) on update cascade;
  
  
  alter table Devolucion
  add constraint foreign key (id_Persona) references Persona (id) on update cascade;


alter table Devolucion
  add constraint foreign key (id_equi) references Equipo(idEquipo) on update cascade;
  
  
  
 create table DarDeBaja(
   id integer auto_increment,
   comentario varchar(40),
   id_equi integer ,
 PRIMARY KEY (id)

);


alter table DarDeBaja
  add constraint foreign key (id_equi) references Equipo(idEquipo) on update cascade;

  
  
  insert into Usuario (id,clave,tipo) values ('LuisO19','LuisO19', 2);
  insert into Usuario (id,clave,tipo) values ('1','1', 2);
  insert into Persona (id,nombre,apellido,telefono,correo) values ('2323111','Juan','Castro','323243','a@gmail.com');
  /*insert into Equipo ()values ();*/
  /*insert into Prestamo (id,id_Persona,id_equi,departamento,fechaInicio,fechaDevolucion,comentario) values (4,'2323111',2,'Finzanzas','2018-05-03','2018-02-03','Noone');
  */

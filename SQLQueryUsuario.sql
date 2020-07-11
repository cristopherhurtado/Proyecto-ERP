create table perfiles
(
cod_perfil int not null constraint pk_cod_ciudad primary  key,
nom_perfil varchar(30) not null,
)


create table usuario
(
codigo char(12) not null constraint pk_codigo primary  key,
nombre varchar(30) not null,
password varchar(15) not null,
perfil int not null constraint fk_perfiles references perfiles(cod_perfil),
)

insert into perfiles values(0, 'Seleccione')
insert into perfiles values(1, 'Administrador')
insert into perfiles values(2, 'Supervisor')
insert into perfiles values(3, 'Digitador')


insert into usuario values('15333777-1', 'ariela', cast('123456' As varbinary(max)), 1)
insert into usuario values('13999777-2', 'samantha', cast('123456' As varbinary(max)), 2)
insert into usuario values('11555111-3', 'julieta', cast('123456' As varbinary(max)), 3)

create table previsiones
(
cod_prevision int not null constraint pk_cod_prevision primary  key,
nom_prevision varchar(20) not null,
)

create table registros
(
rut varchar(12) not null primary  key,
nombre varchar(30) not null,
apellido1 varchar(30) not null,
apellido2 varchar(30) not null,
fecha_nacimiento datetime null,
estado_civil varchar(30) not null,
nacionalidad varchar(30) not null,
calle varchar(30) not null,
casa varchar(15) not null,
comuna varchar(30) not null,
ciudad varchar(30) not null,
afp varchar(15) not null,
telefono varchar(15) not null,
email varchar(30) not null,
sueldo_base varchar(15) not null,
movilizacion varchar(15) not null,
colacion varchar(15) not null,
asistencia varchar(15) not null,
bono varchar(15) not null,
tipo_contrato varchar(30) not null,
fecha_ing datetime not null,
cargo varchar(30) not null,
area varchar(30) not null,
caja_compensacion varchar(30) not null,
mutualidad varchar(30) not null,
salud int not null constraint fk_prevision references previsiones(cod_prevision),
)


select * from previsiones;
insert into previsiones values('2', 'Isapre');
select * from registros;
insert into registros values('15886882-2', 'Cristopher', 'Hurtado','Gonzalez', '1985-05-15', 'Casado', 'Chilena', 'Varas Mena', '192', 'San Joaquin', 'Santiago', 'Habitat', '986839592', 'cristopherhurtado@gmail.com','500000', '40000','40000','40000','50000','Full time','2015-03-06','Supervisor','Higiene','Los Andes', 'Mutual', '1');
create table perfiles
(
cod_perfil int not null constraint pk_cod_perfil primary  key,
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


insert into usuario values('15333777-1', 'ariela', '123456', 1)
insert into usuario values('13999777-2', 'samantha', '123456', 2)
insert into usuario values('11555111-3', 'julieta', '123456', 3)

select * from perfiles 
select * from usuario


create table previsiones
(
cod_prevision int not null constraint pk_cod_prevision primary  key,
nom_prevision varchar(30) not null,
)

create table registros
(
codigo varchar(12) not null primary  key,
nombre varchar(30) not null,
apellido1 varchar(30) not null,
apellido2 varchar(30) not null,
fecha_nac datetime not null,
estado_civil varchar(30) not null,
nacionalidad varchar(30) not null,
calle varchar(30) not null,
casa varchar(30) not null,
comuna varchar(30) not null,
ciudad varchar(30) not null,
afp varchar(30) not null,
telefono varchar(30) not null,
email varchar(60) not null,
sueldo_base varchar(30) not null,
movilizacion varchar(30) not null,
colacion varchar(30) not null,
asistencia varchar(30) not null,
bono varchar(30) not null,
tipo_contrato varchar(30) not null,
fecha_ing datetime not null,
cargo varchar(30) not null,
area varchar(30) not null,
caja_compensacion varchar(30) not null,
mutualidad varchar(30) not null,
prevision int not null constraint fk_previsiones references previsiones(cod_prevision),
)

insert into previsiones values(0, 'Seleccione')
insert into previsiones values(1, 'Fonasa')
insert into previsiones values(2, 'Isapre')

select * from previsiones
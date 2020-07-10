create table perfiles
(
cod_perfil int not null constraint pk_cod_ciudad primary  key,
nom_perfil varchar(30) not null,
)


create table usuario
(
codigo char(12) not null constraint pk_rut primary  key,
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

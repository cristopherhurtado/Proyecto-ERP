CREATE TABLE usuarios (
codigo varchar(100) NOT NULL PRIMARY KEY,
nombre varchar(200) NOT NULL,
perfil varchar(200) NOT NULL,
password varchar(250) NOT NULL
);

CREATE TABLE registros (
rut varchar(100) NOT NULL PRIMARY KEY,
nombre varchar(150) NOT NULL,
apellido1 varchar(150) NOT NULL,
apellido2 varchar(150) NOT NULL,
fecha_nacimiento DATETIME NOT NULL, 
estado_civil varchar(100) NOT NULL,
nacionalidad varchar(100) NOT NULL,
calle_avenida varchar(150) NOT NULL,
casa_depto varchar(100) NOT NULL,
comuna varchar(100) NOT NULL,
ciudad varchar(100) NOT NULL,
fonasa_isapre varchar(100) NOT NULL,
afp varchar(100) NOT NULL,
telefono varchar(100) NOT NULL,
email varchar(150) NOT NULL,
sueldo_base varchar(60) NOT NULL,
bono_movilizacion varchar(60) NOT NULL,
bono_colacion varchar(60) NOT NULL,
bono_asistencia varchar(60) NOT NULL,
bono  DATETIME DEFAULT GetDate() NOT NULL,
fecha_ingreso varchar(60) NOT NULL,
cargo varchar(60) NOT NULL,
area varchar(60) NOT NULL,
tipo_contrato varchar(100) NOT NULL,
caja_compensacion varchar(150) NOT NULL,
mutualidad varchar(150) NOT NULL
);


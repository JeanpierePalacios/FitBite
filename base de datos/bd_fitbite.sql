drop database fitbite;
create database fitbite;
use fitbite;

create table registro(
 idUser int auto_increment,
 correoUser varchar(150) not null,
 passUser varchar(12) not null,
 confirmPassUser varchar(12) not null,
 fechaNacimiento DATE not null,
 cellUser INT(12) not null,
 primary key(idUser),
 unique(correoUser)
) ENGINE=INNODB;

INSERT INTO registro(correoUser, passUser, confirmPassUser, fechaNacimiento, cellUser)	
VALUES('jeanpiere.palacios@gmail.com', '980518', '980518', '2001/02/04', 971791500);

create table fruta(
idFruta int auto_increment,
nomFruta varchar(50) not null,
descFruta text not null,
imgFruta longblob not null,
primary key(idFruta),
unique(nomFruta)
) ENGINE=INNODB;

create table verduras(
idVerduras int auto_increment,
nomVerduras varchar(50) not null,
descVerduras text not null,
imgVerduras longblob not null,
primary key(idVerduras),
unique(nomVerduras)
) ENGINE=INNODB;

create table comidas(
idComida int auto_increment,
nomComida varchar(50) not null,
descComida text not null,
imgComida longblob not null,
calComida double not null,
protComida double not null,
carbComida double not null,
graComida double not null,
primary key(idComida),
unique(nomComida)
) ENGINE=INNODB;

create table relacion(
idRelacion int auto_increment,
idFruta int not null,
idVerduras int not null,
idComida int not null,
primary key(idRelacion),
CONSTRAINT FK_idFruta FOREIGN KEY(idFruta) REFERENCES fruta(idFruta),
CONSTRAINT FK_idComida FOREIGN KEY(idComida) REFERENCES comidas(idComida),
CONSTRAINT FK_idVerduras FOREIGN KEY(idVerduras) REFERENCES verduras(idVerduras)
) ENGINE=INNODB;

SELECT idUser FROM registro;
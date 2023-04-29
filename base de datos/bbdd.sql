CREATE TABLE `especialidades` (
  `idespecialidades` int NOT NULL AUTO_INCREMENT,
  `nombreespecialidad` varchar(45) NOT NULL,
  `imagenespecialidad` varchar(200) NOT NULL,
  PRIMARY KEY (`idespecialidades`)
) ENGINE=InnoDB AUTO_INCREMENT=5;

LOCK TABLES `especialidades` WRITE;

INSERT INTO `especialidades` VALUES (1,'Psicología Clinica y de la Salud','especialidad1.png'),(2,'Psicologia Educacional','especialidad2.png'),(3,'Psicologia Social Comunitaria','especialidad3.png'),(4,'Psicologia Organizacional','especialidad4.png');

UNLOCK TABLES;

CREATE TABLE `eventosypromociones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreventosypromociones` varchar(120) NOT NULL,
  `enlacemeet` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5;

LOCK TABLES `eventosypromociones` WRITE;

INSERT INTO `eventosypromociones` VALUES (1,'¿Cuándo la ansiedad se convierte en un problema?','https://meet.google.com/kvv-vsrm-mac'),(2,'Conferencia Primer Aniversiario Sanar','https://meet.google.com/ygs-oipw-aup'),(3,'Talleres gratuitos Mi salud es Primero 2.0.','https://meet.google.com/pvj-utnb-ckn'),(4,'La Salud Mental en el ámbito laboral ¿Estamos preparados?','https://meet.google.com/mvf-vryz-cpw');

UNLOCK TABLES;

CREATE TABLE `paciente` (
  `documento_paciente` varchar(20) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `nombre_paciente` varchar(45) NOT NULL,
  `apellido_paciente` varchar(45) NOT NULL,
  `fecha_nacimiento_paciente` date NOT NULL,
  `telefono_paciente` varchar(15) NOT NULL,
  `correo_paciente` varchar(45) NOT NULL,
  `password_paciente` varchar(200) NOT NULL,
  `imagen_paciente` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`documento_paciente`),
  UNIQUE KEY `idpsicologos_UNIQUE` (`documento_paciente`)
) ENGINE=InnoDB;

LOCK TABLES `paciente` WRITE;

INSERT INTO `paciente` VALUES ('73518914','DNI','Felix Fernandez','Gustavo Alania','1999-05-24','51975602085','gustavoalan@unmsm.edu.pe','$2y$12$AJUH9o1pgXKO2eLIEqosG.XFzFH6xuq2aYVHF335y9xbsYL0ANJdS',NULL);

UNLOCK TABLES;

CREATE TABLE `proximoseventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreproximoseventos` varchar(120) NOT NULL,
  `enlacemeet` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5;

LOCK TABLES `proximoseventos` WRITE;

INSERT INTO `proximoseventos` VALUES (1,'La violencia sexual en el Perú','https://meet.google.com/kvv-vsrm-mac'),(2,'Límites sanos: Aprender a decir que no','https://meet.google.com/ygs-oipw-aup'),(3,'La importancia de las iniciativas sociales en salud mental','https://meet.google.com/pvj-utnb-ckn'),(4,'Mural por las Juventudes','https://meet.google.com/mvf-vryz-cpw');

UNLOCK TABLES;

CREATE TABLE `psicologo` (
  `documento_psicologo` varchar(20) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `nombre_psicologo` varchar(45) NOT NULL,
  `apellido_psicologo` varchar(45) NOT NULL,
  `fecha_nacimiento_psicologo` date NOT NULL,
  `telefono_psicologo` varchar(15) NOT NULL,
  `correo_psicologo` varchar(45) NOT NULL,
  `password_psicologo` varchar(200) NOT NULL,
  `imagen_psicologo` varchar(200) NOT NULL,
  PRIMARY KEY (`documento_psicologo`),
  UNIQUE KEY `idpsicologos_UNIQUE` (`documento_psicologo`)
) ENGINE=InnoDB;

LOCK TABLES `psicologo` WRITE;

INSERT INTO `psicologo` VALUES ('0105021','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-10','999854582','eduardojaureguir@gmail.com','$2y$12$ECn62cDSdKbhSTyPW48GIe7WKJ7K0FDDpMzKHHogCr31wOcxrtXOi','foto'),('02155052054','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-12','999854582','eduardojaureguir@gmail.com','pass','foto'),('105510122516','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-13','999854582','eduardojaureguir@gmail.com','pass','foto'),('123','Carnet de Extranjeria','Eduardo 2  ','Jauregui2','2000-07-06','999854582','eduardojaureguir11@gmail.com','pass','foto'),('1231551','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-05','999854582','eduardojaureguir@gmail.com','pass','foto'),('15151','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-11','999854582','eduardojaureguir@gmail.com','pass','foto'),('1515151','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-17','999854582','eduardojaureguir@gmail.com','pass','foto'),('15151515','DNI','Eduardo Rafael ','Jauregui Romero','2000-07-14','999854582','eduardojaureguir@gmail.com','pass','foto'),('35353535','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-29','999854582','eduardojaureguir@gmail.com','pass','foto'),('4728535','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-03','999854582','eduardojaureguir@gmail.com','pass','cb76b4c4a07d8e741073034c6e1edaa0.jpg'),('5353535','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-15','999854582','eduardojaureguir@gmail.com','pass','foto'),('555','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-15','999854582','eduardojaureguir@gmail.com','pass','foto'),('73518914','DNI','Eduardo Rafael ','Jauregui Romero','1999-03-24','975602085','felix.fernandez2@unmsm.edu.pe','pass','ee34dc06d9e43924c387ea48cc6994e3.jpg'),('73954094','DNI','Eduardo','Jauregui','2000-05-17','999854582','eduardo@mail.com','12345','prueba'),('gegeg','DNI','Eduardo Rafael ','gege','2022-11-11','gegege','gege@gmai.colm','pass','4845649a4a0b2a9cee3adf09df2f7cc1.jpg'),('ku51ku51ku','DNI','Eduardo Rafael ','Jauregui Romero','2022-11-06','999854582','eduardojaureguir@gmail.com','pass','617a68d6df904fd65a7886c56e46500d.jpg');

UNLOCK TABLES;

CREATE TABLE `agenda` (
  `idagenda` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `documento_psicologo` varchar(20) NOT NULL,
  `idespecialidades` int NOT NULL,
  PRIMARY KEY (`idagenda`),
  KEY `FK_doc_psicologo_idx` (`documento_psicologo`),
  KEY `FK_especialidades_idx` (`idespecialidades`),
  CONSTRAINT `FK_doc_psicologo` FOREIGN KEY (`documento_psicologo`) REFERENCES `psicologo` (`documento_psicologo`),
  CONSTRAINT `FK_especialidades` FOREIGN KEY (`idespecialidades`) REFERENCES `especialidades` (`idespecialidades`)
) ENGINE=InnoDB;

LOCK TABLES `agenda` WRITE;

INSERT INTO `agenda` VALUES (1,'2022-11-25 12:40:19','2022-11-25 14:40:19','73954094',1),(2,'2022-11-29 08:30:00','2022-11-29 12:30:00','73954094',1);

UNLOCK TABLES;

CREATE TABLE `cita` (
  `idcita` int NOT NULL AUTO_INCREMENT,
  `id_agenda` int NOT NULL,
  `estado_cita` varchar(45) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `pagado` int NOT NULL,
  `paciente_documento_paciente` varchar(20) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  PRIMARY KEY (`idcita`),
  KEY `fk_cita_paciente1_idx` (`paciente_documento_paciente`),
  KEY `fk_cita_agenda1_idx` (`id_agenda`),
  CONSTRAINT `fk_cita_agenda1` FOREIGN KEY (`id_agenda`) REFERENCES `agenda` (`idagenda`),
  CONSTRAINT `fk_cita_paciente1` FOREIGN KEY (`paciente_documento_paciente`) REFERENCES `paciente` (`documento_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=4;

LOCK TABLES `cita` WRITE;

INSERT INTO `cita` VALUES (1,2,'activo',3.00,3,'73518914','2022-11-29 08:00:00','2022-11-29 08:30:00'),(2,2,'activo',3.00,3,'73518914','2022-11-29 10:00:00','2022-11-29 10:30:00'),(3,2,'activo',3.00,3,'73518914','2022-11-29 08:30:00','2022-11-29 09:00:00');

UNLOCK TABLES;
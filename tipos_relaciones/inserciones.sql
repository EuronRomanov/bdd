--cuentas 
insert into usuario values ('1303753618','PABLO MARCELO','ABAD NIETO','AHORROS',200.80);
insert into usuario values ('1706172648','CARLOS ENRIQUE','ABRIL ABRIL','CORRIENTE',1000.78);
insert into usuario values ('0100967652','NARCISA DEL LOURDES','ACARO CASTILLO','AHORROS',5000.10);
insert into usuario values ('1103037048','SONIA CECILIA','ACEVEDO PALACIO','CORRIENTE',2000.78);
insert into usuario values ('1704997012','DAVID JOSÉ','ACOSTA VÁSQUEZ','CORRIENTE',2000.78);
insert into usuario values ('1714818299','ROSARIO CARLA','BERON PALOMEQUE','CORRIENTE',2000.70);
insert into usuario values ('1713627071','MARIO ALBERTO','BLUM AGUIRRE','AHORROS',5400.10);
insert into usuario values ('0200982163','FLAVIO GEOVANNY','BRAVO LUZURIAGA','AHORROS',6000.60);
insert into usuario values ('1710027071','JOSE JOSE','BLUM AGUIRRE','AHORROS',5400.10);
insert into usuario values ('0201112163','HERNA VICENTE','BARSALLO ROLDAN','AHORROS',6000.60);




insert into cuentas values ('12345','1303753618',NOW(),134.7);
insert into cuentas values ('12446','1706172648','2010-01-23',300);
insert into cuentas values ('12006','0100967652','2010-10-01',400.78);
insert into cuentas values ('12786','0100967652','2010-12-01',400.78);
insert into cuentas values ('16886','1704997012','2010-10-02',480.08);
insert into cuentas values ('18996','1303753618','2017-7-01',199.10);
insert into cuentas values ('11116','1713627071','2018-9-01',1000.01);
insert into cuentas values ('10989','0200982163','2017-10-01',12949.8);
insert into cuentas values ('18999','1710027071','2020-8-01',556.10);
insert into cuentas values ('18994','0201112163','2012-10-01',700.98);

--clientes
insert into clientes values ('1303753618','PABLO MARCELO','ABAD NIETO');
insert into clientes values ('1706172648','CARLOS ENRIQUE','ABRIL ABRIL');
insert into clientes values ('0100967652','NARCISA DEL LOURDES','ACARO CASTILLO');
insert into clientes values ('1103037048','SONIA CECILIA','ACEVEDO PALACIO');
insert into clientes values ('1704997012','DAVID JOSÉ','ACOSTA VÁSQUEZ');
insert into clientes values ('1714818299','ROSARIO CARLA','BERON PALOMEQUE');
insert into clientes values ('1713627071','MARIO ALBERTO','BLUM AGUIRRE');
insert into clientes values ('0200982163','FLAVIO GEOVANNY','BRAVO LUZURIAGA');
insert into clientes values ('1710027071','JOSE JOSE','BLUM AGUIRRE');
insert into clientes values ('0201112163','HERNA VICENTE','BARSALLO ROLDAN');

insert into compras values (1,'1303753618',NOW(),134.7);
insert into compras values (2,'1706172648','2010-01-23',300);
insert into compras values (3,'0100967652','2010-10-01',454.78);
insert into compras values (4,'0100967652','2010-12-01',400.78);
insert into compras values (5,'1704997012','2010-10-02',4789.08);
insert into compras values (6,'1710027071','2017-7-01',199.10);
insert into compras values (7,'1713627071','2018-9-01',10.01);
insert into compras values (8,'0200982163','2017-10-01',12949.8);
insert into compras values (9,'1710027071','2020-8-01',556.10);
insert into compras values (10,'0201112163','2012-10-01',790.98);

---productos
insert into productos(codigo,nombre,descripcion, precio,stock) values(1,'Arroz','Arroz macareño',4.5,6);
insert into productos(codigo,nombre,descripcion, precio,stock) values(2,'Aceite','aceite funda',1.5,6);
insert into productos(codigo,nombre,descripcion, precio,stock) values(3,'Mantequilla','margarina 200g',3.5,6);
insert into productos(codigo,nombre,descripcion, precio,stock) values(4,'Atun real','Aatun 500g',1.8,6);
insert into productos(codigo,nombre,descripcion, precio,stock) values(5,'agua','agua con gas',7.5,6);
insert into productos(codigo,nombre, precio,stock) values(6,'cerveza',5.5,8);
insert into productos(codigo,nombre, precio,stock) values(7,'tomate',10.8,30);
insert into productos(codigo,nombre, precio,stock) values(8,'papa',0.25,120);



insert into ventas values (1,3,NOW(),5);
insert into ventas values (2,5,'2010-01-23',6);
insert into ventas values (3,3,'2010-10-01',34);
insert into ventas values (4,1,'2010-12-01',34);
insert into ventas values (5,4,'2010-10-02',23);
insert into ventas values (6,5,'2017-7-01',100);
insert into ventas values (7,6,'2018-9-01',1);
insert into ventas values (8,5,'2017-10-01',5);
insert into ventas values (9,3,'2020-8-01',35);
insert into ventas values (10,2,'2012-10-01',80);

---videjuegos
insert into videojuegos values(1,'countrike', 'version 2012',5);
insert into videojuegos values(2,'call of duty', 'stream',5);
insert into videojuegos values(3,'mario bros', 'version beta',5);
insert into videojuegos values(4,'prince of persia', 'portable',4);
insert into videojuegos values(5,'fifa2013', 'verion pc',8);
insert into videojuegos(codigo,nombre,valoracion) values(6,'the last of us',8);
insert into videojuegos(codigo,nombre,valoracion)  values(7,'contra',7);
insert into videojuegos(codigo,nombre,valoracion)  values(8,'halo',10);

insert into plataformas values(1, 'nintendo',5);
insert into plataformas values(2, '`ps4`',1);
insert into plataformas values(3, 'xbox',1);
insert into plataformas values(4,'xbox',3);
insert into plataformas values(5, 'ps4',3);
insert into plataformas values(6, 'vps4',4);
insert into plataformas values(7, 'ps4',4);
insert into plataformas values(8, 'nintndo',4);
insert into plataformas values(9, 'nintendo',4);
insert into plataformas values(10, 'ps4',5);

--estudiantes

insert into profesores values(1,'JUAN PEREZ');
insert into profesores values(2,'LUIS LOEZ');
insert into profesores values(3,'EDUARDO GRANJA');
insert into profesores values(4,'HERNAN VELASQUEZ');


insert into estudiantes values ('1303753618','PABLO MARCELO','ABAD NIETO','hazanheymann@yahoo.com','1995-01-01',1);
insert into estudiantes values ('1706172648','CARLOS ENRIQUE','ABRIL ABRIL','saenzreveloandrea@hotmail.com','1999-09-07',1);
insert into estudiantes values ('0100967652','NARCISA DEL LOURDES','ACARO CASTILLO','taty_20mvilca@hotmail.com','1997-11-09',2);
insert into estudiantes values ('1103037048','SONIA CECILIA','ACEVEDO PALACIO','luistroya1@hotmail.com','1998-12-20',3);
insert into estudiantes values ('1704997012','DAVID JOSÉ','ACOSTA VÁSQUEZ','hectormarceloq@hotmail.com','1997-06-13',4);
insert into estudiantes values ('1714818299','ROSARIO CARLA','BERON PALOMEQUE','ht.henry@hotmail.com','1990-07-11',4);
insert into estudiantes values ('1713627071','MARIO ALBERTO','BLUM AGUIRRE','dario_gabriel1990@hotmail.com','1997-08-12',1);
insert into estudiantes values ('0200982163','FLAVIO GEOVANNY','BRAVO LUZURIAGA','francislean1983@hotmail.com','1985-10-23',3);
insert into estudiantes values ('1113627543','JEFERSON FERNANDO','BLUM AGUIRRE','dario_gabriel1990@hotmail.com','1997-08-12',2);
insert into estudiantes values ('1200982163','MARCELO ALEX','BRAVO LUZURIAGA','francislean1983@hotmail.com','1985-10-23',3);

--registros entrada
insert into empleado values(1,'MARCELO ALEX','2022-01-02','12:12:00');
insert into  empleado values(2,'JEFERSON FERNANDO','2022-01-02','13:00:00');
insert into  empleado values(3,'FLAVIO GEOVANNY','2022-01-29','12:01:00');
insert into  empleado values(4,'DAVID JOSÉ','2022-10-11','11:45:00');
insert into  empleado values(5,'SONIA CECILIA','2022-11-13','09:56:00');
insert into  empleado values(6,'NARCISA DEL LOURDES','2022-03-22','06:35:00');
insert into  empleado values(7,'CARLOS ENRIQUE','2022-05-09','15:01:00');
insert into  empleado values(8,'PABLO ROBERTO','2022-05-09','18:02:00');
insert into  empleado values(9,'PABLO MARCELO','2022-07-05','20:40:00');
insert into  empleado values(10,'CARLOS ENRIQUE','2022-11-08','22:30:00');



insert into registros_entrada values(1,'1101160032','2022-01-02','12:12:00',1);
insert into registros_entrada values(2,'1719690487','2022-01-02','13:00:00',2);
insert into registros_entrada values(3,'1717430100','2022-01-29','12:01:00',1);
insert into registros_entrada values(4,'1723077382','2022-10-11','11:45:00',1);
insert into registros_entrada values(5,'1724354459','2022-11-13','09:56:00',1);
insert into registros_entrada values(6,'0400988903','2022-03-22','06:35:00',3);
insert into registros_entrada values(7,'0202412755','2022-05-09','15:01:00',5);
insert into registros_entrada values(8,'1000630309','2022-05-09','18:02:00',5);
insert into registros_entrada values(9,'1706757026','2022-07-05','20:40:00',5);
insert into registros_entrada values(10,'1722599154','2022-11-08','22:30:00',2);

--persona



insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1303753618','PABLO MARCELO','ABAD NIETO','1995-01-01');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1706172648','CARLOS ENRIQUE','ABRIL ABRIL','1999-09-07');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('0100967652','NARCISA DEL LOURDES','ACARO CASTILLO','1997-11-09');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1103037048','SONIA CECILIA','ACEVEDO PALACIO','1998-12-20');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1704997012','DAVID JOSÉ','ACOSTA VÁSQUEZ','1997-06-13');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1714818299','ROSARIO CARLA','BERON PALOMEQUE','1990-07-11');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1713627071','MARIO ALBERTO','BLUM AGUIRRE','1997-08-12');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('0200982163','FLAVIO GEOVANNY','BRAVO LUZURIAGA','1985-10-23');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1113627543','JEFERSON FERNANDO','BLUM AGUIRRE','1997-08-12');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)  values ('1200982163','MARCELO ALEX','BRAVO LUZURIAGA','1985-10-23');


insert into prestamo values('1714818299',200.5,'2022-01-02','12:12:00','JUAN');
insert into  prestamo  values('1714818299',200.5,'2022-01-02','13:00:00','PEDRO GRANJA');
insert into  prestamo  values('1714818299',500.5,'2022-01-29','12:01:00','LEON ROLDOS');
insert into  prestamo  values('1200982163',267.10,'2022-10-11','11:45:00','JAIME AREVALO');
insert into  prestamo values('1200982163',256.5,'2022-11-13','09:56:00','LUIS GARCIA');
insert into  prestamo values('1200982163',80.5,'2022-03-22','06:35:00','LUIS ESTRADA');
insert into  prestamo  values('1103037048',90.5,'2022-05-09','15:01:00','LUIS ESTRADA');
insert into  prestamo  values('1103037048',15.5,'2022-05-09','18:02:00','HERNAN GONZALES');
insert into  prestamo  values('1303753618',1000.5,'2022-07-05','20:40:00','LEANDRO NORERO');
insert into  prestamo  values('0200982163',234.5,'2022-11-08','22:30:00','LUISA GONZALES');


--TRANSACCIONES
insert into transacciones values (1,'12006',234,'C','2022-10-21','11:45:00');
insert into transacciones values (2,'12006',234.4,'D','2022-10-11','02:30:00');
insert into transacciones values (3,'16886',197.4,'D','2022-09-12','04:40:00');
insert into transacciones values (4,'12006',45.2,'D','2022-09-18','05:45:00');
insert into transacciones values (5,'18996',100,'C','2022-10-11','06:07:00');
insert into transacciones values (6,'12006',123.6,'C','2022-11-11','15:45:00');
insert into transacciones values (7,'11116',900,'C','2022-10-25','10:06:00');
insert into transacciones values (8,'11116',234,'D','2022-03-15','06:45:00');
insert into transacciones values (9,'12006',102.4,'D','2022-02-07','07:04:00');
insert into transacciones values (10,'18994',102.3,'C','2022-06-03','11:45:00');


insert into banco values (1,1,'pagos');
insert into banco values (2,1,'pagos');
insert into banco values (3,3,'pagos');
insert into banco values (4,3,'pagos');
insert into banco values (5,10,'pagos');
insert into banco values (6,4,'pagos');
insert into banco values (7,5,'pagos');
insert into banco values (8,4,'pagos');
insert into banco values (9,2,'pagos');
insert into banco values (10,2,'pagos');
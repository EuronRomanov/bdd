


delete from cuentas;
delete from estudiantes;
delete from productos;
delete from registros_entrada;
delete from transacciones;
delete from videojuegos;

--

create table usuario(
cedula char(10) not null,
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20) ,
limite_credito decimal(10,2),
constraint usuario_pk primary key (cedula)
);
alter table cuentas add constraint usuario_cuentas_fk foreign key(cedula_propietario)
references usuario(cedula);

--clientes

create table clientes (
    cedula char(10) not null ,
    nombre varchar(50) not null ,
    apellido varchar(50) not null,
    constraint clientes_pk primary key (cedula)
);
create table compras (
    id_compra int ,
    cedula char(10) not null,
    fecha_compra date not null,
    monto decimal(10,2) not null,
    constraint compras_pk primary key (id_compra)
);
alter table compras add constraint compras_clientes_fk foreign key(cedula)
references clientes(cedula);

--productos
create table ventas (
    id_venta int not null,
    codigo_producto int not null,
    fecha_venta date not null,
    cantidad int ,
    constraint ventas_pk primary key (id_venta)
);

alter table  ventas add constraint ventas_productos_fk foreign key(codigo_producto)
references productos(codigo);

--videojuegos
create table plataformas(
id_plataforma int not null,
nombre_plataforma varchar(50) not null,
codigo_videojuego int ,
constraint plataformas_pk primary key (id_plataforma)
);

alter table plataformas
add constraint plataformas_videojuegos_fk foreign key (codigo_videojuego)
references videojuegos(codigo);

--estudiantes 

create table profesores(
    codigo int not null,
    nombre varchar(50) not null,
    constraint profesores_pk primary key(codigo));

alter table estudiantes add column codigo_profesor int ;
alter table estudiantes add constraint estudiantes_profesores_fk foreign key(codigo_profesor)
references profesores(codigo);

--registros_entrada
create table empleado (
    codigo_empleado int not null,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null,
    constraint empleado_pk primary key (codigo_empleado)
);

alter table registros_entrada add column codigo_empleado int not null;
alter table registros_entrada add constraint empleado_registro_entrada_fk foreign key(codigo_empleado) references empleado(codigo_empleado);

--persona
create table persona(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10,2),
    fecha_nacimiento date not null, 
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int,
    constraint personas_pk primary key(cedula)
);

create table prestamo(
    cedula char(10) ,
    monto money,
    fecha_prestamo date,
    hora_prestamo time,
    garante varchar(40)
);

alter table prestamo add constraint prestamos_personas_fk foreign key (cedula) references persona(cedula);

--transacciones
create table banco (
codigo_banco int ,
codigo_transaccion int, 
detalle varchar(100),
constraint banco_pk  primary key(codigo_banco)
);

alter table banco add constraint banco_transacciones_fk foreign key(codigo_banco) references transacciones(codigo); 
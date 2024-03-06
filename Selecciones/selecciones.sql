/*
productos
1. Crear select que traiga todos los productos que empiezan con Q
2. Crear un select que traiga los productos con una descripcion de null
3. crear un select que traiga todos los productos con un precion entre 2 y 3 
*/
SELECT * FROM productos WHERE nombre LIKE 'Q%';
SELECT * FROM productos WHERE productos.descripcion is null;
SELECT * FROM productos WHERE  productos.precio between money(2) and money(3);

/*
cuentas
1. crea un select que traiga el numero de cuenta y el saldo de todas las cuentas 
2. crear un select que traiga los registros entre el dias de hoy hasta 2 meses antes 
3. crear un select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 meses antes 
*/

select numero_cuenta, saldo from cuentas; 
select * from cuentas where cuentas.fecha_creacion BETWEEN (DATE(NOW())+ INTERVAL '-2 MONTHS') AND NOW() ;
select numero_cuenta, saldo from cuentas where cuentas.fecha_creacion BETWEEN (DATE(NOW())+ INTERVAL '-2 MONTHS') AND NOW() ;


/*
estudiantes 
1.Crear un select que traiga el nombre y la cedula de los estudiantes 
2.- crear un select que traiga los nombres de todos los estudiantes cuya cedula empiece con 17 
3.- crear un select que traiga los nombres completos de todos los estudiantes cuyo nombre emiece con A
*/

select nombre, cedula from estudiantes;
select  nombre from estudiantes where cedula like '17%';
select  nombre, apellido from estudiantes where nombre like 'A%';


/*
registros _entradas
1.seleccionar todas las cedulas de empleado y fecha y hora de los registros de entrada
2. seleccionar los registros de entrada que esten entre 7:00 y 14:00
3. selecionar los registros de entrada que tengan horas superiores a 8:00
*/

select cedula_empleado, fecha, hora from registros_entrada ;
select * from registros_entrada where hora between '7:00'::time and '14:00'::time;
select * from registros_entrada where hora>'8:00'::time;


/*
videjuegos
1.Seleccionar todos los videojuegos conun nombre que comience con C
2. seleccionar videojuegos con una valoracion ente 9 y 10 
3. Seleccionar videjuegos con una descripcion null
*/
select * from videojuegos where nombre like 'c%' or  nombre like 'C%';
select * from videojuegos where valoracion between 9::integer and 10::integer;
select * from videojuegos where descripcion is null;


/*
transacciones 
1.Seleccionar todas las transacciones realizadas con un tipo D
2. Seleccionar las transaciones con montos entre 200 y 2000
3. Seleccinar el codigo , monto ,tipo y fecha de las trasacionesque tengan una fecha diferente de null
*/

select * from transacciones where tipo='D' ;
select * from transacciones where monto between 200::money and 2000::money ;
select  codigo , monto ,tipo , fecha from transacciones where fecha is not null;
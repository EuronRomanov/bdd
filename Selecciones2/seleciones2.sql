/*
Productos 
1. Seleccionar todos los productos con stock igual a 10 y precio menor a 10 
2. Seleccionar los nombre y stocks de todos los productos que tengan un m en su nombre o tenga un espacio en blanco en su descripción 
3. Seleccionar el nombre de todos los productos que tenga null el campo de descripción o tengan un stock de 0

*/
select * from productos where stock=10::integer and precio<10::money;
select nombre, stock from  productos where nombre like '%m%'or descripcion like '% %';
select nombre from productos where descripcion is null  or stock=0;

/*
Cuentas 
1. Seleccionar el número de cuenta y saldo de todas las cuentas con saldo mayor a 100 y menor a 1000 
2. Seleccionar las cuentas entre el día de hoy hasta hace 1 año. 
3. Seleccionar las cuentas con saldo 0 o con una cedula de propietario que termine con 2

*/
select numero_cuenta,saldo  from cuentas where saldo between 100::money and 1000::money;
select * from cuentas where fecha_creacion between  (DATE(NOW()) + intervaL '-1 YEAR') and DATE(NOW());
select * from cuentas where saldo=0::money or cedula_propietario like '%2';


/*
Estudiantes 
1. Seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con M o si su apellido termina en Z 
2. Crear un select que traiga los nombres de todos los estudiantes que tenga un número 32 y empiece con 18 en alguna parte de su cedula. 
3. Crear un select que traiga los nombres completos de todos los estudiantes cuya cedula termine en 06 o empiece con 17
*/

select nombre, apellido from estudiantes where nombre like 'M%' or apellido like '%Z';
select nombre from estudiantes where cedula like '%32%' and cedula like '18%';
select nombre, apellido from estudiantes where cedula like '%06'or cedula like '17%';


/*
Registros Entradas
1. Seleccione los registros del mes de septiembre, o realizados por las cédulas de pichincha (que inicien con 17) 
2. Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha (que inicien con 17) y realizados entre las 08:00 a 12:00.
3. Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha (que inicien con 17) y realizados entre las 08:00 a 12:00 o los registros del mes de septiembre, realizadas por las cédulas de Esmeraldas (que inicien con 08) y realizadas entre las 09:00 a 13:00.
*/
select * from registros_entrada where EXTRACT(month FROM fecha)=9::integer or cedula_empleado like '17%';
select * from registros_entrada where EXTRACT(month FROM fecha)=8::integer and cedula_empleado like '17%' and hora between '08:00'::time and '12:00'::time;
select * from registros_entrada where (EXTRACT(month FROM fecha)=8::integer and cedula_empleado like '17%' and (hora between '08:00'::time and '12:00'::time))  or
(EXTRACT(month FROM fecha)=9::integer and cedula_empleado like '08%' and (hora between '09:00'::time and '13:00'::time)) ;


/*
Videojuegos 
1. Listar los registros de videojuegos con un nombre que contengan la letra "C” o una valoración de 7.
2. Seleccionar videojuegos con un código entre 3 y 7 o una valoración de 7 
3. Seleccionar videojuegos de guerra, con una valoración mayor a 7 y que en su nombre empiezan con C o los videojuegos con una valoración mayor a 8 y que en su nombre empiezen con D
*/

select * from videojuegos where nombre like '%C%' or valoracion=7;
select * from videojuegos where (codigo between 3::integer and 7::integer) or valoracion=7;
select * from videojuegos where (descripcion='juego de guerra' and valoracion>7 and nombre like 'C%') or
(descripcion='juego de guerra' and valoracion>8 and nombre like 'D%');



/*

Transacciones 
1. Seleccionar transacciones de tipo C realizadas por los clientes con número de cuentas entre 222001 y 22004. 
2. Seleccionar transacciones de tipo D que fueron realizadas el 25 de mayo y con el rango de cuenta entre 22007 y 22010. 
3. Seleccione todas las transacciones en donde el código sea entre 1 y 5, número de cuenta entre 22002 O 22004 que se hayan realizado los días 26 y 29 de mayo.
*/
select * from transacciones where tipo='C' and numero_cuenta::integer between  22004::integer and 222001::integer;
select * from transacciones where  tipo='D' and EXTRACT(MONTH FROM fecha)=5 and EXTRACT(DAY FROM fecha)=25 and numero_cuenta::integer between  22007::integer and 22010::integer;
select * from transacciones where (codigo between 1 and 5) and 
(EXTRACT(DAY FROM fecha)=26 and 
EXTRACT(DAY FROM fecha)=29  and 
EXTRACT(MONTH FROM fecha)=5) and 
numero_cuenta::integer between  22002::integer and 22004::integer;



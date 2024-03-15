/*
Consulta : Obtener los números de cuenta y nombres de usuarios 
cuyos saldos están entre $100 y $1000.
*/

select u.nombre,c.numero_cuenta from usuario u, cuentas c 
where c.cedula_propietario=u.cedula and c.saldo between 100::money and 1000::money;

/*
Subconsulta : Obtener todos los datos de cuentas y usuarios donde la fecha de creación 
de la cuenta esté entre '2022-09-21' y '2023-09-21'.
*/

select * from cuentas c
where c.cedula_propietario IN (select u.cedula 
							  from  usuario u 
							  where c.cedula_propietario=u.cedula and 
							   c.fecha_creacion between '2022-09-21'::date and '2023-09-21'::date );
							  
/*
Consulta : Obtener el nombre y apellido de los clientes cédula 
contenga el número 7 en su número de cédula.
*/

select nombre,apellido from clientes where cedula like '%7%';
				
/*
Subconsulta : Obtener todos los clientes cuya cédula sea igual a la cédula de nombre "Mónica".
*/

select * from clientes where cedula in (select cedula from clientes where nombre ='Mónica');


/*
Consulta : Obtener el código de profesor con todos los nombres y apellidos
de los estudiantes cuyo apellido contiene la letra 'n'.
*/


select p.codigo,e.nombre,e.apellido from profesores p, estudiantes e
where p.codigo=e.codigo_profesor 
and e.apellido like '%n%';


/*
Subconsulta : Obtener todos los estudiantes cuyo código de profesor corresponde 
al nombre de "Francisco"
*/
select * from estudiantes e where e.codigo_profesor=any ( select codigo from profesores where nombre='Francisco' );

/*
Consulta : Obtener la cantidad ahorrada, el monto del préstamo y 
el garante de las personas cuyo préstamo está entre $100 y $1000.

*/

select pe.cantidad_ahorrada,pr.monto , pr.garante 
from prestamo pr,persona pe 
where pr.cedula=pe.cedula
and pr.monto between 100::money and 1000::money;


/*
Subconsulta : Obtener todos los datos de la persona cuya cédula 
sea igual a la cédula de nombre “Sean”
*/

select * from persona where cedula =any(select cedula from persona where nombre='Sean');

/*
Consulta : Obtener el nombre, stock y cantidad de productos y 
ventas cuyo nombre contiene la letra 'm' o la descripción sea igual a 0.
*/

select p.nombre,p.stock,v.cantidad 
from ventas v,productos p
where v.codigo_producto=p.codigo
and p.nombre like '%m%'or p.descripcion='0';



/*
Subconsulta : Obtener el nombre y stock de los productos donde 
el código de producto de las ventas corresponde a una cantidad de 5.
*/

select nombre, stock
from productos
where codigo in (
    select codigo_producto
    from ventas
    where cantidad = 5
);

/*
Consulta : Obtener todas las transacciones de tipo 'C' 
cuyo número de cuenta esté entre '22001' y '22004'.
*/

select * from transacciones t, banco b 
where t.codigo=b.codigo_transaccion
and t.tipo='C' and b.codigo_banco between 22001::int and 22004::int;

/*
Subconsulta : Obtener todos los datos de transacciones cuyo código corresponde al 
código de transacción del banco con código 1.
*/
select * from transacciones t where t.codigo IN (select  b.codigo_transaccion from banco b where b.codigo_transaccion=1); 

/*
Consulta : Obtener el nombre,descripción,valoración y nombre de plataforma de videojuegos y 
plataformas cuya descripción contiene 'Guerra' y tienen una valoración mayor a 7 o 
cuyo nombre comienza con'C' y tienen una valoración mayor a 8 y comienza con 'D'.
*/

select v.nombre, v.descripcion,v.valoracion, p.nombre_plataforma
from plataformas p, videojuegos v
where p.codigo_videojuego=v.codigo
and ((v.descripcion like '%Guerra%' and v.valoracion>7)
or (v.nombre like 'C%' and v.valoracion>8)
or (v.nombre like 'D%' and v.valoracion>8));


/*
Subconsulta : Obtener todos los datos de plataformas donde el código del videojuego
corresponde al código de "God of war".
*/

select * from plataformas p where p.codigo_videojuego =(select codigo 
														from videojuegos
														where nombre='God of war') ;

/*
Consulta : Obtener la cédula del empleado, fecha y el nombre de los empleados
cuyos registrosde entrada tienen fecha
entre '2023-08-01' y '2023-08-31' o cuya cédula del empleado contiene '17%' y
la hora de entrada está entre '08:00' y 
'12:00' o cuya fecha está entre '2023-10-06' y '2023-10-20',
la cédula del empleado contiene '08%' y la hora de entrada está entre '09:00' y '13:00'.
*/

select r.cedula_empleado,r.fecha,e.nombre from empleado e, registros_entrada r
where e.codigo_empleado=r.codigo_empleado
and ( (r.fecha between '2023-08-01'::date and '2023-08-31'::date)
	 or (r.cedula_empleado like '17%' and r.hora between '08:00'::time and '12:00'::time)
	 or (r.fecha between '2023-10-06'::date and '2023-10-20'::date)
	  and (r.cedula_empleado like '08%' and r.hora between '09:00'::time and '13:00'::time)
);


/*
Subconsulta : Obtener todos los datos de empleado donde el código de registro del empleado 
corresponde al código de registro de entrada de cédula '2201'.
*/

select * from empleado e 
where e.codigo_empleado=(
	select codigo_empleado 
	from registros_entrada 
	where cedula_empleado='2201');
	


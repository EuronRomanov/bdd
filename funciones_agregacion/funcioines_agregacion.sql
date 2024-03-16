/*
Relación cuentas con usuario 
Función de agregación 
1: Obtener el saldo promedio de todas las cuentas de un usuario específico.
*/

select avg(saldo::numeric) as saldo_promedio from cuentas c where c.cedula_propietario='0100967652';

/*
Función de agregación 2: 
Obtener el número total de cuentas de cada tipo de cuenta.
*/
select u.tipo_cuenta, count(c.numero_cuenta) from cuentas c, usuario u where c.cedula_propietario=u.cedula group by (u.tipo_cuenta);


/*
Relación de clientes con compras 
Función de agregación 1: 
Obtener el monto total de compras realizadas por cada cliente.
*/

select cl.cedula, sum(co.monto) as monto_total from clientes cl, compras co where cl.cedula=co.cedula group by (cl.cedula);

/*
Función de agregación 2: 
Obtener la cantidad total de compras realizadas en una fecha específica.
*/

select fecha_compra, count(id_compra) from compras where fecha_compra='2010-01-23' group by (fecha_compra);


/*
Relación entre estudiantes y profesores 
Función de agregación 1: 
Obtener la cantidad total de estudiantes asignados a cada profesor.
*/

select codigo_profesor, count(cedula) as total_estudiantes from estudiantes group by (codigo_profesor);

/*
Función de agregación 2:
Obtener la edad promedio de los estudiantes.
*/

select round(avg( (extract(year from current_date))- (extract(year from fecha_nacimiento)))) as edad_promedio from estudiantes; 

/*
Relación entre persona y préstamo 
Función de agregación 1: 
Obtener la suma total de los montos de préstamos para cada persona.
*/

select cedula,sum(monto) from prestamo group by (cedula);

/*
Función de agregación 2: 
Obtener la cantidad total de personas que tienen más de un hijo.
*/

select count(*) from persona where numero_hijos>1;

/*
Relación entre Productos y Ventas 
Función de agregación 1: 
Obtener el máximo precio de todos los productos.
*/

select max(precio) from productos;

/*
Función de agregación 2: 
Obtener la suma total de la cantidad de productos vendidos
*/
select sum(cantidad) as cantidad_total_vendida from ventas;

/*
Relación entre Transacciones y Banco 
Función de agregación 1:
Obtener la cantidad total de transacciones de tipo 'C' (crédito).
*/

select count(*) as total_transaciones_credito from transacciones where tipo='C';

/*
Función de agregación 2:
Obtener el promedio de montos de transacciones para cada número de cuenta.
*/

select numero_cuenta, round(avg(cast(monto as decimal)),2) from transacciones group by (numero_cuenta);

/*
Relación entre Videojuegos y Plataformas 
Función de agregación 1: 
Obtener la cantidad total de plataformas disponibles para cada videojuego.
*/

select codigo_videojuego, count(id_plataforma) from plataformas group by(codigo_videojuego);


/*
Función de agregación 2: 
Obtener la valoración promedio de todos los videojuegos.
*/

select round(avg(valoracion),2) valoracion_promedio from videojuegos;

/*
Relación entre registros_entrada y empleado 
Función de agregación 1: 
Obtener la cantidad total de registros de entrada realizados por cada empleado.
*/

select cedula_empleado, count(codigo_registro) as total_registros_entrada from registros_entrada group by (cedula_empleado);


/*
Función de agregación 2: 
Obtener la fecha mínima y máxima de los registros de entrada.
*/

select min(fecha)as fecha_minima , max(fecha) as fecha_maxima from registros_entrada;
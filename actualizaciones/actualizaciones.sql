/*
productos
1. Actualizar el stock a 0 en todos los productos donde la descripcion se null
*/

update productos set  stock=0 where descripcion is null;

/*
cuentas 
actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece por 17
*/

update cuentas set saldo=10 where cedula_propietario like '17%';

/*
estudiantes 
1. actualizar el apellido por hernandez a todos los estudiantes que tenga un cedula que empieza por 17 
*/

update estudiantes set apellido='HERNANDEZ' where cedula like '17%';


/*
registros_entradas
actualizar todaslas cedulas de registro_entrada por "082345679" para todos los registros del mes de agosto
*/

update registros_entrada set cedula_empleado='082345679' where EXTRACT(MONTH FROM fecha)=8;
 
 
 /*
 videojuegos
 actualizar todas las dscripciones de los videojuegos cuya valoracion sea mayor que 9  por "Mejor puntuado "
 */
 
update videojuegos set descripcion='Mejor puntuado' where valoracion>9;
 
 
 /*
 transacciones 
 actualizar tipo de todos los registros que tenga una transaccion mayor a 100 y menor que 500 que se haya llevado 
 acabo el mes de septiembre con horas entre 14:00 y 20:00 por "T"
 */
 update transacciones set tipo='T' where EXTRACT(MONTH FROM fecha)=9 and 
 (hora between '14:00'::time and '20:00'::time)  and
 (monto between 100::money and 500::money);

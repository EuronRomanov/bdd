/*
productos
elimna todos los productos donde descripcion es null
*/

 delete from productos where descripcion is null;
 
 /*
 cuentas
 elimina todas las cuentas cuya cedula_propietario empiece por 10
 */
 delete from cuentas where cedula_propietario like '10%';
 
 /*
 estudiantes
 elimina todos los estudiante que tenga una cedula que termina  por 05
 */
 delete from estudiantes where cedula like '%05';
 
 /*
 registros_entradas
 elimina todos los registros del mes de junio
 */
  delete from registros_entrada where EXTRACT(MONTH FROM fecha)=6::integer;
 
 
 /*
 videojueos
 elimina los videojuegos cuya valoracion sea menor que 7
 */
 
 delete from videojuegos where valoracion<7::integer;
 
 /*
 transacciones
 
 elimina las transacciones que se hayan hecho entre las 14:00  y 18:00 del mes
 de agosto del año actual
 */
 
 delete from transacciones where EXTRACT(MONTH FROM fecha)=8 and 
 EXTRACT(MONTH FROM fecha)=2024 and
 hora between '14:00'::time and '18:00'::time;
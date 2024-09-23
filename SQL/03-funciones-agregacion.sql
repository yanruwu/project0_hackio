
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select min("Milliseconds") as "duracion_min"
from "Track"

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select max("Milliseconds") as "duracion_max"
from "Track"

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
select min("UnitPrice") as "precio_min"
from "Track"

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
select max("UnitPrice") as "precio_max"
from "Track"

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select min("InvoiceDate") as "fecha_min"
from "Invoice"

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select max("InvoiceDate") as "fecha_max"
from "Invoice" 

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count("TrackId") "n_pistas"
from "Track"

-- Ejercicio 8: Contar el número de clientes en Brasil.
select count(*) as "clientes_brasil"
from "Customer"
where "Country" = 'Brazil'

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select sum("Milliseconds") as "duracion_total"
from "Track"

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select count(*) "n_sales_supp"
from "Employee"
where "Title" = 'Sales Support Agent'

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total") as "cantidad_total"
from "Invoice"

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select round(avg("Milliseconds"), 0) as "duracion_media"
from "Track"

-- Ejercicio 13: Calcular el precio medio de las pistas.
select round(avg("UnitPrice"), 2) as "precio_medio"
from "Track"

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select round(stddev("Milliseconds"), 0) as "sd_duracion"
from "Track"

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select round(variance("Milliseconds"), 0) as "var_duracion"
from "Track"

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select round(stddev("UnitPrice"), 2) as "sd_precio"
from "Track"


/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as "nombre_completo"
from "Customer" 


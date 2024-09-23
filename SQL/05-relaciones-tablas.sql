-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select a."Title" as "nombre_album", 
		t."Name" as "nombre_pista"
from "Track" as t
inner join "Album" as a
on t."AlbumId" = a."AlbumId" 
order by a."Title" 

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select ar."Name" as "Artista",
		al."Title" as "nombre_album" 
from "Artist" as ar
inner join "Album" as al
on al."ArtistId" = ar."ArtistId" 
order by "Artista"

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select concat(c."FirstName", ' ', c."LastName") as "nombre_completo",
		sum(i."Total" ) as "total_pago"
from "Invoice" as i
inner join "Customer" as c
on i."CustomerId"  = c."CustomerId" 
group by c."FirstName" ,
		c."LastName" 
order by "total_pago" desc
limit 5

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select e."FirstName" as "nombre_empleado",
		c."FirstName" as "nombre_cliente"
from "Employee" as e
inner join "Customer" as c
on c."SupportRepId" = e."EmployeeId" 

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select il."InvoiceId" as "id_factura",
		t."Name" as "nombre_pista"
from "InvoiceLine"  as il
inner join "Track" as t
on il."TrackId" = t."TrackId" 


-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select t."Name" as "Pista", 
		t."Composer" as "Artista",
		g."Name" as "Género"
from "Track" as t
inner join "Genre" as g
on t."GenreId" = g."GenreId" 
where t."Composer" is not null 

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select t."Name" as "Pista",
		mt."Name" as "tipo_medio" 
from "Track" t 
inner join "MediaType" mt 
on mt."MediaTypeId" = t."MediaTypeId" 

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select t."Name" as "pista",
		g."Name" as "genero" 
from "Track" t 
left join "Genre" g 
on t."GenreId" = g."GenreId"

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select concat(c."FirstName", ' ', c."LastName") as "nombre_completo",
		i."InvoiceId" as "id_factura" 
from "Customer" c 
left join "Invoice" i 
on i."CustomerId" = c."CustomerId" 
order by c."FirstName", c."LastName"

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select a."Title" as "nombre_album",
		a2."Name" as "artista"
from "Album" a 
left join "Artist" a2 
on a2."ArtistId" = a."ArtistId" 

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select g."Name" as "género",
		count(t."GenreId") as "n_pistas"
from "Track" t 
right join "Genre" g -- así muestra todos los géneros aunque no haya pistas
on g."GenreId" = t."GenreId" 
group by g."Name" 
order by "n_pistas" 

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select a."Title" as "titulo_album",
		sum(t."Milliseconds") as "duracion_total"
from "Album" a 
left join "Track" t 
on a."AlbumId" = t."AlbumId" 
group by "titulo_album"
order by "duracion_total"

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select concat(c."FirstName", ' ', c."LastName") as "nombre_completo",
		sum(i."Total") as "total"
from "Customer" c 
left join "Invoice" i 
on c."CustomerId" = i."CustomerId" 
group by "nombre_completo"
order by "total"

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select concat(e."FirstName", ' ', e."LastName") as "empleado",
	   concat(c."FirstName", ' ', c."LastName") as "cliente"
from "Employee" e 
left join "Customer" c 
on c."SupportRepId" = e."EmployeeId" 
order by e."FirstName", e."LastName"




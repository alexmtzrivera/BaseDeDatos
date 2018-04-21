SELECT * FROM Peliculas
WHERE Nombre = 'It'

SELECT * FROM Genero
WHERE Tipo = 'Comedia'

SELECT * FROM Perfiles
WHERE Tipo = 'Adulto'

SELECT * FROM Director
WHERE Nombre = 'Juan Gabriel'

SELECT * FROM Genero
WHERE Tipo = 'Terror'



SELECT TOP 3 * FROM Peliculas

SELECT TOP 5 * FROM Director

SELECT TOP 6 * FROM Subscripcion

SELECT TOP 8 * FROM	Genero

SELECT TOP 7 * FROM Perfiles




SELECT COUNT(IDPeliculas),Nombre
FROM Peliculas 
Group BY Nombre
HAVING COUNT(IDPeliculas)<5

SELECT COUNT(IDPerfiles),Tipo
FROM Perfiles
Group BY Tipo
HAVING COUNT(IDPerfiles)<3

SELECT COUNT(IDDirector),Nombre
FROM Director
Group BY Nombre
HAVING COUNT(IDDirector)<4

SELECT COUNT(IDGenero),Tipo
FROM Genero
Group BY Tipo
HAVING COUNT(IDGenero)<3

SELECT COUNT(IDSubscripcion),Nombre
FROM Subscripcion
Group BY Nombre
HAVING COUNT(IDSubscripcion)<5





Select COUNT (IDDirector), Nombre
FROM Director
GROUP BY Nombre

Select COUNT (IDGenero), Tipo
FROM Genero
GROUP BY Tipo

SELECT COUNT(IDSubscripcion),Costo
FROM Subscripcion
Group BY Costo

SELECT COUNT(IDPeliculas),Sinopsis
FROM Peliculas
Group BY Sinopsis

SELECT COUNT(IDPerfiles),Fecha
FROM Perfiles
Group BY Fecha


SELECT COUNT (*) AS TotalFilas
From Director

SELECT COUNT (*) AS TotalFilas
From Peliculas

SELECT COUNT (*) AS TotalFilas
From Subscripcion

SELECT COUNT (*) AS TotalFilas
From Genero

SELECT COUNT (*) AS TotalFilas
From Perfiles
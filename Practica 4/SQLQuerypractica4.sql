INSERT INTO Director (IDDirector, Nombre) VALUES (001, 'Adam Sandler')
INSERT INTO Director (IDDirector, Nombre) VALUES (002, 'Jose Jose')
INSERT INTO Director (IDDirector, Nombre) VALUES (003, 'Eugenio Derbez' )
INSERT INTO Director (IDDirector, Nombre) VALUES (004, 'Alpa Chino'  )
INSERT INTO Director (IDDirector, Nombre) VALUES (005,'Juan Gabriel')
INSERT INTO Director (IDDirector, Nombre) VALUES (006,'Guillermo del toro')
INSERT INTO Director (IDDirector, Nombre) VALUES (007,'Iñarritu')
INSERT INTO Director (IDDirector, Nombre) VALUES (008,'Juan Escutia')
INSERT INTO Director (IDDirector, Nombre) VALUES (009,'Roberto Elizondo')
INSERT INTO Director (IDDirector, Nombre) VALUES (010,'Juan de la Barrera')
 

 Select * from Director 

INSERT INTO Genero (IDGenero, Tipo) VALUES (001, 'Comedia')
INSERT INTO Genero (IDGenero, Tipo) VALUES (002, 'Romance')
INSERT INTO Genero (IDGenero, Tipo) VALUES (003, 'Romance')
INSERT INTO Genero (IDGenero, Tipo) VALUES (004, 'Terror')
INSERT INTO Genero (IDGenero, Tipo) VALUES (005, 'Accion')
INSERT INTO Genero (IDGenero, Tipo) VALUES (006, 'Terror')
INSERT INTO Genero (IDGenero, Tipo) VALUES (007, 'Musical')
INSERT INTO Genero (IDGenero, Tipo) VALUES (008, 'Comedia')
INSERT INTO Genero (IDGenero, Tipo) VALUES (009, 'Animada')
INSERT INTO Genero (IDGenero, Tipo) VALUES (010, 'Comedia')


Select * from Genero

INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (001, 'Mensual' , 100)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (002, 'Mensual' , 100)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (003, 'Trimestre',250)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (004, 'Mensual' , 100)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (005, 'Semestre' ,600)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (006, 'Mensual' , 100)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (007, 'Mensual' , 100)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (008, 'Semestre' ,600)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (009, 'Trimestre',250)
INSERT INTO Subscripcion (IDSubscripcion,Nombre, Costo) VALUES (010, 'Mensual' , 100)
  
Select * from Subscripcion

INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (001, 'La toalla del mojado' , 'Historia de una toalla de un mojado' , ' 01:20:00 ' , 'Muy buena pelicula' , 'Frankie Rivers')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (002, 'Como si fuera la primera vez' , ' Un chico enamora cada dia a su enamorada' , ' 02:00:00 ' ,' Excelente pelicula' , ' Adam Sadler')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (003, 'It' , 'Un payaso loco que se roba a los niños', ' 01:45:00 ' , 'Pelicula de terror muy interesante' , ' Tupac' )
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (004, 'Complices' , ' Comedia romantica Mexicana' , '01:35:00' , 'Buena, pero queda a dever' , ' Arath de la Torre')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (005, 'Avatar' , ' Pelicula de ciencia ficción con alta animacion' , ' 02:45:00' , 'Pelicula sobrevalorada respecto a su contenido' , ' Jennifer Lopez')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (006,	'Lego' , ' Pelicula animada sobre los juguetes lego' , ' 01:32:00' , 'Muy buena Pelicula' , 'Juancho')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (007, 'Frozen' , 'Pelicula animada sobre el amor' , '01:22:00' , 'Y si hacemos un muñeco' , ' Elza' )
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (008, 'Francotirador' , ' Soldado americano con la pasion de ser franco' , ' 01:40:00 ' , ' Excelente pelicula' , ' Bradley Cooper')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (009, 'Ratatouille' , ' Pelicula sobre una rata que hace comida' , ' 01:46:00' , ' La veria ocacionalmente' , 'Shefsito')
INSERT INTO Peliculas (IDPeliculas,Nombre,Sinopsis, Tiempo, Comentario, Actor) VALUES (010, 'Donde estan las rubias' , ' Comedia sobre dos agentes de policia disfrasados' , '01:56:00' , ' Excelente comedia' , 'Shawn Wayans')

  
Select * from Peliculas
  
 
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (001,'Adulto','Alejandro','20/04/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (002,'Adulto','Aron','10/02/2018') 
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (003,'Niño','Carlos','28/02/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (004,'Mujer','Karla','18/01/2017')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (005,'Niño','Alan','20/04/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (006,'Adulto','Israel','09/03/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (007,'Mujer','Jessica','14/04/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (008,'Adulto','Hugo','02/02/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (009,'Niño','Gilberto','12/04/2018')
INSERT INTO Perfiles (IDPerfiles,Tipo,Nombre,Fecha) VALUES (010,'Niño','Diego','11/03/2018')

Select * from Perfiles

UPDATE Perfiles
SET Tipo = 'Niño'
WHERE Nombre = 'Alejandro'

UPDATE Perfiles
SET Tipo = 'Adulto'
WHERE Nombre = 'Alan'

UPDATE Perfiles
SET Tipo = 'Mujer'
WHERE Nombre = 'Hugo'

UPDATE Perfiles
SET Tipo = 'Adulto'
WHERE Nombre = 'Gilberto'

UPDATE Perfiles
SET Tipo = 'Mujer'
WHERE Nombre = 'Diego'

DELETE FROM Peliculas
WHERE Nombre = 'Ratatouille'

DELETE FROM Peliculas
WHERE Nombre = 'Francotirador'

DELETE FROM Peliculas
WHERE Nombre = 'Donde estan las rubias'

DELETE FROM Peliculas
WHERE Nombre = 'Frozen'

DELETE FROM Peliculas
WHERE Nombre = 'Lego'

SELECT * FROM Peliculas

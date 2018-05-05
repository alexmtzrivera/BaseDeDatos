
create view Costo_Subscripcion as
select s.Costo as tipo, SUM(s.costo) as PTotal
from Subscripcion s
group by s.Costo

create view Pelicula_autor as 
select a.Nombre as NombreAutor, p.Nombre as Pelicula, p.Actor as ActorPelicula
from Autor a
join Peliculas p on a.IDAutor = p.IDPeliculas


create view Genero_Peliculas as 
select p.Nombre as NombrePelicula, g.Tipo as GeneroPelicula
from Peliculas p
join Genero g on p.IDPeliculas = g.IDGenero


create view Directores_Peliculas as 
select p.Nombre as NombrePelicula, d.Nombre as DirectorPelicula
from Peliculas p
join Director d on p.IDPeliculas = d.IDDirector
 

create view Usuario_Perfil as 
select u.Nombre as NombreUsuario, p.Tipo as TipodePerfil
from Usuario u
join Perfiles P on p.IDPerfiles = u.IDUsuario



select NombreAutor, Pelicula
into #AutorPelicula
from Pelicula_autor

Select * from #AutorPelicula


select * from Peliculas 
select Nombre, count(*) as CantidadDePeliculas
from Peliculas 
group by Nombre
as 
where p.CantidadDePeliculas >1

with MP as(
select Costo, MAX(Costo) as PrecioMaximo
from Subscripcion
group by Nombre 
)

select * from MP

select * from Usuario_Perfil 
select * from Directores_Peliculas
Select * FROM Genero_Peliculas
Select * FROM Pelicula_autor
select * from Costo_Subscripcion
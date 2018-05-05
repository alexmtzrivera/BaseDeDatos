


Select 
Compras.IDCompra, Usuario.IDUsuario,
Usuario.Nombre
from Compras
left join Usuario 
on Compras.IDUsuario = Usuario.IDUsuario


Select 
Pago.IdCompras, MetodoDePago.FormaDePago
from Pago
left join MetodoDePago on Pago.IDCompras = MetodoDePago.IDMetodoDePago


Select 
Peliculas.IDPeliculas, Peliculas.Nombre,
Genero.Tipo
from Peliculas 
inner join Genero 
on Peliculas.IDGenero = Genero.IDGenero

Select 
Peliculas.IDPeliculas, Peliculas.Nombre,
Autor.Nombre
from Peliculas
inner join Autor 
on Peliculas.IDAutor = Autor.IDAutor

Select 
Peliculas.IDPeliculas, Peliculas.Nombre,
Director.Nombre
from Peliculas 
inner join Director 
on Peliculas.IDDirector = Director.IDDirector


Select 
Compras.IDCompra, Subscripcion.IDSubscripcion,
Subscripcion.Nombre, Usuario.Nombre
from Compras 
inner join Subscripcion 
on Compras.IDSubscripcion = Subscripcion.IDSubscripcion
inner join Usuario
on Compras.IDUsuario = Usuario.IDUsuario


Select 
DemandaPelicula.IDDemandaPelicula,
Perfiles.Nombre, Perfiles.IDUsuario,
Peliculas.Nombre
from DemandaPelicula 
left join Perfiles
on DemandaPelicula.IdPerfiles = Perfiles.IDPerfiles
left join Peliculas
on DemandaPelicula.IDPeliculas = Peliculas.Nombre

Select 
Peliculas.Nombre, Peliculas.Tiempo,
Perfiles.Nombre, Perfiles.Tipo
from Peliculas
cross join Perfiles


Select 
Pago.IDPago, Pago.Monto, Compras.IDCompra, Subscripcion.Nombre
from Pago 
left join Compras 
on Pago.IDCompras = Compras.IDCompra

left join Subscripcion
on Compras.IDSubscripcion = Subscripcion.IDSubscripcion

Select 
Compras.IDCompra,
Estatus.Nombre
from Compras
left join Estatus
on Compras.IDEstatus = Estatus.IDEstatus

create table RespaldoDemandaPelicula
(
	IDDemandaPelicula int,
	Fecha nchar,
	IDPëliculas int,
	IDPerfiles int 
)

Select * Into RespaldoDemandaPelicula
from DemandaPelicula

Select IDPago
From Pago 
where Monto > 100(Select Sum(Monto) from Pago)


With PeliculasW as (Select Nombre from Peliculas
)
Select Nombre from Peliculas



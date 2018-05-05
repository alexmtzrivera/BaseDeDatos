CREATE TRIGGER tg_insert
ON Genero
FOR INSERT
AS IF UPDATE (Tipo) BEGIN SELECT ('Insertaste un registro')
END ;


CREATE TRIGGER tg_insertdirector
ON Director
FOR INSERT
AS IF UPDATE (Nombre) BEGIN SELECT ('Insertaste un registro')
END ;


CREATE TRIGGER tg_Autordelete1
ON Autor
FOR DELETE
AS BEGIN IF (SELECT Nombre FROM deleted) not like 'Arat Perez'
BEGIN delete from Autor where Nombre = (SELECT Nombre FROM deleted);
BEGIN SELECT ('Se elimino un registro')
END
END
END;


CREATE TRIGGER tg_autor
ON Autor 
FOR INSERT
AS IF UPDATE (Nombre) BEGIN SELECT ('Insertaste un registro')
END ;

CREATE TRIGGER tg_Genero
ON Genero
FOR DELETE
AS BEGIN IF (SELECT Tipo FROM deleted) not like 'Comedias'
BEGIN delete from Genero where Tipo = (SELECT Tipo FROM deleted);
BEGIN SELECT ('Se elimino un registro')
END
END
END;

SELECT CURRENT_TIMESTAMP

Select date_format(FechaInicion, '%d-%m%Y')FechaInicio
From Compras

CREATE PROCEDURE Generop
(@valor2 nchar(20))
AS
BEGIN 
	SELECT * FROM dbo.Genero
	Where Tipo like @valor2
END

CREATE PROCEDURE Subscripcionp2
(@valor2 int)
AS
BEGIN 
	UPDATE dbo.Subscripcion
	Set Costo = @valor2
	Where Costo = 100
END

CREATE PROCEDURE Pelciulas
(@valor2 nchar(20))
AS
BEGIN 
	SELECT * FROM dbo.Peliculas
	Where Nombre like @valor2
END


CREATE PROCEDURE Subscripcionp
(@valor2 int)
AS
BEGIN 
	SELECT * FROM dbo.Subscripcion
	Where Costo like @valor2
END


CREATE PROCEDURE Pagop
(@valor2 int)
AS
BEGIN 
	SELECT * FROM dbo.Pago
	Where Monto like @valor2
END


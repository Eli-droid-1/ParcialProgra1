IF DB_ID('ParcialProgramacion1') IS NULL
BEGIN

CREATE DATABASE ParcialProgramacion1;
END;
GO

CREATE TABLE dbo.Productos
(
IdProducto INT IDENTITY(1,1) PRIMARY KEY,
Nombre NVARCHAR(100) NOT NULL,
Categoria NVARCHAR(50) NOT NULL,
Precio DECIMAL(10,2) NOT NULL CHECK (Precio > 0),
Existencias INT NOT NULL CHECK (Existencias >= 0)
);
GO

-- Ejemplos
INSERT INTO dbo.Productos (Nombre, Categoria, Precio, Existencias)
VALUES ('Laptop HP 15', 'Tecnología', 650.00, 10),
		('Mouse inalámbrico', 'Accesorios', 12.50, 40),
		('Cuaderno universitario', 'Papelera', 2.25, 100)
GO

SELECT * FROM dbo.Productos
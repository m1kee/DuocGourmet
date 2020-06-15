CREATE TABLE [dbo].[Venta]
(
	[OrdenVenta] NVARCHAR(100) NOT NULL,
	-- PRIMARY KEY
	[Fecha] DATE NOT NULL CONSTRAINT [FK_Venta_Fecha] FOREIGN KEY REFERENCES [dbo].[Tiempo]([Fecha]),
	[GarzonId] INT NOT NULL CONSTRAINT [FK_Venta_Garzon] FOREIGN KEY REFERENCES [dbo].[Garzon]([Id]),
	[CajeroId] INT NOT NULL CONSTRAINT [FK_Venta_Cajero] FOREIGN KEY REFERENCES [dbo].[Cajero]([Id]),
	[CajaId] INT NOT NULL CONSTRAINT [FK_Venta_Caja] FOREIGN KEY REFERENCES [dbo].[Caja]([Id]),
	[ProductoId] INT NOT NULL CONSTRAINT [FK_Venta_Producto] FOREIGN KEY REFERENCES [dbo].[Producto]([Id]),
	[FormaPagoId] INT NOT NULL CONSTRAINT [FK_Venta_FormaPago] FOREIGN KEY REFERENCES [dbo].[FormaPago]([Id]),
	-- DATOS VENTA
	[MesaId] INT NOT NULL,
	[Cantidad] INT NOT NULL,
	[Valor] NUMERIC(15,3) NOT NULL,
	[MontoPago] NUMERIC(15,3) NOT NULL,
	[Propina] NUMERIC(15,3) NOT NULL,
	[Descuento] NUMERIC(15,3) NOT NULL CONSTRAINT [DF_Descuento] DEFAULT(0)

	CONSTRAINT [PK_Venta] PRIMARY KEY ([OrdenVenta], [Fecha], [GarzonId], [CajeroId], [CajaId], [ProductoId], [FormaPagoId])
)

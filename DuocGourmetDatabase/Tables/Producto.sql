CREATE TABLE [dbo].[Producto]
(
	[Id]             INT             NOT NULL,
    [CategoriaId]    INT NOT NULL CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY ([CategoriaId]) REFERENCES [dbo].[Categoria] ([Id]),
    [Descripcion]    NVARCHAR (100)  NULL,
    [Precio]         INT             NOT NULL
    CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED ([Id] ASC)
)

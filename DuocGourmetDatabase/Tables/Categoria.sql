CREATE TABLE [dbo].[Categoria]
(
	[Id]             INT             NOT NULL,
    [Descripcion]    NVARCHAR (100)  NOT NULL,
    CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED ([Id] ASC)
)

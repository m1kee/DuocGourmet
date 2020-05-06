CREATE TABLE [dbo].[FormaPago]
(
	[Id]          INT            NOT NULL,
    [Descripcion] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_FormaPago] PRIMARY KEY CLUSTERED ([Id] ASC)
)

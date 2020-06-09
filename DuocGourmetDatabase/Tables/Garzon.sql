﻿CREATE TABLE [dbo].[Garzon]
(
	[Id]         INT            NOT NULL,
    [Rut]        INT            NOT NULL,
    [Nombres]    NVARCHAR (250) NOT NULL,
    [Apellidos]  NVARCHAR (250) NOT NULL,
    [Edad]       INT            NULL,
    CONSTRAINT [PK_Garzon] PRIMARY KEY CLUSTERED ([Id] ASC)
)

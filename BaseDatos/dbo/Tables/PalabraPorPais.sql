CREATE TABLE [dbo].[PalabraPorPais] (
    [IdPalabraPorPais] INT      IDENTITY (1, 1) NOT NULL,
    [IdPais]           CHAR (3) NOT NULL,
    [IdPalabra]        INT      NOT NULL,
    CONSTRAINT [PK_PalabraPorPais] PRIMARY KEY CLUSTERED ([IdPalabraPorPais] ASC),
    CONSTRAINT [FK_PalabraPorPais_Pais_IdPais] FOREIGN KEY ([IdPais]) REFERENCES [dbo].[Pais] ([IdPais]),
    CONSTRAINT [FK_PalabraPorPais_Palabra_IdPalabra] FOREIGN KEY ([IdPalabra]) REFERENCES [dbo].[Palabra] ([IdPalabra])
);


CREATE TABLE [LAF].[province] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [country]     UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_province_country] FOREIGN KEY ([country]) REFERENCES [LAF].[country] ([id])
);


CREATE TABLE [LAF].[district] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [province] UNIQUEIDENTIFIER NOT NULL,
    [name]     VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_district] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_district_province] FOREIGN KEY ([province]) REFERENCES [LAF].[province] ([id])
);


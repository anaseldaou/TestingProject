CREATE TABLE [LAF].[city] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [district] UNIQUEIDENTIFIER NOT NULL,
    [name]     VARCHAR (50)     NULL,
    CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_city_district] FOREIGN KEY ([district]) REFERENCES [LAF].[district] ([id])
);


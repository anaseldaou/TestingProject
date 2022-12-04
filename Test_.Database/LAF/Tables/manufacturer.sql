CREATE TABLE [LAF].[manufacturer] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [name]     VARCHAR (50)     NOT NULL,
    [category] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_manufacturer] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_manufacturer_manufacturer_category] FOREIGN KEY ([category]) REFERENCES [LAF].[manufacturer_category] ([id])
);


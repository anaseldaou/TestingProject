CREATE TABLE [LAF].[units] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [unit]     VARCHAR (50)     NULL,
    [category] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_units] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_units_unit_category] FOREIGN KEY ([category]) REFERENCES [LAF].[unit_category] ([id])
);


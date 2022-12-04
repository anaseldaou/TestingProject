CREATE TABLE [LAF].[unit_conversion] (
    [from]   UNIQUEIDENTIFIER NOT NULL,
    [to]     UNIQUEIDENTIFIER NOT NULL,
    [factor] FLOAT (53)       NOT NULL,
    CONSTRAINT [FK_unit_conversion_units] FOREIGN KEY ([from]) REFERENCES [LAF].[units] ([id]),
    CONSTRAINT [FK_unit_conversion_units1] FOREIGN KEY ([to]) REFERENCES [LAF].[units] ([id])
);


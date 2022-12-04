CREATE TABLE [LAF].[object_property_value] (
    [object]   UNIQUEIDENTIFIER NOT NULL,
    [property] UNIQUEIDENTIFIER NOT NULL,
    [value]    VARCHAR (50)     NOT NULL,
    CONSTRAINT [FK_object_property_value_object] FOREIGN KEY ([object]) REFERENCES [LAF].[object] ([id]),
    CONSTRAINT [FK_object_property_value_object_type_properties] FOREIGN KEY ([property]) REFERENCES [LAF].[object_type_properties] ([id])
);


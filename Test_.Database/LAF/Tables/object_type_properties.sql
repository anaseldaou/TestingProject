CREATE TABLE [LAF].[object_type_properties] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [label]       VARCHAR (50)     NULL,
    [type]        VARCHAR (50)     NULL,
    [object_type] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_object_type_properties] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_object_type_properties_object_type] FOREIGN KEY ([object_type]) REFERENCES [LAF].[object_type] ([id])
);


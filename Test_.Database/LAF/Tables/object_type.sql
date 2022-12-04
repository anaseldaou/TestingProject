CREATE TABLE [LAF].[object_type] (
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description]   VARCHAR (MAX)    NULL,
    [unit_category] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_object_type] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_object_type_unit_category] FOREIGN KEY ([unit_category]) REFERENCES [LAF].[unit_category] ([id])
);


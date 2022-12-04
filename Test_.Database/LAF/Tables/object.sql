CREATE TABLE [LAF].[object] (
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description]   VARCHAR (MAX)    NULL,
    [category]      UNIQUEIDENTIFIER NULL,
    [parent]        UNIQUEIDENTIFIER NULL,
    [quantity]      FLOAT (53)       NULL,
    [unit]          UNIQUEIDENTIFIER NULL,
    [unit_category] UNIQUEIDENTIFIER NULL,
    [illegal]       BIT              NULL,
    [stolen]        BIT              NULL,
    [manufacturer]  UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_object] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_object_manufacturer] FOREIGN KEY ([manufacturer]) REFERENCES [LAF].[manufacturer] ([id]),
    CONSTRAINT [FK_object_object] FOREIGN KEY ([parent]) REFERENCES [LAF].[object] ([id]),
    CONSTRAINT [FK_object_object_type] FOREIGN KEY ([category]) REFERENCES [LAF].[object_type] ([id]),
    CONSTRAINT [FK_object_unit_category] FOREIGN KEY ([unit_category]) REFERENCES [LAF].[unit_category] ([id]),
    CONSTRAINT [FK_object_units] FOREIGN KEY ([unit]) REFERENCES [LAF].[units] ([id])
);


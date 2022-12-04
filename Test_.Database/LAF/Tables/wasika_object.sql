CREATE TABLE [LAF].[wasika_object] (
    [wasika]  UNIQUEIDENTIFIER NOT NULL,
    [object]  UNIQUEIDENTIFIER NOT NULL,
    [comment] VARCHAR (MAX)    NULL,
    CONSTRAINT [FK_wasika_object_object] FOREIGN KEY ([object]) REFERENCES [LAF].[object] ([id]),
    CONSTRAINT [FK_wasika_object_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id])
);


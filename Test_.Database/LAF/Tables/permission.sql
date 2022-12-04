CREATE TABLE [LAF].[permission] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [category] UNIQUEIDENTIFIER NOT NULL,
    [function] VARCHAR (MAX)    NOT NULL,
    CONSTRAINT [PK_permission] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_permission_category] FOREIGN KEY ([category]) REFERENCES [LAF].[category] ([id])
);


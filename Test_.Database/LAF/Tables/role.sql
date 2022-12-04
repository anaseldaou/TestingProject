CREATE TABLE [LAF].[role] (
    [id]         UNIQUEIDENTIFIER NOT NULL,
    [name]       VARCHAR (40)     NOT NULL,
    [department] UNIQUEIDENTIFIER NOT NULL,
    [category]   UNIQUEIDENTIFIER NOT NULL,
    [phone]      VARCHAR (50)     NOT NULL,
    [office]     VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_role_category] FOREIGN KEY ([category]) REFERENCES [LAF].[category] ([id]),
    CONSTRAINT [FK_role_department] FOREIGN KEY ([department]) REFERENCES [LAF].[department] ([id])
);


CREATE TABLE [LAF].[user_role] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [user]   UNIQUEIDENTIFIER NOT NULL,
    [role]   UNIQUEIDENTIFIER NOT NULL,
    [start]  DATETIME         NOT NULL,
    [end]    DATETIME         NOT NULL,
    [active] BIT              NOT NULL,
    CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_user_role_role] FOREIGN KEY ([role]) REFERENCES [LAF].[role] ([id]),
    CONSTRAINT [FK_user_role_user] FOREIGN KEY ([user]) REFERENCES [LAF].[user] ([id])
);


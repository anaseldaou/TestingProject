CREATE TABLE [LAF].[whistory] (
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [wasika]       UNIQUEIDENTIFIER NOT NULL,
    [status]       UNIQUEIDENTIFIER NOT NULL,
    [user_role_id] UNIQUEIDENTIFIER NOT NULL,
    [date]         DATETIME         NOT NULL,
    CONSTRAINT [PK_whistory] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_whistory_user_role] FOREIGN KEY ([user_role_id]) REFERENCES [LAF].[user_role] ([id]),
    CONSTRAINT [FK_whistory_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id]),
    CONSTRAINT [FK_whistory_wstatus] FOREIGN KEY ([status]) REFERENCES [LAF].[wstatus] ([id])
);


CREATE TABLE [LAF].[notification] (
    [id]        UNIQUEIDENTIFIER NOT NULL,
    [user_role] UNIQUEIDENTIFIER NOT NULL,
    [subject]   VARCHAR (MAX)    NOT NULL,
    [details]   VARCHAR (MAX)    NOT NULL,
    CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_notification_user_role] FOREIGN KEY ([user_role]) REFERENCES [LAF].[user_role] ([id])
);


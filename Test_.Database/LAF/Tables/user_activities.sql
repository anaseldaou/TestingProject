CREATE TABLE [LAF].[user_activities] (
    [id]   UNIQUEIDENTIFIER NULL,
    [user] UNIQUEIDENTIFIER NOT NULL,
    [body] VARCHAR (MAX)    NULL,
    [type] VARCHAR (50)     NULL,
    [date] DATETIME         NULL,
    CONSTRAINT [FK_user_activities_user] FOREIGN KEY ([user]) REFERENCES [LAF].[user] ([id])
);


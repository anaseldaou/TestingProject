CREATE TABLE [LAF].[user] (
    [id]        UNIQUEIDENTIFIER NOT NULL,
    [username]  VARCHAR (50)     NOT NULL,
    [password]  VARCHAR (50)     NULL,
    [location]  NCHAR (10)       NULL,
    [firstName] NCHAR (10)       NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([id] ASC)
);


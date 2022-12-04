CREATE TABLE [LAF].[category] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NOT NULL,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED ([id] ASC)
);


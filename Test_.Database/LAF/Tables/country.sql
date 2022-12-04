CREATE TABLE [LAF].[country] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [name]        VARCHAR (50)     NOT NULL,
    [nationality] VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED ([id] ASC)
);


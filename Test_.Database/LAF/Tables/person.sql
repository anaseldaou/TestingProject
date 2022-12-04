CREATE TABLE [LAF].[person] (
    [id]        UNIQUEIDENTIFIER NOT NULL,
    [firstname] VARCHAR (50)     NOT NULL,
    [lastname]  VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_person] PRIMARY KEY CLUSTERED ([id] ASC)
);


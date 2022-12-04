CREATE TABLE [LAF].[place_type] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NOT NULL,
    CONSTRAINT [PK_place_type] PRIMARY KEY CLUSTERED ([id] ASC)
);


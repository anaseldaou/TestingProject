CREATE TABLE [LAF].[manufacturer_category] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    CONSTRAINT [PK_manufacturer_category] PRIMARY KEY CLUSTERED ([id] ASC)
);


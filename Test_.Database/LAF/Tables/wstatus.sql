CREATE TABLE [LAF].[wstatus] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    [is_start]    BIT              NULL,
    [is_end]      BIT              NULL,
    CONSTRAINT [PK_wstatus] PRIMARY KEY CLUSTERED ([id] ASC)
);


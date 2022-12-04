CREATE TABLE [LAF].[registration_history] (
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [vehicle]      UNIQUEIDENTIFIER NOT NULL,
    [registration] VARCHAR (50)     NULL,
    [from]         DATETIME         NULL,
    [to]           DATETIME         NULL,
    CONSTRAINT [PK_registration_history] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_registration_history_vehicle] FOREIGN KEY ([vehicle]) REFERENCES [LAF].[vehicle] ([id])
);


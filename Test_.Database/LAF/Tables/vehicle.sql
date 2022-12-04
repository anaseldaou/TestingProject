CREATE TABLE [LAF].[vehicle] (
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [manufacturer]        UNIQUEIDENTIFIER NULL,
    [year]                SMALLINT         NULL,
    [registration_number] VARCHAR (50)     NULL,
    [color]               UNIQUEIDENTIFIER NULL,
    [description]         VARCHAR (MAX)    NULL,
    CONSTRAINT [PK_vehicle] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vehicle_color] FOREIGN KEY ([color]) REFERENCES [LAF].[color] ([id]),
    CONSTRAINT [FK_vehicle_manufacturer] FOREIGN KEY ([manufacturer]) REFERENCES [LAF].[manufacturer] ([id])
);


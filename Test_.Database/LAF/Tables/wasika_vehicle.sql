CREATE TABLE [LAF].[wasika_vehicle] (
    [wasika]  UNIQUEIDENTIFIER NOT NULL,
    [vehicle] UNIQUEIDENTIFIER NOT NULL,
    [comment] VARCHAR (MAX)    NULL,
    CONSTRAINT [FK_wasika_vehicle_vehicle] FOREIGN KEY ([vehicle]) REFERENCES [LAF].[vehicle] ([id]),
    CONSTRAINT [FK_wasika_vehicle_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id])
);


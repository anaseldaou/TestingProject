CREATE TABLE [LAF].[vehicle_owner] (
    [vehicle] UNIQUEIDENTIFIER NOT NULL,
    [person]  UNIQUEIDENTIFIER NOT NULL,
    [from]    DATETIME         NOT NULL,
    [to]      DATETIME         NOT NULL,
    CONSTRAINT [FK_vehicle_owner_person] FOREIGN KEY ([person]) REFERENCES [LAF].[person] ([id]),
    CONSTRAINT [FK_vehicle_owner_vehicle] FOREIGN KEY ([vehicle]) REFERENCES [LAF].[vehicle] ([id])
);


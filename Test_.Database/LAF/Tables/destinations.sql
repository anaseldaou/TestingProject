CREATE TABLE [LAF].[destinations] (
    [from] UNIQUEIDENTIFIER NOT NULL,
    [to]   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [FK_destinations_department] FOREIGN KEY ([from]) REFERENCES [LAF].[department] ([id]),
    CONSTRAINT [FK_destinations_department1] FOREIGN KEY ([to]) REFERENCES [LAF].[department] ([id])
);


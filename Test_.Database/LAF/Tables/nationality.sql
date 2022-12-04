CREATE TABLE [LAF].[nationality] (
    [person]  UNIQUEIDENTIFIER NOT NULL,
    [country] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [FK_nationality_country] FOREIGN KEY ([country]) REFERENCES [LAF].[country] ([id]),
    CONSTRAINT [FK_nationality_person] FOREIGN KEY ([person]) REFERENCES [LAF].[person] ([id])
);


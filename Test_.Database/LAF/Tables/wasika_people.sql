CREATE TABLE [LAF].[wasika_people] (
    [wasika]  UNIQUEIDENTIFIER NOT NULL,
    [person]  UNIQUEIDENTIFIER NOT NULL,
    [comment] VARCHAR (MAX)    NULL,
    CONSTRAINT [FK_wasika_people_person] FOREIGN KEY ([person]) REFERENCES [LAF].[person] ([id]),
    CONSTRAINT [FK_wasika_people_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id])
);


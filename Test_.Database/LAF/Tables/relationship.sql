CREATE TABLE [LAF].[relationship] (
    [person_1]     UNIQUEIDENTIFIER NOT NULL,
    [person_2]     UNIQUEIDENTIFIER NOT NULL,
    [relationship] VARCHAR (50)     NULL,
    CONSTRAINT [FK_relationship_person] FOREIGN KEY ([person_1]) REFERENCES [LAF].[person] ([id]),
    CONSTRAINT [FK_relationship_person1] FOREIGN KEY ([person_2]) REFERENCES [LAF].[person] ([id])
);


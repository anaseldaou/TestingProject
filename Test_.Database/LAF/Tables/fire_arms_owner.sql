CREATE TABLE [LAF].[fire_arms_owner] (
    [fire_arms] UNIQUEIDENTIFIER NOT NULL,
    [person]    UNIQUEIDENTIFIER NOT NULL,
    [from]      DATETIME         NOT NULL,
    [to]        DATETIME         NOT NULL,
    CONSTRAINT [FK_fire_arms_owner_fire_arm] FOREIGN KEY ([fire_arms]) REFERENCES [LAF].[fire_arm] ([id]),
    CONSTRAINT [FK_fire_arms_owner_person] FOREIGN KEY ([person]) REFERENCES [LAF].[person] ([id])
);


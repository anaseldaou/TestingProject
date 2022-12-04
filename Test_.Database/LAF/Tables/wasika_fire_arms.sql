CREATE TABLE [LAF].[wasika_fire_arms] (
    [wasika]   UNIQUEIDENTIFIER NOT NULL,
    [fire_arm] UNIQUEIDENTIFIER NOT NULL,
    [comment]  VARCHAR (MAX)    NULL,
    CONSTRAINT [FK_wasika_fire_arms_fire_arm] FOREIGN KEY ([fire_arm]) REFERENCES [LAF].[fire_arm] ([id]),
    CONSTRAINT [FK_wasika_fire_arms_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id])
);


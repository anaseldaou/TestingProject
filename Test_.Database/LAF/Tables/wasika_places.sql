CREATE TABLE [LAF].[wasika_places] (
    [wasika]  UNIQUEIDENTIFIER NOT NULL,
    [place]   UNIQUEIDENTIFIER NOT NULL,
    [comment] VARCHAR (MAX)    NULL,
    CONSTRAINT [FK_wasika_places_place] FOREIGN KEY ([place]) REFERENCES [LAF].[place] ([id]),
    CONSTRAINT [FK_wasika_places_wasika] FOREIGN KEY ([wasika]) REFERENCES [LAF].[wasika] ([id])
);


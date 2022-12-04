CREATE TABLE [LAF].[place] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    [longititude] FLOAT (53)       NOT NULL,
    [latitude]    FLOAT (53)       NOT NULL,
    [parent]      UNIQUEIDENTIFIER NULL,
    [type]        UNIQUEIDENTIFIER NULL,
    [city]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_place] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_place_city] FOREIGN KEY ([city]) REFERENCES [LAF].[city] ([id]),
    CONSTRAINT [FK_place_place] FOREIGN KEY ([parent]) REFERENCES [LAF].[place] ([id]),
    CONSTRAINT [FK_place_place_type] FOREIGN KEY ([type]) REFERENCES [LAF].[place_type] ([id])
);


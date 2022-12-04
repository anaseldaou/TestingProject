CREATE TABLE [LAF].[wasika] (
    [id]                UNIQUEIDENTIFIER NOT NULL,
    [version]           INT              NOT NULL,
    [year]              SMALLINT         NOT NULL,
    [number]            INT              NOT NULL,
    [short_description] VARCHAR (MAX)    NOT NULL,
    [type]              UNIQUEIDENTIFIER NULL,
    [destination]       UNIQUEIDENTIFIER NULL,
    [event]             UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_wasika] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_wasika_department] FOREIGN KEY ([destination]) REFERENCES [LAF].[department] ([id]),
    CONSTRAINT [FK_wasika_event] FOREIGN KEY ([event]) REFERENCES [LAF].[event] ([id]),
    CONSTRAINT [FK_wasika_wasika_type] FOREIGN KEY ([type]) REFERENCES [LAF].[wasika_type] ([id])
);


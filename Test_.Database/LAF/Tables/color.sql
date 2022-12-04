CREATE TABLE [LAF].[color] (
    [id]    UNIQUEIDENTIFIER NOT NULL,
    [color] SMALLINT         NOT NULL,
    [green] SMALLINT         NULL,
    [red]   SMALLINT         NULL,
    [blue]  SMALLINT         NULL,
    CONSTRAINT [PK_color] PRIMARY KEY CLUSTERED ([id] ASC)
);


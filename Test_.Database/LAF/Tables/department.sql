CREATE TABLE [LAF].[department] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [parent] UNIQUEIDENTIFIER NULL,
    [name]   VARCHAR (50)     NULL,
    [type]   UNIQUEIDENTIFIER NULL,
    [place]  UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_department_department] FOREIGN KEY ([parent]) REFERENCES [LAF].[department] ([id]),
    CONSTRAINT [FK_department_department_type] FOREIGN KEY ([type]) REFERENCES [LAF].[department_type] ([id]),
    CONSTRAINT [FK_department_place] FOREIGN KEY ([place]) REFERENCES [LAF].[place] ([id])
);


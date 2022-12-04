CREATE TABLE [LAF].[fire_arm_type] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    [is_military] BIT              NULL,
    CONSTRAINT [PK_fire_arm_type] PRIMARY KEY CLUSTERED ([id] ASC)
);


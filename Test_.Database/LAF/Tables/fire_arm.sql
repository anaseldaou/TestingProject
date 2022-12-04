CREATE TABLE [LAF].[fire_arm] (
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [type]          UNIQUEIDENTIFIER NOT NULL,
    [manufacturer]  UNIQUEIDENTIFIER NOT NULL,
    [serial_number] VARCHAR (50)     NOT NULL,
    [calibder]      UNIQUEIDENTIFIER NULL,
    [description]   VARCHAR (MAX)    NULL,
    CONSTRAINT [PK_fire_arm] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_fire_arm_fire_arm_type] FOREIGN KEY ([type]) REFERENCES [LAF].[fire_arm_type] ([id]),
    CONSTRAINT [FK_fire_arm_manufacturer] FOREIGN KEY ([manufacturer]) REFERENCES [LAF].[manufacturer] ([id])
);


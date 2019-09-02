CREATE TABLE [dbo].[NewStreamMessages] (
    [MessageId]    UNIQUEIDENTIFIER NOT NULL,
    [JsonData]     NVARCHAR (MAX)   NULL,
    [Type]         NVARCHAR (MAX)   NULL,
    [JsonMetadata] NVARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([MessageId] ASC)
);


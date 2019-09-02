CREATE TYPE [dbo].[NewStreamMessages] AS TABLE (
    [StreamVersion] INT              IDENTITY (0, 1) NOT NULL,
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Created]       DATETIME         DEFAULT (getutcdate()) NOT NULL,
    [Type]          NVARCHAR (128)   NOT NULL,
    [JsonData]      NVARCHAR (MAX)   NULL,
    [JsonMetadata]  NVARCHAR (MAX)   NULL);


CREATE TABLE [dbo].[Messages] (
    [StreamIdInternal] INT              NOT NULL,
    [StreamVersion]    INT              NOT NULL,
    [Position]         BIGINT           IDENTITY (0, 1) NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [Created]          DATETIME         NOT NULL,
    [Type]             NVARCHAR (128)   NOT NULL,
    [JsonData]         NVARCHAR (MAX)   NOT NULL,
    [JsonMetadata]     NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Events] PRIMARY KEY NONCLUSTERED ([Position] ASC),
    CONSTRAINT [FK_Events_Streams] FOREIGN KEY ([StreamIdInternal]) REFERENCES [dbo].[Streams] ([IdInternal])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Messages_Position]
    ON [dbo].[Messages]([Position] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Messages_StreamIdInternal_Id]
    ON [dbo].[Messages]([StreamIdInternal] ASC, [Id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Messages_StreamIdInternal_Revision]
    ON [dbo].[Messages]([StreamIdInternal] ASC, [StreamVersion] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Messages_StreamIdInternal_Created]
    ON [dbo].[Messages]([StreamIdInternal] ASC, [Created] ASC);


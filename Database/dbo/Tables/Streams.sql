CREATE TABLE [dbo].[Streams] (
    [Id]         CHAR (42)       NOT NULL,
    [IdOriginal] NVARCHAR (1000) NOT NULL,
    [IdInternal] INT             IDENTITY (1, 1) NOT NULL,
    [Version]    INT             DEFAULT ((-1)) NOT NULL,
    [Position]   BIGINT          DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_Streams] PRIMARY KEY CLUSTERED ([IdInternal] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Streams_Id]
    ON [dbo].[Streams]([Id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'version', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Streams';


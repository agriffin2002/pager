IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fs_requestedpage]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[fs_requestedpage](
		[RequestId] [int] IDENTITY(1,1) NOT NULL,
		[Location] [varchar](50) NOT NULL,
		[Comments] [varchar](500) NOT NULL,
		[Priority] [varchar](20) NOT NULL,
		[Status] [varchar](50) NOT NULL,
		[RequestedDate] [datetime] NOT NULL,
		[AcceptedDate] [datetime] NULL,
		[CompletedDate] [datetime] NULL,
	 CONSTRAINT [PK_fs_requestedpage] PRIMARY KEY CLUSTERED 
	(
		[RequestId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END

GO
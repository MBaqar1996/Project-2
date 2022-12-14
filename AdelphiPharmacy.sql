USE [AdelphiPharmacy]
GO
/****** Object:  Table [dbo].[tbRegistration]    Script Date: 12/03/2022 08:46:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbRegistration](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[authority] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemRegistration]    Script Date: 12/03/2022 08:46:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemRegistration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[Generic] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Sale] [varchar](50) NULL,
 CONSTRAINT [PK_ItemRegistration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

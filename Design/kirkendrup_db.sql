USE [mtweb_dk_db]
GO
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[group] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384142 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384144 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384147 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384149 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C0138414B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C0138414E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384151 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384153 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384155 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384158 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C0138415A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C0138415D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384160 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C01384161 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841BF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x0000A31C0138413F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x0000A31C0138413D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000A31C01384138 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A31C013841C1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A31C013841C3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A31C013841C5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841C7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841CA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841CC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841CF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841D1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 0, N'd59be02f-1df9-4228-aa1e-01917d806cda', N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(0x0000A31C013841D3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1045, 0, -1, 0, 1, N'-1,1045', 2, N'7e3962cc-ce20-4ffc-b661-5897a894ba7e', N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A31C013841D5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, 0, 1, N'-1,1046', 0, N'8949e9e7-7875-413d-803b-a610d92f1b55', N'Master', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A31C013DDAB2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, -1, 0, 1, N'-1,1047', 0, N'4575ba03-2185-451a-8982-a5d1233ecfa1', N'FrontPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A31C013E21BB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, 1046, 0, 2, N'-1,1046,1048', 38, N'c3422a74-cbb6-440e-817f-d552128ff948', N'Forside', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A31C013E21EB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 0, N'142032a1-4b1b-4f70-b570-6e52eccd604b', N'Forside', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A31C0142AC80 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, 1046, 0, 2, N'-1,1046,1050', 15, N'dcbd1493-454b-4b30-9c43-9f61729e4df7', N'Bestyrelsen', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A335012501E2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, 1046, 0, 2, N'-1,1046,1051', 18, N'0c572ccd-2664-493e-9983-595c6fb10633', N'Nyheder', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A33501257E66 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1052, 0, 1049, 0, 2, N'-1,1049,1052', 0, N'195f8520-ed12-4878-9ee6-48ce82db017e', N'Bestyrelsen', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A3350125DC06 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1053, 0, 1049, 0, 2, N'-1,1049,1053', 1, N'00c71ef5-fb80-473e-87b1-1d022e000d85', N'Nyheder', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A33501260CDB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, -1, 0, 1, N'-1,1054', 1, N'6c566c46-3502-4765-a034-99b70fcf7a8f', N'Items', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A33601076087 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1055, 0, 1054, 0, 2, N'-1,1054,1055', 14, N'bf5bfab8-5001-4c08-9c00-d8fe48e17e94', N'Bestyrelsesmedlem', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A33601078238 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1056, 0, -1, 0, 1, N'-1,1056', 1, N'df41af74-1b85-4ac3-b5bd-672bbeab9564', N'BoardMembers', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A336010A1193 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1057, 0, 1052, 0, 3, N'-1,1049,1052,1057', 0, N'acf180f9-6853-45a4-84e7-1c950ac62be8', N'Tina Restrup Drue', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A336010C4E13 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1058, 0, -1, 1, 1, N'-1,1058', 0, N'9bbb242b-7640-4c09-866e-c1558c8dfb05', N'Billder', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A336011C1CC9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1059, 0, 1058, 1, 2, N'-1,1058,1059', 0, N'5e8addc6-5eae-48a3-b29f-c400d02c0ba1', N'av094gM_460s.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A336011C26AA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1060, 0, 1052, 0, 3, N'-1,1049,1052,1060', 2, N'ccac0d3a-f185-468e-8cd5-c2c9fdec13cf', N'Inge Ellegaard', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A336011D148F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1061, 0, 1054, 0, 2, N'-1,1054,1061', 13, N'd432e61f-46d8-4575-af1a-b18d338894a6', N'Nyhed', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A338012659B4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1062, 0, 1053, 0, 3, N'-1,1049,1053,1062', 0, N'496be49b-5fd2-41a2-b724-93010b9eafdf', N'Nyt', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A3380127B582 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1063, 0, 1053, 0, 3, N'-1,1049,1053,1063', 1, N'3b380cd5-0dc6-4ec3-b5de-399e10d8e104', N'Nyhed2', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A3380127D0E6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1064, 0, -1, 0, 1, N'-1,1064', 1, N'08ea81a2-31a1-46b4-a142-9666e4d7b606', N'Nyheder', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A34400EC0539 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1065, 0, -1, 0, 1, N'-1,1065', 1, N'b5d01fcf-e011-4e7e-b927-27f0f7ec9a68', N'TextPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A34400F7BAAC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1066, 0, 1046, 0, 2, N'-1,1046,1066', 24, N'b7276bb2-b94f-43b5-a626-ae40afb42339', N'Tekstside', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A34400F7BAF3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1067, 0, 1049, 0, 2, N'-1,1049,1067', 2, N'316d0aee-1d80-4ecd-86fc-1e9de75018f0', N'Info', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A34400F81593 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1068, 0, -1, 0, 1, N'-1,1068', 1, N'66de016e-c364-4c23-a6aa-5e3d153b4208', N'PrivateArea', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A34400F99AD7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1069, 0, 1046, 0, 2, N'-1,1046,1069', 35, N'3a6f5c67-0a7c-4ab1-bf91-e8a3d621feed', N'Privat', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A34400F99B1A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1070, 0, 1049, 0, 2, N'-1,1049,1070', 4, N'db7c7fee-a17a-4042-b8b6-b999c7a3ae4b', N'Beboer login', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A34400FBB578 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1071, 0, -1, 0, 1, N'-1,1071', 1, N'277bd31c-970f-45d6-830f-8a9bc952aad7', N'_umbracoSystemDefaultProtectType', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(0x0000A34400FC6844 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1072, 0, -1, 0, 1, N'-1,1072', 0, N'794f5816-0c6e-4570-a343-f151085d2d34', N'kirkendrup', N'39eb0f98-b348-42a1-8662-e7eb18487560', CAST(0x0000A34400FC693F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1073, 0, -1, 0, 0, N'-1,1073', 0, N'b28f0d77-2798-4ba5-8cd7-d0b0afa3ea0e', N'__umbracoRole_kirkendrup', N'366e63b9-880f-4e13-a61c-98069b029728', CAST(0x0000A34400FC69F4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1074, 0, -1, 0, 1, N'-1,1074', 1, N'21f33009-f73a-44aa-b61d-70e6a25afbf8', N'test', N'39eb0f98-b348-42a1-8662-e7eb18487560', CAST(0x0000A3440101A008 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1075, 0, -1, 0, 0, N'-1,1075', 0, N'7f8db3f1-679c-4068-aa3c-8b21e2790ecb', N'__umbracoRole_test', N'366e63b9-880f-4e13-a61c-98069b029728', CAST(0x0000A3440101A0C2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1076, 1, -21, 0, 1, N'-1,-21,1076', 3, N'4eae9c78-27d9-4bea-9394-636c5f20fff0', N'10151338_10152166831089332_7641016017432005224_n.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358014E65F4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1077, 1, -21, 1, 1, N'-1,-21,1077', 1, N'd15c189b-359a-4f9d-8ae6-6177c95928c9', N'Kirkendrupæbletræ.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358014E661E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1078, 1, -21, 0, 1, N'-1,-21,1078', 2, N'15c2ed6a-4d40-45de-a0b7-400cd14a9e7b', N'Kirkendrupæbletræ.jpg (1)', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358014EDDDA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, 1058, 0, 2, N'-1,1058,1079', 1, N'6fa1529c-c74c-4dcb-aa55-36954dcd5628', N'Kirkendrupæbletræ.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A3580151C64E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1080, 1, -21, 0, 1, N'-1,-21,1080', 4, N'418efca1-3f93-45c1-8e42-24f15bbfeb32', N'Tina.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A3580156E1BC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, 1058, 1, 2, N'-1,1058,1081', 3, N'1e75e977-7f64-48dd-b4bb-8ee32ac4e123', N'Bestyrelsen', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A35801595602 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1081, 0, 3, N'-1,1058,1081,1082', 0, N'6021d942-2af7-43a2-9b9c-f32908849932', N'Inge.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A3580159806F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1083, 0, 1081, 0, 3, N'-1,1058,1081,1083', 1, N'1885fbe8-4619-44a6-a966-0999cc61aea6', N'Heidi.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A3580159808B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1084, 0, 1081, 0, 3, N'-1,1058,1081,1084', 2, N'aa0e5935-7f8e-461c-96cd-0e9404c33dec', N'Kasper.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358015980A2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1085, 0, 1081, 0, 3, N'-1,1058,1081,1085', 3, N'749593b8-50e7-47b6-ba9e-e912737a1600', N'Tina.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358015980BA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1086, 0, 1081, 0, 3, N'-1,1058,1081,1086', 4, N'acb76111-8399-4e72-9c33-262fef86d1d5', N'Kasper2.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358015980D1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1087, 0, 1052, 1, 3, N'-1,1049,1052,1087', 3, N'b2cdf0f8-9cd1-4ebd-b405-9c5917c1457c', N'Kasper Drevs Christensen', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A358015A7235 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1088, 0, 1052, 1, 3, N'-1,1049,1052,1088', 1, N'e888abe6-77bb-40a2-91c7-bb714b04ce5a', N'Heidi', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A358015B1B1F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1089, 0, 1052, 1, 3, N'-1,1049,1052,1089', 4, N'9088e794-49a6-4587-b881-8a1cdfe00308', N'Kasper', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A358015B6D22 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1090, 0, 1049, 1, 2, N'-1,1049,1090', 3, N'b8e3333a-22fc-447b-aa63-e9bf3704dde3', N'Til salg', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A3580160536D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1091, 0, -1, 1, 1, N'-1,1091', 1, N'd63f1a38-6c01-4789-b776-fa5d8b82183f', N'Referater', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A3580166C2D0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1092, 0, -1, 0, 1, N'-1,1092', 2, N'00d1002f-7294-48b1-ad5b-90859fe7b1cd', N'Generalforsamling 12032012.pdf', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A35801670E20 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1093, 0, 1091, 0, 2, N'-1,1091,1093', 0, N'd08db032-3f5c-495f-8df6-11fba6d22917', N'Generalforsamling 12032012.pdf', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A35801670E2E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1094, 0, -1, 1, 1, N'-1,1094', 3, N'0c534c27-20c2-4cf3-8242-5f288a0d5e3e', N'KDH17', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AA22F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1095, 0, 1094, 0, 2, N'-1,1094,1095', 0, N'06d60a56-d23f-4881-9252-545a58d8baed', N'02.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AAC4B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1096, 0, 1094, 0, 2, N'-1,1094,1096', 1, N'3ad7e196-5430-4605-836c-85e693509481', N'01.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AACC0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1097, 0, 1094, 0, 2, N'-1,1094,1097', 2, N'605a71d2-8d23-4dc9-b8fd-cc80726926fd', N'04.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AAD06 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1098, 0, 1094, 0, 2, N'-1,1094,1098', 3, N'd6626c57-839e-43d2-af01-be0cb22a6c19', N'03.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AAD72 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1099, 0, 1094, 0, 2, N'-1,1094,1099', 4, N'8b12fbd2-2af4-4161-863b-2dc440f28d36', N'05.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AAF00 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1100, 0, 1094, 0, 2, N'-1,1094,1100', 5, N'9ecb8c84-dc23-4e2e-b969-a5f3255aabe5', N'06.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB166 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1101, 0, 1094, 0, 2, N'-1,1094,1101', 6, N'b8be6946-a49f-421c-b718-c84185e26426', N'10.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB292 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1102, 0, 1094, 0, 2, N'-1,1094,1102', 7, N'f01b4f76-6f51-4712-a60c-60ba4c267c30', N'07.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB2B3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1103, 0, 1094, 0, 2, N'-1,1094,1103', 8, N'c5740a8e-fb1b-43af-a09e-a4852b2f4125', N'08.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB3BA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1104, 0, 1094, 0, 2, N'-1,1094,1104', 9, N'134886cb-3289-479a-9c65-3e5089d9dfeb', N'11.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB3DF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1105, 0, 1094, 0, 2, N'-1,1094,1105', 10, N'215b1190-66bf-4867-a0d8-bd913e1d0af6', N'12.jpeg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB4BB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1106, 0, 1094, 0, 2, N'-1,1094,1106', 11, N'3c116f69-ef4d-4f96-9c4a-0ecb3d5a77e1', N'09.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A358016AB99F AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, 1046, CAST(0x0000A31C013DDAE2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, 1048, CAST(0x0000A31C013E2209 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, 1048, CAST(0x0000A31C013E6A2C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, 1048, CAST(0x0000A31C0142974C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, 0, CAST(0x0000A31C0142A434 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, 1049, CAST(0x0000A31C0142ACDA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, 1050, CAST(0x0000A3350125022E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, 1050, CAST(0x0000A33501254013 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, 1051, CAST(0x0000A33501257E93 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, 1051, CAST(0x0000A3350125B980 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, 1048, CAST(0x0000A3350125C683 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, 0, CAST(0x0000A3350125D039 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, 1052, CAST(0x0000A3350125DCAF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 0, CAST(0x0000A3350125E13B AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, 1051, CAST(0x0000A3350125FFDB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 0, CAST(0x0000A33501260656 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1053, CAST(0x0000A33501260D56 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 1048, CAST(0x0000A335013A0816 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1048, CAST(0x0000A335013A1FEC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1048, CAST(0x0000A335013A32E2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, 1049, CAST(0x0000A335013A42EA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1048, CAST(0x0000A335013AFE8E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1049, CAST(0x0000A335013B0CD5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, 1049, CAST(0x0000A335013B6802 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, 1054, CAST(0x0000A336010760BF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, 1055, CAST(0x0000A33601078263 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, 1055, CAST(0x0000A336010856E8 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 1050, CAST(0x0000A3360108B53C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 0, CAST(0x0000A336010C3426 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 1057, CAST(0x0000A336010C4E9E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, 1055, CAST(0x0000A336010C64E6 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, 1055, CAST(0x0000A336010DC398 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, 1055, CAST(0x0000A336010DD987 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, 1055, CAST(0x0000A336010DE66F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, 1055, CAST(0x0000A336010DFB47 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, 1055, CAST(0x0000A336010E03DC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, 1050, CAST(0x0000A336010E1042 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, 1050, CAST(0x0000A336010E1DDD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, 1050, CAST(0x0000A336010E6FBB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 1050, CAST(0x0000A336010E7E91 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 1052, CAST(0x0000A336010EC905 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 1057, CAST(0x0000A336011C0D3C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 0, CAST(0x0000A336011C1486 AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 0, 1058, CAST(0x0000A336011C1D04 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 0, CAST(0x0000A336011C268E AS DateTime), N'New', N'Media ''av094gM_460s.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 0, 1059, CAST(0x0000A336011C26EA AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 0, 1058, CAST(0x0000A336011C29A3 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 0, 1057, CAST(0x0000A336011C4763 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 0, 0, CAST(0x0000A336011CFEBF AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 0, 1060, CAST(0x0000A336011D1512 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 0, -1, CAST(0x0000A336012047FA AS DateTime), N'Save', N'Save ContentTypes performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (52, 0, 1061, CAST(0x0000A338012659DF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (53, 0, -1, CAST(0x0000A338012670B5 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (54, 0, 1061, CAST(0x0000A338012670BC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (55, 0, 1051, CAST(0x0000A33801269664 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (56, 0, 1061, CAST(0x0000A3380126A892 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (57, 0, 1061, CAST(0x0000A3380126C828 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (58, 0, 1061, CAST(0x0000A338012717C7 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (59, 0, 1061, CAST(0x0000A33801277980 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (60, 0, 0, CAST(0x0000A33801279A0A AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (61, 0, 1062, CAST(0x0000A3380127B5D8 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (62, 0, 0, CAST(0x0000A3380127BB7D AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (63, 0, 1063, CAST(0x0000A3380127D11E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (64, 0, 1061, CAST(0x0000A33801287E99 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (65, 0, 1051, CAST(0x0000A34400EC96B7 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (66, 0, 1053, CAST(0x0000A34400EC9F04 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (67, 0, 1051, CAST(0x0000A34400ED5A76 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (68, 0, 1062, CAST(0x0000A34400F2906F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (69, 0, 1063, CAST(0x0000A34400F29636 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (70, 0, 1066, CAST(0x0000A34400F7BB40 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (71, 0, 1066, CAST(0x0000A34400F7C882 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (72, 0, 1048, CAST(0x0000A34400F7D840 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (73, 0, 1066, CAST(0x0000A34400F7E560 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (74, 0, 1066, CAST(0x0000A34400F7F310 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (75, 0, 1066, CAST(0x0000A34400F802E7 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (76, 0, 0, CAST(0x0000A34400F809A6 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (77, 0, 1067, CAST(0x0000A34400F8161F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (78, 0, 1066, CAST(0x0000A34400F84079 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (79, 0, 1069, CAST(0x0000A34400F99B5B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (80, 0, 1069, CAST(0x0000A34400F9B836 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (81, 0, 1069, CAST(0x0000A34400FAC990 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (82, 0, 1069, CAST(0x0000A34400FAD052 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (83, 0, 1069, CAST(0x0000A34400FAE727 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (84, 0, 1069, CAST(0x0000A34400FAFB6C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (85, 0, 1069, CAST(0x0000A34400FB1CE5 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (86, 0, 1069, CAST(0x0000A34400FB3F90 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (87, 0, 1069, CAST(0x0000A34400FB4D7C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (88, 0, 1069, CAST(0x0000A34400FB56CD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (89, 0, 1048, CAST(0x0000A34400FB61B1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (90, 0, 0, CAST(0x0000A34400FB744A AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (91, 0, 1070, CAST(0x0000A34400FBB606 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (92, 0, 1069, CAST(0x0000A34400FBC35A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (93, 0, 1070, CAST(0x0000A34400FBD316 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (94, 0, 1048, CAST(0x0000A344010D97FF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (95, 0, 1048, CAST(0x0000A344010DC5E0 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (96, 0, 1048, CAST(0x0000A344010F290C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (97, 0, 1049, CAST(0x0000A344010F33E5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (98, 0, 1049, CAST(0x0000A344010F55B2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (99, 0, 0, CAST(0x0000A358014E65C0 AS DateTime), N'New', N'Media ''10151338_10152166831089332_7641016017432005224_n.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (100, 0, 0, CAST(0x0000A358014E65C5 AS DateTime), N'New', N'Media ''10151338_10152166831089332_7641016017432005224_n.jpg'' was created')
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (101, 0, 1077, CAST(0x0000A358014E6628 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (102, 0, 1076, CAST(0x0000A358014E6628 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (103, 1, 1058, CAST(0x0000A358014E6A8D AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (104, 1, 1077, CAST(0x0000A358014E8E17 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (105, 1, 1077, CAST(0x0000A358014E92DA AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (106, 1, 1077, CAST(0x0000A358014E9E00 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (107, 1, 1077, CAST(0x0000A358014EC238 AS DateTime), N'Move', N'Move Media to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (108, 0, 0, CAST(0x0000A358014EDDB9 AS DateTime), N'New', N'Media ''Kirkendrupæbletræ.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (109, 0, 1078, CAST(0x0000A358014EDDDE AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (110, 1, 1058, CAST(0x0000A358014EE134 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (111, 1, 1049, CAST(0x0000A358014EF689 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (112, 1, 1078, CAST(0x0000A358014F16C7 AS DateTime), N'Move', N'Move Media to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (113, 1, 1059, CAST(0x0000A358014F28DA AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (114, 1, 1049, CAST(0x0000A358014F39EF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (115, 0, 0, CAST(0x0000A3580151C649 AS DateTime), N'New', N'Media ''Kirkendrupæbletræ.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (116, 0, 1079, CAST(0x0000A3580151C652 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (117, 1, 1058, CAST(0x0000A3580151C8FF AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (118, 1, 1058, CAST(0x0000A3580151F0BF AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (119, 1, 1058, CAST(0x0000A358015200BC AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (120, 1, 1058, CAST(0x0000A358015218FF AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (121, 1, 1076, CAST(0x0000A35801523D65 AS DateTime), N'Move', N'Move Media to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (122, 1, 1049, CAST(0x0000A3580152523C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (123, 1, 1062, CAST(0x0000A3580154B51C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (124, 1, 1057, CAST(0x0000A35801554E14 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (125, 0, 0, CAST(0x0000A3580156E1A0 AS DateTime), N'New', N'Media ''Tina.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (126, 0, 1080, CAST(0x0000A3580156E1C1 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (127, 1, 1058, CAST(0x0000A3580156E4D0 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (128, 1, 1057, CAST(0x0000A3580156F431 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (129, 1, 1057, CAST(0x0000A3580156FECB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (130, 1, 1057, CAST(0x0000A35801571ABC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (131, 1, 1057, CAST(0x0000A3580157270F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (132, 1, 0, CAST(0x0000A35801594680 AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (133, 1, 1081, CAST(0x0000A35801595610 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (134, 1, 1080, CAST(0x0000A3580159669D AS DateTime), N'Move', N'Move Media to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (135, 0, 0, CAST(0x0000A35801598065 AS DateTime), N'New', N'Media ''Inge.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (136, 0, 0, CAST(0x0000A3580159806F AS DateTime), N'New', N'Media ''Heidi.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (137, 0, 0, CAST(0x0000A35801598082 AS DateTime), N'New', N'Media ''Kasper.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (138, 0, 1082, CAST(0x0000A35801598086 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (139, 0, 0, CAST(0x0000A3580159808B AS DateTime), N'New', N'Media ''Tina.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (140, 0, 0, CAST(0x0000A35801598099 AS DateTime), N'New', N'Media ''Kasper2.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (141, 0, 1083, CAST(0x0000A358015980A7 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (142, 0, 1084, CAST(0x0000A358015980BE AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (143, 0, 1085, CAST(0x0000A358015980D6 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (144, 0, 1086, CAST(0x0000A358015980ED AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (145, 1, 1081, CAST(0x0000A35801598DAC AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (146, 1, 1057, CAST(0x0000A35801599F08 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (147, 1, 1060, CAST(0x0000A358015A29D3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (148, 1, 0, CAST(0x0000A358015A37D0 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (149, 1, 1087, CAST(0x0000A358015A7243 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (150, 1, 1057, CAST(0x0000A358015AB53E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (151, 1, 1060, CAST(0x0000A358015ABC0D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (152, 1, 0, CAST(0x0000A358015AEC44 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (153, 1, 1088, CAST(0x0000A358015B1B49 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (154, 0, 0, CAST(0x0000A358015B3D95 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (155, 1, 0, CAST(0x0000A358015B47A7 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (156, 1, 1089, CAST(0x0000A358015B6D2C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (157, 1, 1067, CAST(0x0000A358015C0D0A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (158, 1, 1067, CAST(0x0000A358015C983D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (159, 1, 1067, CAST(0x0000A358015CB9D2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (160, 1, 1067, CAST(0x0000A358015CED41 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (161, 1, 1067, CAST(0x0000A358015D07E1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (162, 1, 1067, CAST(0x0000A358015D1904 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (163, 1, 1067, CAST(0x0000A358015D9914 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (164, 1, 1067, CAST(0x0000A358015DA6E3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (165, 1, 1067, CAST(0x0000A358015DF110 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (166, 1, 1067, CAST(0x0000A358015E2B25 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (167, 1, 1067, CAST(0x0000A358015E71C0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (168, 1, 0, CAST(0x0000A358015FC073 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (169, 1, 0, CAST(0x0000A35801602FBD AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (170, 1, 0, CAST(0x0000A3580160413F AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (171, 1, 1090, CAST(0x0000A3580160537B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (172, 1, 1090, CAST(0x0000A3580160AE60 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (173, 1, 1090, CAST(0x0000A3580160B425 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (174, 0, 0, CAST(0x0000A3580160E1E7 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (175, 1, 0, CAST(0x0000A3580166B75E AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (176, 1, 1091, CAST(0x0000A3580166C2D5 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (177, 0, 0, CAST(0x0000A35801670E1B AS DateTime), N'New', N'Media ''Generalforsamling 12032012.pdf'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (178, 0, 1092, CAST(0x0000A35801670E24 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (179, 0, 0, CAST(0x0000A35801670E29 AS DateTime), N'New', N'Media ''Generalforsamling 12032012.pdf'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (180, 0, 1093, CAST(0x0000A35801670E37 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (181, 1, 1091, CAST(0x0000A35801671289 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (182, 1, 1070, CAST(0x0000A3580167A869 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (183, 1, 1070, CAST(0x0000A35801688E06 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (184, 1, 1070, CAST(0x0000A3580168E261 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (185, 1, 0, CAST(0x0000A358016A98CA AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (186, 1, 1094, CAST(0x0000A358016AA242 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (187, 0, 0, CAST(0x0000A358016AAC0E AS DateTime), N'New', N'Media ''02.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (188, 0, 0, CAST(0x0000A358016AAC4B AS DateTime), N'New', N'Media ''01.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (189, 0, 1095, CAST(0x0000A358016AAC54 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (190, 0, 0, CAST(0x0000A358016AAC9A AS DateTime), N'New', N'Media ''04.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (191, 0, 1096, CAST(0x0000A358016AACD2 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (192, 0, 1097, CAST(0x0000A358016AAD0F AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (193, 0, 0, CAST(0x0000A358016AAD3A AS DateTime), N'New', N'Media ''03.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (194, 0, 1098, CAST(0x0000A358016AAD7B AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (195, 0, 0, CAST(0x0000A358016AAE90 AS DateTime), N'New', N'Media ''05.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (196, 0, 1099, CAST(0x0000A358016AAF05 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (197, 0, 0, CAST(0x0000A358016AB0F1 AS DateTime), N'New', N'Media ''06.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (198, 0, 1100, CAST(0x0000A358016AB170 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (199, 0, 0, CAST(0x0000A358016AB1EE AS DateTime), N'New', N'Media ''10.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (200, 0, 0, CAST(0x0000A358016AB235 AS DateTime), N'New', N'Media ''07.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (201, 0, 1101, CAST(0x0000A358016AB297 AS DateTime), N'Save', N'Save Media performed by user')
GO
print 'Processed 200 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (202, 0, 1102, CAST(0x0000A358016AB2B8 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (203, 0, 0, CAST(0x0000A358016AB32D AS DateTime), N'New', N'Media ''08.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (204, 0, 0, CAST(0x0000A358016AB35C AS DateTime), N'New', N'Media ''11.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (205, 0, 1103, CAST(0x0000A358016AB3BE AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (206, 0, 1104, CAST(0x0000A358016AB3E9 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (207, 0, 0, CAST(0x0000A358016AB44B AS DateTime), N'New', N'Media ''12.jpeg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (208, 0, 1105, CAST(0x0000A358016AB4C5 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (209, 0, 0, CAST(0x0000A358016AB912 AS DateTime), N'New', N'Media ''09.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (210, 0, 1106, CAST(0x0000A358016AB9A4 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (211, 1, 1094, CAST(0x0000A358016AC62A AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (212, 1, 1090, CAST(0x0000A358016BFFCE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (213, 0, 1079, CAST(0x0000A3C200C27DA3 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (214, 0, 1057, CAST(0x0000A3C200C454D0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (215, 0, -1, CAST(0x0000A3C200C4E50E AS DateTime), N'Save', N'Save ContentTypes performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (216, 0, 1055, CAST(0x0000A3C200C5B6DC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (217, 0, 1057, CAST(0x0000A3C200C5D45F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (218, 1, 1046, CAST(0x0000A4100114AD72 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (219, 0, 1046, CAST(0x0000A4100114BFFE AS DateTime), N'Save', N'Save ContentType performed by user')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) NULL,
	[stylesheetPropertyValue] [nvarchar](400) NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) NOT NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1048)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1050)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1051)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1066)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1069)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1054, 1055)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1054, 1061)
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (531, 1044, N'Member', N'icon-user', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'icon-folder', N'folder.png', NULL, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'icon-picture', N'mediaPhoto.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'icon-document', N'mediaFile.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (535, 1046, N'Master', N'.sprTreeFolder', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (536, 1048, N'FrontPage', N'icon-home', N'folder.png', N'', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (537, 1050, N'BoardMembers', N'icon-user-females', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (538, 1051, N'NewsPage', N'icon-radio', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (539, 1054, N'Items', N'.sprTreeFolder', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (540, 1055, N'BoardMember', N'icon-user', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (541, 1061, N'NewsItem', N'icon-message', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (542, 1066, N'TextPage', N'icon-article', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (543, 1069, N'PrivateArea', N'icon-burn', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (544, 1071, N'_umbracoSystemDefaultProtectType', N'member.gif', N'folder.png', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
/****** Object:  Table [dbo].[cmsContent]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContent] ON
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (1, 1049, 1048)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1052, 1050)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1053, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1057, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (5, 1058, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (6, 1059, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (7, 1060, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (8, 1062, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (9, 1063, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (10, 1067, 1066)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (11, 1070, 1069)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (12, 1072, 1071)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (13, 1074, 1071)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (14, 1076, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (15, 1077, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (16, 1078, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (17, 1079, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (18, 1080, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (19, 1081, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (20, 1082, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (21, 1083, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (22, 1084, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (23, 1085, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (24, 1086, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (25, 1087, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (26, 1088, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (27, 1089, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (28, 1090, 1066)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (29, 1091, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (30, 1092, 1033)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (31, 1093, 1033)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (32, 1094, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (33, 1095, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (34, 1096, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (35, 1097, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (36, 1098, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (37, 1099, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (38, 1100, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (39, 1101, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (40, 1102, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (41, 1103, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (42, 1104, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (43, 1105, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (44, 1106, 1032)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] ON
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (1, -49, N'Umbraco.TrueFalse', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (2, -51, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (3, -87, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (4, -88, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (5, -89, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (6, -90, N'Umbraco.UploadField', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (7, -92, N'Umbraco.NoEdit', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (8, -36, N'Umbraco.DateTime', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (9, -37, N'Umbraco.ColorPickerAlias', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (10, -38, N'Umbraco.FolderBrowser', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (11, -39, N'Umbraco.DropDownMultiple', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (12, -40, N'Umbraco.RadioButtonList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (13, -41, N'Umbraco.Date', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (14, -42, N'Umbraco.DropDown', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (15, -43, N'Umbraco.CheckBoxList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (16, 1034, N'Umbraco.ContentPickerAlias', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (17, 1035, N'Umbraco.MediaPicker', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (18, 1036, N'Umbraco.MemberPicker', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (21, 1040, N'Umbraco.RelatedLinks', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (22, 1041, N'Umbraco.Tags', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (25, 1045, N'Umbraco.MultipleMediaPicker', N'Nvarchar')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (1, 1047, NULL, N'FrontPage', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (2, 1056, NULL, N'BoardMembers', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (3, 1064, NULL, N'NewsPage', N'')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (4, 1065, NULL, N'TextPage', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (5, 1068, NULL, N'PrivateArea', N' ')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [int] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userLanguage]) VALUES (0, 0, 0, 1, -1, -1, N'Mads', N'madstjornfelt@gmail.com', N't2NOK9oGGoSjr/NzD8rypu1IUNM=', N'madstjornfelt@gmail.com', N'en')
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userLanguage]) VALUES (1, 0, 0, 1, -1, -1, N'Admin', N'Admin', N't2NOK9oGGoSjr/NzD8rypu1IUNM=', N'test@test.dk', N'en')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'users')
/****** Object:  Table [dbo].[cmsTask]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1048, 1047, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1050, 1056, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1051, 1064, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1066, 1065, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1069, 1068, 1)
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[alias] [nvarchar](255) NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A35801599EF0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', N'Forside', NULL, NULL, CAST(0x0000A344010F554E AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'a5e30a3c-3c7b-42d7-ae01-15074bc33ac2', N'Info', NULL, NULL, CAST(0x0000A358015DA6D5 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 1, 0, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', N'Kasper Drevs Christensen', NULL, NULL, CAST(0x0000A358015B3D32 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 1, N'e8cf534a-5469-4340-8db6-174502b131f2', N'Beboer login', NULL, NULL, CAST(0x0000A35801688DF8 AS DateTime), 1068, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1052, 1, 0, N'ce7bd866-cf9e-446b-8489-21fcfc2bf127', N'Bestyrelsen', NULL, NULL, CAST(0x0000A336010EC897 AS DateTime), 1056, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'c23aada2-fbd8-4c51-b25c-230bdd0c4322', N'Info', NULL, NULL, CAST(0x0000A358015D07CE AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 1, 0, N'cfa3adec-711d-4354-b271-3394a995754a', N'Heidi', NULL, NULL, CAST(0x0000A358015B3D0D AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 0, 1, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', N'Kasper Drevs Christensen', NULL, NULL, CAST(0x0000A358015A7235 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 0, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A3C200C453F6 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 0, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', N'Beboer login', NULL, NULL, CAST(0x0000A34400FBD2AA AS DateTime), 1068, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1090, 0, 1, N'48c33b3b-f618-4376-b0d4-45d3c986aa16', N'Til salg', NULL, NULL, CAST(0x0000A3580160AE57 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 0, N'687fc743-841e-4e85-93c1-4636b5bd6558', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A336010C4E13 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'699d607d-8613-46eb-97f2-48907a4cd6f5', N'Info', NULL, NULL, CAST(0x0000A358015CB995 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1062, 1, 1, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', N'Nyt', NULL, NULL, CAST(0x0000A3580154B505 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1052, 0, 0, N'272d1b61-abf2-408d-85b9-562bea521d86', N'Bestyrelsen', NULL, NULL, CAST(0x0000A3350125DC06 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 1, N'399983fa-4457-427c-b1bd-57d7f8895286', N'Inge Ellegaard', NULL, NULL, CAST(0x0000A358015ABC04 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'e878a057-c73e-448b-b522-6155ef2cfed7', N'Info', NULL, NULL, CAST(0x0000A358015C0D01 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'c1122eb3-8c93-49ed-afce-66bf3964e552', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A3580156FEC2 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A35801572706 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'40383842-e795-425b-b2d4-6fb2a848c925', N'Forside', NULL, NULL, CAST(0x0000A335013A40CF AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 1, N'f610300b-3d34-4f55-ad5c-740522b8f636', N'Forside', NULL, NULL, CAST(0x0000A358014EF650 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1090, 0, 1, N'0d0373a4-fb6e-4fcc-8735-7b27002dc22d', N'Til salg', NULL, NULL, CAST(0x0000A3580160B417 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 1, 0, N'81bac049-49c5-475e-964c-7e791fff085f', N'Inge Ellegaard', NULL, NULL, CAST(0x0000A358015B3D20 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 0, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A336011C0CB5 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 0, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A336011C46F0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1089, 1, 1, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', N'Kasper', NULL, NULL, CAST(0x0000A358015B6D22 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1090, 0, 0, N'7f108a38-fb5d-49be-aecd-889e7e025699', N'Til salg', NULL, NULL, CAST(0x0000A3580160E1BD AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'1500eb17-62b5-4d20-a06e-8f332c4f3e94', N'Forside', NULL, NULL, CAST(0x0000A335013B0AC1 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 1, N'4da8bccc-1c85-4336-bf9d-994830c35b27', N'Forside', NULL, NULL, CAST(0x0000A358014F39E1 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1090, 1, 1, N'3df844cb-bd15-4b0f-9bd9-998485476386', N'Til salg', NULL, NULL, CAST(0x0000A358016BFFC5 AS DateTime), 1065, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1053, 1, 0, N'48fd52f2-ad3e-413e-bf14-9aee7a115b22', N'Nyheder', NULL, NULL, CAST(0x0000A34400EC9E7F AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1090, 0, 1, N'928198b8-cb65-4e1c-88f8-a6ff3186cd19', N'Til salg', NULL, NULL, CAST(0x0000A3580160536D AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'd090accd-42e2-4119-ad89-aa210c1e020e', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A35801571AB3 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'1ce34566-117c-4539-87be-aba66d463ab8', N'Forside', NULL, NULL, CAST(0x0000A344010F3369 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1063, 1, 0, N'6503a853-b472-405d-9ac7-b156f75aab51', N'Nyhed2', NULL, NULL, CAST(0x0000A34400F295D7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 0, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', N'Beboer login', NULL, NULL, CAST(0x0000A34400FBB578 AS DateTime), 1068, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A35801554DE5 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'41e17d13-334d-4b11-94ad-bd6838330cde', N'Info', NULL, NULL, CAST(0x0000A358015E2B1B AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 0, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', N'Beboer login', NULL, NULL, CAST(0x0000A3580160E1C1 AS DateTime), 1068, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'da9aefb4-fd13-412e-9af9-bf38bfb13c90', N'Info', NULL, NULL, CAST(0x0000A358015DF102 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 1, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', N'Inge Ellegaard', NULL, NULL, CAST(0x0000A358015A29CA AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1062, 0, 0, N'de7406f9-182d-46fe-9491-c7895bacbd84', N'Nyhed1', NULL, NULL, CAST(0x0000A34400F28FE6 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 1, 1, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', N'Beboer login', NULL, NULL, CAST(0x0000A3580168E220 AS DateTime), 1068, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'aafa8954-33f1-4808-bd40-ca3151f08e05', N'Info', NULL, NULL, CAST(0x0000A358015D18DA AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 0, 1, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', N'Heidi', NULL, NULL, CAST(0x0000A358015B1B1F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 1, N'a8cb96be-0582-4212-b29d-dffc116d466c', N'Beboer login', NULL, NULL, CAST(0x0000A3580167A85A AS DateTime), 1068, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'4fcf069f-ac29-480e-a6c8-e4a131f0c7cb', N'Info', NULL, NULL, CAST(0x0000A358015C9838 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 1, 1, N'd1919267-ddb4-48c5-a43a-ef326ffd49ef', N'Info', NULL, NULL, CAST(0x0000A358015E71A4 AS DateTime), 1065, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'9ed3120e-63f2-4889-bee3-efc36e1c78ef', N'Info', NULL, NULL, CAST(0x0000A358015D98EA AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 1, 0, N'17588aac-7f1c-48c8-8617-f06924bab5a8', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A3C200C5D3A4 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1057, 0, 1, N'abda3004-0162-48de-9a52-f15ab4c3096a', N'Tina Restrup Drue', NULL, NULL, CAST(0x0000A358015AB530 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 0, N'090759ad-95b6-4001-8e74-f5bcb211b997', N'Info', NULL, NULL, CAST(0x0000A34400F81593 AS DateTime), 1065, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 0, N'628d064b-6537-448f-9bee-f70d34e24cfb', N'TestMember', NULL, NULL, CAST(0x0000A336011D148F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'e8cf704d-eade-4039-bbc7-f889991fe808', N'Forside', NULL, NULL, CAST(0x0000A31C0142AC80 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 0, 0, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', N'Forside', NULL, NULL, CAST(0x0000A335013B6794 AS DateTime), 1047, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1049, 1, 1, N'8d498405-a794-484c-be84-fdba1312cf63', N'Forside', NULL, NULL, CAST(0x0000A35801525232 AS DateTime), 1047, NULL, 1)
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1049, N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-28T20:31:47" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Admin" writerID="1" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
  <image>1079</image>
</FrontPage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1052, N'<BoardMembers id="1052" key="195f8520-ed12-4878-9ee6-48ce82db017e" parentID="1049" level="2" creatorID="0" sortOrder="0" createDate="2014-05-24T17:49:54" updateDate="2014-05-25T16:25:53" nodeName="Bestyrelsen" urlName="bestyrelsen" path="-1,1049,1052" isDoc="" nodeType="1050" creatorName="Mads" writerName="Mads" writerID="0" template="1056" nodeTypeAlias="BoardMembers">
  <header><![CDATA[Bestyrelsen overskrift]]></header>
  <bodyText><![CDATA[<p>Bestyrelsen brødtekst</p>]]></bodyText>
</BoardMembers>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1053, N'<NewsPage id="1053" key="00c71ef5-fb80-473e-87b1-1d022e000d85" parentID="1049" level="2" creatorID="0" sortOrder="1" createDate="2014-05-24T17:50:36" updateDate="2014-06-08T14:21:30" nodeName="Nyheder" urlName="nyheder" path="-1,1049,1053" isDoc="" nodeType="1051" creatorName="Mads" writerName="Mads" writerID="0" template="1064" nodeTypeAlias="NewsPage" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1057, N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-10-12T12:00:15" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1079</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
  <extraInfo><![CDATA[yderlig info]]></extraInfo>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1058, N'<Folder id="1058" key="9bbb242b-7640-4c09-866e-c1558c8dfb05" parentID="-1" level="1" creatorID="1" sortOrder="0" createDate="2014-05-25T17:14:25" updateDate="2014-06-28T20:48:26" nodeName="Billder" urlName="billder" path="-1,1058" isDoc="" nodeType="1031" writerName="Admin" writerID="1" version="e0616343-a448-4cdc-8d7d-f5e0c956d58d" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1059, N'<Image id="1059" key="5e8addc6-5eae-48a3-b29f-c400d02c0ba1" parentID="1058" level="2" creatorID="1" sortOrder="0" createDate="2014-05-25T17:14:33" updateDate="2014-06-28T20:20:16" nodeName="av094gM_460s.jpg" urlName="av094gm_460sjpg" path="-1,1058,1059" isDoc="" nodeType="1032" writerName="Admin" writerID="1" version="ccc9f61a-14a8-437b-95c9-363e5ed6bf08" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1001/av094gm_460s.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[-1]]></umbracoWidth>
  <umbracoHeight><![CDATA[-1]]></umbracoHeight>
  <umbracoBytes><![CDATA[-1]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1060, N'<BoardMember id="1060" key="ccac0d3a-f185-468e-8cd5-c2c9fdec13cf" parentID="1052" level="3" creatorID="0" sortOrder="2" createDate="2014-05-25T17:17:56" updateDate="2014-06-28T21:04:15" nodeName="Inge Ellegaard" urlName="inge-ellegaard" path="-1,1049,1052,1060" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1082</image>
  <memberTitle><![CDATA[Bestyrelses medlem]]></memberTitle>
  <name><![CDATA[Inge Ellegaard]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1062, N'<NewsItem id="1062" key="496be49b-5fd2-41a2-b724-93010b9eafdf" parentID="1053" level="3" creatorID="0" sortOrder="0" createDate="2014-05-27T17:56:38" updateDate="2014-06-28T20:40:28" nodeName="Nyt" urlName="nyt" path="-1,1049,1053,1062" isDoc="" nodeType="1061" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="NewsItem">
  <date>2014-06-28T00:00:00</date>
  <header><![CDATA[Kirkendruphaven har fået ny hjemmeside]]></header>
  <bodyText><![CDATA[<p>Så er den nye hjemmeside for Kirkendruphaven ved at være klar at gå i luften. Indholdet fra den gamle, skal lige overføres til den nye og så skulle den være klar. På den nye side, vil alle fra bestyrelsen få adgang til at oprette indhold, så siden hele tiden vil være opdateret.</p>]]></bodyText>
</NewsItem>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1063, N'<NewsItem id="1063" key="3b380cd5-0dc6-4ec3-b5de-399e10d8e104" parentID="1053" level="3" creatorID="0" sortOrder="1" createDate="2014-05-27T17:57:01" updateDate="2014-06-08T14:43:13" nodeName="Nyhed2" urlName="nyhed2" path="-1,1049,1053,1063" isDoc="" nodeType="1061" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="NewsItem">
  <date>2014-08-15T00:00:00</date>
  <header><![CDATA[Nyhed2]]></header>
  <bodyText><![CDATA[<p>bodytext2</p>]]></bodyText>
</NewsItem>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1067, N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:15:55" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1070, N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="4" createDate="2014-06-08T15:16:26" updateDate="2014-06-28T21:53:56" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Admin" writerID="1" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder ol.</p>
<p>Kontakt Kasper (23) hvis du glemmer dit login.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>]]></privateBodyText>
  <privateHeader><![CDATA[Forenings dokumenter]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1072, N'<umbracoSystemDefaultProtectType id="1072" key="794f5816-0c6e-4570-a343-f151085d2d34" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-06-08T15:19:00" updateDate="2014-10-12T12:11:12" nodeName="kirkendrup" urlName="kirkendrup" path="-1,1072" isDoc="" nodeType="1071" nodeTypeAlias="_umbracoSystemDefaultProtectType" loginName="kirkendrup" email="ua0e82b9f6c59448e87fc65e8e6060409@example.com">
  <umbracoMemberFailedPasswordAttempts><![CDATA[0]]></umbracoMemberFailedPasswordAttempts>
  <umbracoMemberApproved>1</umbracoMemberApproved>
  <umbracoMemberLockedOut>0</umbracoMemberLockedOut>
  <umbracoMemberLastLogin><![CDATA[10/12/2014 12:11:12 PM]]></umbracoMemberLastLogin>
  <umbracoMemberLastPasswordChangeDate><![CDATA[10/12/2014 12:11:05 PM]]></umbracoMemberLastPasswordChangeDate>
</umbracoSystemDefaultProtectType>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1074, N'<umbracoSystemDefaultProtectType id="1074" key="21f33009-f73a-44aa-b61d-70e6a25afbf8" parentID="-1" level="1" creatorID="0" sortOrder="1" createDate="2014-06-08T15:37:59" updateDate="2014-06-08T15:41:16" nodeName="test" urlName="test" path="-1,1074" isDoc="" nodeType="1071" nodeTypeAlias="_umbracoSystemDefaultProtectType" loginName="test" email="u5d28fbcef45d42ffab7041201b9fa572@example.com">
  <umbracoMemberFailedPasswordAttempts><![CDATA[1]]></umbracoMemberFailedPasswordAttempts>
  <umbracoMemberApproved>1</umbracoMemberApproved>
  <umbracoMemberLockedOut>0</umbracoMemberLockedOut>
  <umbracoMemberLastLogin><![CDATA[08/06/2014 15:41:16]]></umbracoMemberLastLogin>
  <umbracoMemberLastPasswordChangeDate><![CDATA[08/06/2014 15:37:59]]></umbracoMemberLastPasswordChangeDate>
</umbracoSystemDefaultProtectType>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1079, N'<Image id="1079" key="6fa1529c-c74c-4dcb-aa55-36954dcd5628" parentID="1058" level="2" creatorID="0" sortOrder="1" createDate="2014-06-28T20:29:47" updateDate="2014-10-12T11:48:06" nodeName="Kirkendrupæbletræ.jpg" urlName="kirkendrupaebletraejpg" path="-1,1058,1079" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="8d1193d8-6778-4c4f-af81-3deb19fef2af" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1004/imag0011.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[2592]]></umbracoWidth>
  <umbracoHeight><![CDATA[1552]]></umbracoHeight>
  <umbracoBytes><![CDATA[1393715]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1081, N'<Folder id="1081" key="1e75e977-7f64-48dd-b4bb-8ee32ac4e123" parentID="1058" level="2" creatorID="1" sortOrder="3" createDate="2014-06-28T20:57:19" updateDate="2014-06-28T20:58:07" nodeName="Bestyrelsen" urlName="bestyrelsen" path="-1,1058,1081" isDoc="" nodeType="1031" writerName="Admin" writerID="1" version="8665cd4b-5c22-4f50-ade2-ec7b41f1529c" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1082, N'<Image id="1082" key="6021d942-2af7-43a2-9b9c-f32908849932" parentID="1081" level="3" creatorID="0" sortOrder="0" createDate="2014-06-28T20:57:55" updateDate="2014-06-28T20:57:55" nodeName="Inge.jpg" urlName="ingejpg" path="-1,1058,1081,1082" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="1e375505-6197-4a54-8730-af0b2303bb85" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1006/inge.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[135]]></umbracoWidth>
  <umbracoHeight><![CDATA[185]]></umbracoHeight>
  <umbracoBytes><![CDATA[9557]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1083, N'<Image id="1083" key="1885fbe8-4619-44a6-a966-0999cc61aea6" parentID="1081" level="3" creatorID="0" sortOrder="1" createDate="2014-06-28T20:57:56" updateDate="2014-06-28T20:57:56" nodeName="Heidi.jpg" urlName="heidijpg" path="-1,1058,1081,1083" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1007/heidi.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[135]]></umbracoWidth>
  <umbracoHeight><![CDATA[185]]></umbracoHeight>
  <umbracoBytes><![CDATA[7820]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1084, N'<Image id="1084" key="aa0e5935-7f8e-461c-96cd-0e9404c33dec" parentID="1081" level="3" creatorID="0" sortOrder="2" createDate="2014-06-28T20:57:56" updateDate="2014-06-28T20:57:56" nodeName="Kasper.jpg" urlName="kasperjpg" path="-1,1058,1081,1084" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="761b4a08-5409-42fb-896c-5742a9bdace1" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1008/kasper.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[135]]></umbracoWidth>
  <umbracoHeight><![CDATA[185]]></umbracoHeight>
  <umbracoBytes><![CDATA[7594]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1085, N'<Image id="1085" key="749593b8-50e7-47b6-ba9e-e912737a1600" parentID="1081" level="3" creatorID="0" sortOrder="3" createDate="2014-06-28T20:57:56" updateDate="2014-06-28T20:57:56" nodeName="Tina.jpg" urlName="tinajpg" path="-1,1058,1081,1085" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="49fd88e0-ace3-4cdb-bf38-72d0220454ea" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1009/tina.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[135]]></umbracoWidth>
  <umbracoHeight><![CDATA[185]]></umbracoHeight>
  <umbracoBytes><![CDATA[5040]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1086, N'<Image id="1086" key="acb76111-8399-4e72-9c33-262fef86d1d5" parentID="1081" level="3" creatorID="0" sortOrder="4" createDate="2014-06-28T20:57:56" updateDate="2014-06-28T20:57:56" nodeName="Kasper2.jpg" urlName="kasper2jpg" path="-1,1058,1081,1086" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="d049f5f8-4bee-4dfb-8e6f-815a9c94dd2f" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1010/kasper2.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[135]]></umbracoWidth>
  <umbracoHeight><![CDATA[185]]></umbracoHeight>
  <umbracoBytes><![CDATA[9338]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1087, N'<BoardMember id="1087" key="b2cdf0f8-9cd1-4ebd-b405-9c5917c1457c" parentID="1052" level="3" creatorID="1" sortOrder="3" createDate="2014-06-28T21:01:22" updateDate="2014-06-28T21:04:15" nodeName="Kasper Drevs Christensen" urlName="kasper-drevs-christensen" path="-1,1049,1052,1087" isDoc="" nodeType="1055" creatorName="Admin" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1084</image>
  <memberTitle><![CDATA[Supleant / Hjemmeside]]></memberTitle>
  <name><![CDATA[Kasper Drevs Christensen]]></name>
  <email><![CDATA[kasper@drevs.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1088, N'<BoardMember id="1088" key="e888abe6-77bb-40a2-91c7-bb714b04ce5a" parentID="1052" level="3" creatorID="1" sortOrder="1" createDate="2014-06-28T21:03:46" updateDate="2014-06-28T21:04:15" nodeName="Heidi" urlName="heidi" path="-1,1049,1052,1088" isDoc="" nodeType="1055" creatorName="Admin" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1083</image>
  <memberTitle><![CDATA[Næstformand]]></memberTitle>
  <name><![CDATA[Heidi Agerskov Tengs]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1089, N'<BoardMember id="1089" key="9088e794-49a6-4587-b881-8a1cdfe00308" parentID="1052" level="3" creatorID="1" sortOrder="4" createDate="2014-06-28T21:04:56" updateDate="2014-06-28T21:04:56" nodeName="Kasper" urlName="kasper" path="-1,1049,1052,1089" isDoc="" nodeType="1055" creatorName="Admin" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1086</image>
  <memberTitle><![CDATA[Kasser]]></memberTitle>
  <name><![CDATA[Kasper Guldborg]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1090, N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="3" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T22:05:16" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>
<p> </p>
<p><img style="width: 375px; height:500px;" src="/media/1023/12.jpeg?width=375&amp;height=500" alt="12.jpeg" rel="1105" /><img style="width: 375px; height:500px;" src="/media/1014/01.jpg?width=375&amp;height=500" alt="01.jpg" rel="1096" /><img style="width: 375px; height:500px;" src="/media/1015/04.jpg?width=375&amp;height=500" alt="04.jpg" rel="1097" /><img style="width: 500px; height:375px;" src="/media/1017/05.jpg?width=500&amp;height=375" alt="05.jpg" rel="1099" /><img style="width: 500px; height:375px;" src="/media/1018/06.jpg?width=500&amp;height=375" alt="06.jpg" rel="1100" /><img style="width: 500px; height:375px;" src="/media/1020/07.jpg?width=500&amp;height=375" alt="07.jpg" rel="1102" /><img style="width: 375px; height:500px;" src="/media/1024/09.jpg?width=375&amp;height=500" alt="09.jpg" rel="1106" /><img style="width: 500px; height:375px;" src="/media/1021/08.jpg?width=500&amp;height=375" alt="08.jpg" rel="1103" /><img style="width: 375px; height:500px;" src="/media/1019/10.jpg?width=375&amp;height=500" alt="10.jpg" rel="1101" /><img style="width: 500px; height:375px;" src="/media/1022/11.jpg?width=500&amp;height=375" alt="11.jpg" rel="1104" /><img style="width: 375px; height:500px;" src="/media/1013/02.jpg?width=375&amp;height=500" alt="02.jpg" rel="1095" /><img style="width: 375px; height:500px;" src="/media/1016/03.jpg?width=375&amp;height=500" alt="03.jpg" rel="1098" /></p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1091, N'<Folder id="1091" key="d63f1a38-6c01-4789-b776-fa5d8b82183f" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-06-28T21:46:12" updateDate="2014-06-28T21:47:20" nodeName="Referater" urlName="referater" path="-1,1091" isDoc="" nodeType="1031" writerName="Admin" writerID="1" version="53784ea5-be77-454c-a851-96eaf927e0ac" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1092, N'<File id="1092" key="00d1002f-7294-48b1-ad5b-90859fe7b1cd" parentID="-1" level="1" creatorID="0" sortOrder="2" createDate="2014-06-28T21:47:16" updateDate="2014-06-28T21:47:16" nodeName="Generalforsamling 12032012.pdf" urlName="generalforsamling-12032012pdf" path="-1,1092" isDoc="" nodeType="1033" writerName="Mads" writerID="0" version="56425cdf-4ae9-4e92-b182-d8f397f2fd49" template="0" nodeTypeAlias="File">
  <umbracoFile><![CDATA[/media/1011/generalforsamling-12032012.pdf]]></umbracoFile>
  <umbracoExtension><![CDATA[pdf]]></umbracoExtension>
  <umbracoBytes><![CDATA[1340236]]></umbracoBytes>
</File>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1093, N'<File id="1093" key="d08db032-3f5c-495f-8df6-11fba6d22917" parentID="1091" level="2" creatorID="0" sortOrder="0" createDate="2014-06-28T21:47:16" updateDate="2014-06-28T21:47:16" nodeName="Generalforsamling 12032012.pdf" urlName="generalforsamling-12032012pdf" path="-1,1091,1093" isDoc="" nodeType="1033" writerName="Mads" writerID="0" version="3d6bde6c-a949-4141-a1d7-6158c24a136f" template="0" nodeTypeAlias="File">
  <umbracoFile><![CDATA[/media/1012/generalforsamling-12032012.pdf]]></umbracoFile>
  <umbracoExtension><![CDATA[pdf]]></umbracoExtension>
  <umbracoBytes><![CDATA[1340236]]></umbracoBytes>
</File>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1094, N'<Folder id="1094" key="0c534c27-20c2-4cf3-8242-5f288a0d5e3e" parentID="-1" level="1" creatorID="1" sortOrder="3" createDate="2014-06-28T22:00:18" updateDate="2014-06-28T22:00:49" nodeName="KDH17" urlName="kdh17" path="-1,1094" isDoc="" nodeType="1031" writerName="Admin" writerID="1" version="a61d2f44-13b6-430a-8783-c76f47c92fb1" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1095, N'<Image id="1095" key="06d60a56-d23f-4881-9252-545a58d8baed" parentID="1094" level="2" creatorID="0" sortOrder="0" createDate="2014-06-28T22:00:27" updateDate="2014-06-28T22:00:27" nodeName="02.jpg" urlName="02jpg" path="-1,1094,1095" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="31b77866-267b-4f7f-a087-b3a4d41ee08d" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1013/02.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1536]]></umbracoWidth>
  <umbracoHeight><![CDATA[2048]]></umbracoHeight>
  <umbracoBytes><![CDATA[1303740]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1096, N'<Image id="1096" key="3ad7e196-5430-4605-836c-85e693509481" parentID="1094" level="2" creatorID="0" sortOrder="1" createDate="2014-06-28T22:00:27" updateDate="2014-06-28T22:00:27" nodeName="01.jpg" urlName="01jpg" path="-1,1094,1096" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="7c78f281-8367-4253-b972-ac79b88396e3" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1014/01.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[2448]]></umbracoWidth>
  <umbracoHeight><![CDATA[3264]]></umbracoHeight>
  <umbracoBytes><![CDATA[2711463]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1097, N'<Image id="1097" key="605a71d2-8d23-4dc9-b8fd-cc80726926fd" parentID="1094" level="2" creatorID="0" sortOrder="2" createDate="2014-06-28T22:00:27" updateDate="2014-06-28T22:00:27" nodeName="04.jpg" urlName="04jpg" path="-1,1094,1097" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="62f81c63-87f8-41d2-a79e-045a55a2b478" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1015/04.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[2448]]></umbracoWidth>
  <umbracoHeight><![CDATA[3264]]></umbracoHeight>
  <umbracoBytes><![CDATA[1597203]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1098, N'<Image id="1098" key="d6626c57-839e-43d2-af01-be0cb22a6c19" parentID="1094" level="2" creatorID="0" sortOrder="3" createDate="2014-06-28T22:00:28" updateDate="2014-06-28T22:00:28" nodeName="03.jpg" urlName="03jpg" path="-1,1094,1098" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="95f2cf2b-01a1-4095-8a9a-300b5220b2e1" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1016/03.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1536]]></umbracoWidth>
  <umbracoHeight><![CDATA[2048]]></umbracoHeight>
  <umbracoBytes><![CDATA[1367356]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1099, N'<Image id="1099" key="8b12fbd2-2af4-4161-863b-2dc440f28d36" parentID="1094" level="2" creatorID="0" sortOrder="4" createDate="2014-06-28T22:00:29" updateDate="2014-06-28T22:00:29" nodeName="05.jpg" urlName="05jpg" path="-1,1094,1099" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="b13c63d2-e5b9-4386-b3bd-55f8ab0365d8" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1017/05.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[3264]]></umbracoWidth>
  <umbracoHeight><![CDATA[2448]]></umbracoHeight>
  <umbracoBytes><![CDATA[2965142]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1100, N'<Image id="1100" key="9ecb8c84-dc23-4e2e-b969-a5f3255aabe5" parentID="1094" level="2" creatorID="0" sortOrder="5" createDate="2014-06-28T22:00:31" updateDate="2014-06-28T22:00:31" nodeName="06.jpg" urlName="06jpg" path="-1,1094,1100" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="e2595897-ce69-41cc-8587-7dbbaea861b7" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1018/06.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[3264]]></umbracoWidth>
  <umbracoHeight><![CDATA[2448]]></umbracoHeight>
  <umbracoBytes><![CDATA[3228674]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1101, N'<Image id="1101" key="b8be6946-a49f-421c-b718-c84185e26426" parentID="1094" level="2" creatorID="0" sortOrder="6" createDate="2014-06-28T22:00:32" updateDate="2014-06-28T22:00:32" nodeName="10.jpg" urlName="10jpg" path="-1,1094,1101" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1019/10.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[2448]]></umbracoWidth>
  <umbracoHeight><![CDATA[3264]]></umbracoHeight>
  <umbracoBytes><![CDATA[2480469]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1102, N'<Image id="1102" key="f01b4f76-6f51-4712-a60c-60ba4c267c30" parentID="1094" level="2" creatorID="0" sortOrder="7" createDate="2014-06-28T22:00:32" updateDate="2014-06-28T22:00:32" nodeName="07.jpg" urlName="07jpg" path="-1,1094,1102" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="e3d88e40-9118-4086-a4a3-93d5209f6bea" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1020/07.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[3264]]></umbracoWidth>
  <umbracoHeight><![CDATA[2448]]></umbracoHeight>
  <umbracoBytes><![CDATA[3477088]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1103, N'<Image id="1103" key="c5740a8e-fb1b-43af-a09e-a4852b2f4125" parentID="1094" level="2" creatorID="0" sortOrder="8" createDate="2014-06-28T22:00:33" updateDate="2014-06-28T22:00:33" nodeName="08.jpg" urlName="08jpg" path="-1,1094,1103" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="ee79133d-5515-456c-84d8-ac0dea604009" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1021/08.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[3264]]></umbracoWidth>
  <umbracoHeight><![CDATA[2448]]></umbracoHeight>
  <umbracoBytes><![CDATA[3184715]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1104, N'<Image id="1104" key="134886cb-3289-479a-9c65-3e5089d9dfeb" parentID="1094" level="2" creatorID="0" sortOrder="9" createDate="2014-06-28T22:00:33" updateDate="2014-06-28T22:00:33" nodeName="11.jpg" urlName="11jpg" path="-1,1094,1104" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="d54d1973-bc3e-4e1a-96b4-af3268ca0c05" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1022/11.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[3264]]></umbracoWidth>
  <umbracoHeight><![CDATA[2448]]></umbracoHeight>
  <umbracoBytes><![CDATA[3545978]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1105, N'<Image id="1105" key="215b1190-66bf-4867-a0d8-bd913e1d0af6" parentID="1094" level="2" creatorID="0" sortOrder="10" createDate="2014-06-28T22:00:34" updateDate="2014-06-28T22:00:34" nodeName="12.jpeg" urlName="12jpeg" path="-1,1094,1105" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="c75e7819-df98-4d67-84f1-45f28998cc33" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1023/12.jpeg]]></umbracoFile>
  <umbracoWidth><![CDATA[2448]]></umbracoWidth>
  <umbracoHeight><![CDATA[3264]]></umbracoHeight>
  <umbracoBytes><![CDATA[3179831]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpeg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1106, N'<Image id="1106" key="3c116f69-ef4d-4f96-9c4a-0ecb3d5a77e1" parentID="1094" level="2" creatorID="0" sortOrder="11" createDate="2014-06-28T22:00:38" updateDate="2014-06-28T22:00:38" nodeName="09.jpg" urlName="09jpg" path="-1,1094,1106" isDoc="" nodeType="1032" writerName="Mads" writerID="0" version="ee151628-b971-4680-8d06-1fc2426f0865" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1024/09.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[2448]]></umbracoWidth>
  <umbracoHeight><![CDATA[3264]]></umbracoHeight>
  <umbracoBytes><![CDATA[3566150]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
	[LanguageLocale] [nvarchar](10) NULL,
 CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (1, 1049, N'e8cf704d-eade-4039-bbc7-f889991fe808', CAST(0x0000A31C0142AC80 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (2, 1052, N'272d1b61-abf2-408d-85b9-562bea521d86', CAST(0x0000A3350125DC06 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (3, 1053, N'48fd52f2-ad3e-413e-bf14-9aee7a115b22', CAST(0x0000A34400EC9E7F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (4, 1049, N'40383842-e795-425b-b2d4-6fb2a848c925', CAST(0x0000A335013A40CF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (5, 1049, N'1500eb17-62b5-4d20-a06e-8f332c4f3e94', CAST(0x0000A335013B0AC1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (6, 1049, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', CAST(0x0000A335013B6794 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (7, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', CAST(0x0000A336010C4E13 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (8, 1052, N'ce7bd866-cf9e-446b-8489-21fcfc2bf127', CAST(0x0000A336010EC897 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (9, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', CAST(0x0000A336011C0CB5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (10, 1058, N'e0616343-a448-4cdc-8d7d-f5e0c956d58d', CAST(0x0000A3580156E4CB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (11, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', CAST(0x0000A358014F28D5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (12, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', CAST(0x0000A336011C46F0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (13, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', CAST(0x0000A336011D148F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (14, 1062, N'de7406f9-182d-46fe-9491-c7895bacbd84', CAST(0x0000A34400F28FE6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (15, 1063, N'6503a853-b472-405d-9ac7-b156f75aab51', CAST(0x0000A34400F295D7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (16, 1067, N'090759ad-95b6-4001-8e74-f5bcb211b997', CAST(0x0000A34400F81593 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (17, 1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', CAST(0x0000A34400FBB578 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (18, 1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', CAST(0x0000A34400FBD2AA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (19, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', CAST(0x0000A3C200C8D584 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (20, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', CAST(0x0000A344010287AA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (21, 1049, N'1ce34566-117c-4539-87be-aba66d463ab8', CAST(0x0000A344010F3369 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (22, 1049, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', CAST(0x0000A344010F554E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (23, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', CAST(0x0000A35801523D61 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (24, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', CAST(0x0000A358014EC234 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (25, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', CAST(0x0000A358014F16B4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (26, 1049, N'f610300b-3d34-4f55-ad5c-740522b8f636', CAST(0x0000A358014EF650 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (27, 1049, N'4da8bccc-1c85-4336-bf9d-994830c35b27', CAST(0x0000A358014F39E1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (28, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', CAST(0x0000A3C200C27D2F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (29, 1049, N'8d498405-a794-484c-be84-fdba1312cf63', CAST(0x0000A35801525232 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (30, 1062, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', CAST(0x0000A3580154B505 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (31, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', CAST(0x0000A35801554DE5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (32, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', CAST(0x0000A35801596686 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (33, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', CAST(0x0000A3580156FEC2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (34, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', CAST(0x0000A35801571AB3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (35, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', CAST(0x0000A35801572706 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (36, 1081, N'8665cd4b-5c22-4f50-ade2-ec7b41f1529c', CAST(0x0000A35801598D8B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (37, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', CAST(0x0000A3580159806F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (38, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', CAST(0x0000A3580159808B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (39, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', CAST(0x0000A358015980A2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (40, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', CAST(0x0000A358015980BA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (41, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', CAST(0x0000A358015980D1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (42, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', CAST(0x0000A35801599EF0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (43, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', CAST(0x0000A358015A29CA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (44, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', CAST(0x0000A358015A7235 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (45, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', CAST(0x0000A358015AB530 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (46, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', CAST(0x0000A358015ABC04 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (47, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', CAST(0x0000A358015B1B1F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (48, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', CAST(0x0000A358015B3D0D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (49, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', CAST(0x0000A358015B3D20 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (50, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', CAST(0x0000A358015B3D32 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (51, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', CAST(0x0000A358015B6D22 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (52, 1067, N'e878a057-c73e-448b-b522-6155ef2cfed7', CAST(0x0000A358015C0D01 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (53, 1067, N'4fcf069f-ac29-480e-a6c8-e4a131f0c7cb', CAST(0x0000A358015C9838 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (54, 1067, N'699d607d-8613-46eb-97f2-48907a4cd6f5', CAST(0x0000A358015CB995 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (55, 1067, N'c23aada2-fbd8-4c51-b25c-230bdd0c4322', CAST(0x0000A358015D07CE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (56, 1067, N'aafa8954-33f1-4808-bd40-ca3151f08e05', CAST(0x0000A358015D18DA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (57, 1067, N'9ed3120e-63f2-4889-bee3-efc36e1c78ef', CAST(0x0000A358015D98EA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (58, 1067, N'a5e30a3c-3c7b-42d7-ae01-15074bc33ac2', CAST(0x0000A358015DA6D5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (59, 1067, N'da9aefb4-fd13-412e-9af9-bf38bfb13c90', CAST(0x0000A358015DF102 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (60, 1067, N'41e17d13-334d-4b11-94ad-bd6838330cde', CAST(0x0000A358015E2B1B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (61, 1067, N'd1919267-ddb4-48c5-a43a-ef326ffd49ef', CAST(0x0000A358015E71A4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (62, 1090, N'928198b8-cb65-4e1c-88f8-a6ff3186cd19', CAST(0x0000A3580160536D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (63, 1090, N'48c33b3b-f618-4376-b0d4-45d3c986aa16', CAST(0x0000A3580160AE57 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (64, 1090, N'0d0373a4-fb6e-4fcc-8735-7b27002dc22d', CAST(0x0000A3580160B417 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (65, 1090, N'7f108a38-fb5d-49be-aecd-889e7e025699', CAST(0x0000A3580160E1BD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (66, 1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', CAST(0x0000A3580160E1C1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (67, 1091, N'53784ea5-be77-454c-a851-96eaf927e0ac', CAST(0x0000A35801671285 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (68, 1092, N'56425cdf-4ae9-4e92-b182-d8f397f2fd49', CAST(0x0000A35801670E20 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (69, 1093, N'3d6bde6c-a949-4141-a1d7-6158c24a136f', CAST(0x0000A35801670E2E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (70, 1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', CAST(0x0000A3580167A85A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (71, 1070, N'e8cf534a-5469-4340-8db6-174502b131f2', CAST(0x0000A35801688DF8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (72, 1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', CAST(0x0000A3580168E220 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (73, 1094, N'a61d2f44-13b6-430a-8783-c76f47c92fb1', CAST(0x0000A358016AC625 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (74, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', CAST(0x0000A358016AAC4B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (75, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', CAST(0x0000A358016AACC0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (76, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', CAST(0x0000A358016AAD06 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (77, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', CAST(0x0000A358016AAD72 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (78, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', CAST(0x0000A358016AAF00 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (79, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', CAST(0x0000A358016AB166 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (80, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', CAST(0x0000A358016AB292 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (81, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', CAST(0x0000A358016AB2B3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (82, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', CAST(0x0000A358016AB3BA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (83, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', CAST(0x0000A358016AB3DF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (84, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', CAST(0x0000A358016AB4BB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (85, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', CAST(0x0000A358016AB99F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (86, 1090, N'3df844cb-bd15-4b0f-9bd9-998485476386', CAST(0x0000A358016BFFC5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (87, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', CAST(0x0000A3C200C453F6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (88, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', CAST(0x0000A3C200C5D3A4 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1048, 1050, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1048, 1051, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1048, 1066, 3)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1048, 1069, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1050, 1055, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1051, 1061, 0)
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentGroupId] [int] NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (3, NULL, 1032, N'Image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (4, NULL, 1033, N'File', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (5, NULL, 1031, N'Contents', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (11, NULL, 1044, N'Membership', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (12, NULL, 1048, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (13, NULL, 1055, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (14, NULL, 1050, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (15, NULL, 1061, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (16, NULL, 1066, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (17, NULL, 1069, N'Indhold - Offentlig', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (18, NULL, 1069, N'Indhold - Privat', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (19, NULL, 1071, N'Membership', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (20, NULL, 1048, N'Billede', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (21, NULL, 1046, N'SEO', 0)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
/****** Object:  Table [dbo].[cmsMember]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsMember] ([nodeId], [Email], [LoginName], [Password]) VALUES (1072, N'ua0e82b9f6c59448e87fc65e8e6060409@example.com', N'kirkendrup', N'W/en6kP/VqmEQNXxsXEZj30kmx8=')
INSERT [dbo].[cmsMember] ([nodeId], [Email], [LoginName], [Password]) VALUES (1074, N'u5d28fbcef45d42ffab7041201b9fa572@example.com', N'test', N'')
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [nvarchar](2500) NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsMemberType] ON
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (1, 1071, 53, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (2, 1071, 54, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (3, 1071, 55, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (4, 1071, 56, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (5, 1071, 57, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (6, 1071, 58, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (7, 1071, 59, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (8, 1071, 60, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile]) VALUES (9, 1071, 61, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsMemberType] OFF
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', CAST(0x0000A344010F5581 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-08T16:27:53" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'40383842-e795-425b-b2d4-6fb2a848c925', CAST(0x0000A335013A41F9 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-05-24T19:04:09" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[umbheader]]></header>
  <bodyText><![CDATA[umbbody]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'f610300b-3d34-4f55-ad5c-740522b8f636', CAST(0x0000A358014EF663 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-28T20:19:33" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Admin" writerID="1" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
  <image>1076</image>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'1500eb17-62b5-4d20-a06e-8f332c4f3e94', CAST(0x0000A335013B0BD4 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-05-24T19:07:01" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[umbheader]]></header>
  <bodyText><![CDATA[<p>umbbody</p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'4da8bccc-1c85-4336-bf9d-994830c35b27', CAST(0x0000A358014F39EB AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-28T20:20:31" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Admin" writerID="1" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'1ce34566-117c-4539-87be-aba66d463ab8', CAST(0x0000A344010F33A3 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-08T16:27:24" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
  <image>1059</image>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'e8cf704d-eade-4039-bbc7-f889991fe808', CAST(0x0000A31C0142ACA4 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-04-29T19:34:49" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', CAST(0x0000A335013B67CA AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-05-24T19:08:21" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Mads" writerID="0" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1049, N'8d498405-a794-484c-be84-fdba1312cf63', CAST(0x0000A35801525232 AS DateTime), N'<FrontPage id="1049" key="142032a1-4b1b-4f70-b570-6e52eccd604b" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-29T19:34:49" updateDate="2014-06-28T20:31:47" nodeName="Forside" urlName="forside" path="-1,1049" isDoc="" nodeType="1048" creatorName="Mads" writerName="Admin" writerID="1" template="1047" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>]]></bodyText>
  <image>1079</image>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1052, N'ce7bd866-cf9e-446b-8489-21fcfc2bf127', CAST(0x0000A336010EC8D4 AS DateTime), N'<BoardMembers id="1052" key="195f8520-ed12-4878-9ee6-48ce82db017e" parentID="1049" level="2" creatorID="0" sortOrder="0" createDate="2014-05-24T17:49:54" updateDate="2014-05-25T16:25:53" nodeName="Bestyrelsen" urlName="bestyrelsen" path="-1,1049,1052" isDoc="" nodeType="1050" creatorName="Mads" writerName="Mads" writerID="0" template="1056" nodeTypeAlias="BoardMembers">
  <header><![CDATA[Bestyrelsen overskrift]]></header>
  <bodyText><![CDATA[<p>Bestyrelsen brødtekst</p>]]></bodyText>
</BoardMembers>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1052, N'272d1b61-abf2-408d-85b9-562bea521d86', CAST(0x0000A3350125DC4F AS DateTime), N'<BoardMembers id="1052" key="195f8520-ed12-4878-9ee6-48ce82db017e" parentID="1049" level="2" creatorID="0" sortOrder="0" createDate="2014-05-24T17:49:54" updateDate="2014-05-24T17:49:54" nodeName="Bestyrelsen" urlName="bestyrelsen" path="-1,1049,1052" isDoc="" nodeType="1050" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMembers" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1053, N'48fd52f2-ad3e-413e-bf14-9aee7a115b22', CAST(0x0000A34400EC9EB9 AS DateTime), N'<NewsPage id="1053" key="00c71ef5-fb80-473e-87b1-1d022e000d85" parentID="1049" level="2" creatorID="0" sortOrder="1" createDate="2014-05-24T17:50:36" updateDate="2014-06-08T14:21:30" nodeName="Nyheder" urlName="nyheder" path="-1,1049,1053" isDoc="" nodeType="1051" creatorName="Mads" writerName="Mads" writerID="0" template="1064" nodeTypeAlias="NewsPage" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', CAST(0x0000A35801599EFA AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T20:58:22" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1085</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', CAST(0x0000A3C200C4545C AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-10-12T11:54:48" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1079</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', CAST(0x0000A336010C4E48 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-05-25T16:16:52" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', CAST(0x0000A3580156FEC6 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T20:48:48" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1080</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', CAST(0x0000A3580157270A AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T20:49:22" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1080</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', CAST(0x0000A336011C0CF8 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-05-25T17:14:11" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <memberTitle><![CDATA[title]]></memberTitle>
  <name><![CDATA[name]]></name>
  <extraInfo><![CDATA[extra]]></extraInfo>
  <email><![CDATA[mail@mail.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', CAST(0x0000A336011C4730 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-05-25T17:15:01" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1059</image>
  <memberTitle><![CDATA[title]]></memberTitle>
  <name><![CDATA[name]]></name>
  <extraInfo><![CDATA[extra]]></extraInfo>
  <email><![CDATA[mail@mail.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', CAST(0x0000A35801571AB8 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T20:49:12" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', CAST(0x0000A35801554DFC AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T20:42:39" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1059</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', CAST(0x0000A3C200C5D3FF AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-10-12T12:00:15" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1079</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
  <extraInfo><![CDATA[yderlig info]]></extraInfo>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', CAST(0x0000A358015AB534 AS DateTime), N'<BoardMember id="1057" key="acf180f9-6853-45a4-84e7-1c950ac62be8" parentID="1052" level="3" creatorID="0" sortOrder="0" createDate="2014-05-25T16:16:52" updateDate="2014-06-28T21:02:19" nodeName="Tina Restrup Drue" urlName="tina-restrup-drue" path="-1,1049,1052,1057" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1085</image>
  <memberTitle><![CDATA[Formand]]></memberTitle>
  <name><![CDATA[Tina Restrup Drue]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'399983fa-4457-427c-b1bd-57d7f8895286', CAST(0x0000A358015ABC09 AS DateTime), N'<BoardMember id="1060" key="ccac0d3a-f185-468e-8cd5-c2c9fdec13cf" parentID="1052" level="3" creatorID="0" sortOrder="1" createDate="2014-05-25T17:17:56" updateDate="2014-06-28T21:02:25" nodeName="Inge Ellegaard" urlName="inge-ellegaard" path="-1,1049,1052,1060" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1082</image>
  <memberTitle><![CDATA[Bestyrelses medlem]]></memberTitle>
  <name><![CDATA[Inge Ellegaard]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'81bac049-49c5-475e-964c-7e791fff085f', CAST(0x0000A358015B3D53 AS DateTime), N'<BoardMember id="1060" key="ccac0d3a-f185-468e-8cd5-c2c9fdec13cf" parentID="1052" level="3" creatorID="0" sortOrder="2" createDate="2014-05-25T17:17:56" updateDate="2014-06-28T21:04:15" nodeName="Inge Ellegaard" urlName="inge-ellegaard" path="-1,1049,1052,1060" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1082</image>
  <memberTitle><![CDATA[Bestyrelses medlem]]></memberTitle>
  <name><![CDATA[Inge Ellegaard]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', CAST(0x0000A358015A29CE AS DateTime), N'<BoardMember id="1060" key="ccac0d3a-f185-468e-8cd5-c2c9fdec13cf" parentID="1052" level="3" creatorID="0" sortOrder="1" createDate="2014-05-25T17:17:56" updateDate="2014-06-28T21:00:20" nodeName="Inge Ellegaard" urlName="inge-ellegaard" path="-1,1049,1052,1060" isDoc="" nodeType="1055" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1082</image>
  <memberTitle><![CDATA[Bestyrelses medlem]]></memberTitle>
  <name><![CDATA[Inge Ellegaard]]></name>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', CAST(0x0000A336011D14D8 AS DateTime), N'<BoardMember id="1060" key="ccac0d3a-f185-468e-8cd5-c2c9fdec13cf" parentID="1052" level="3" creatorID="0" sortOrder="1" createDate="2014-05-25T17:17:56" updateDate="2014-05-25T17:17:56" nodeName="TestMember" urlName="testmember" path="-1,1049,1052,1060" isDoc="" nodeType="1055" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <memberTitle><![CDATA[title2]]></memberTitle>
  <name><![CDATA[name2]]></name>
  <extraInfo><![CDATA[extra2]]></extraInfo>
  <email><![CDATA[asdasd@asdasd.asd]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1062, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', CAST(0x0000A3580154B50E AS DateTime), N'<NewsItem id="1062" key="496be49b-5fd2-41a2-b724-93010b9eafdf" parentID="1053" level="3" creatorID="0" sortOrder="0" createDate="2014-05-27T17:56:38" updateDate="2014-06-28T20:40:28" nodeName="Nyt" urlName="nyt" path="-1,1049,1053,1062" isDoc="" nodeType="1061" creatorName="Mads" writerName="Admin" writerID="1" template="0" nodeTypeAlias="NewsItem">
  <date>2014-06-28T00:00:00</date>
  <header><![CDATA[Kirkendruphaven har fået ny hjemmeside]]></header>
  <bodyText><![CDATA[<p>Så er den nye hjemmeside for Kirkendruphaven ved at være klar at gå i luften. Indholdet fra den gamle, skal lige overføres til den nye og så skulle den være klar. På den nye side, vil alle fra bestyrelsen få adgang til at oprette indhold, så siden hele tiden vil være opdateret.</p>]]></bodyText>
</NewsItem>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1062, N'de7406f9-182d-46fe-9491-c7895bacbd84', CAST(0x0000A34400F29020 AS DateTime), N'<NewsItem id="1062" key="496be49b-5fd2-41a2-b724-93010b9eafdf" parentID="1053" level="3" creatorID="0" sortOrder="0" createDate="2014-05-27T17:56:38" updateDate="2014-06-08T14:43:08" nodeName="Nyhed1" urlName="nyhed1" path="-1,1049,1053,1062" isDoc="" nodeType="1061" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="NewsItem">
  <date>2014-08-20T00:00:00</date>
  <header><![CDATA[header1]]></header>
  <bodyText><![CDATA[<p>bodytext1</p>]]></bodyText>
</NewsItem>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1063, N'6503a853-b472-405d-9ac7-b156f75aab51', CAST(0x0000A34400F29606 AS DateTime), N'<NewsItem id="1063" key="3b380cd5-0dc6-4ec3-b5de-399e10d8e104" parentID="1053" level="3" creatorID="0" sortOrder="1" createDate="2014-05-27T17:57:01" updateDate="2014-06-08T14:43:13" nodeName="Nyhed2" urlName="nyhed2" path="-1,1049,1053,1063" isDoc="" nodeType="1061" creatorName="Mads" writerName="Mads" writerID="0" template="0" nodeTypeAlias="NewsItem">
  <date>2014-08-15T00:00:00</date>
  <header><![CDATA[Nyhed2]]></header>
  <bodyText><![CDATA[<p>bodytext2</p>]]></bodyText>
</NewsItem>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'a5e30a3c-3c7b-42d7-ae01-15074bc33ac2', CAST(0x0000A358015DA6D9 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:13:02" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'c23aada2-fbd8-4c51-b25c-230bdd0c4322', CAST(0x0000A358015D07DC AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:10:46" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'699d607d-8613-46eb-97f2-48907a4cd6f5', CAST(0x0000A358015CB9AC AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:09:40" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening<br />beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov<br />hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en<br />forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser,<br />bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'e878a057-c73e-448b-b522-6155ef2cfed7', CAST(0x0000A358015C0D06 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:07:12" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[info header]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov, hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere. Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'41e17d13-334d-4b11-94ad-bd6838330cde', CAST(0x0000A358015E2B20 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:14:55" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="940" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'da9aefb4-fd13-412e-9af9-bf38bfb13c90', CAST(0x0000A358015DF107 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:14:05" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="960" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'aafa8954-33f1-4808-bd40-ca3151f08e05', CAST(0x0000A358015D18ED AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:11:01" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'4fcf069f-ac29-480e-a6c8-e4a131f0c7cb', CAST(0x0000A358015C9838 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:09:11" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[info header]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening<br />beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov<br />hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en<br />forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser,<br />bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'd1919267-ddb4-48c5-a43a-ef326ffd49ef', CAST(0x0000A358015E71AD AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:15:55" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'9ed3120e-63f2-4889-bee3-efc36e1c78ef', CAST(0x0000A358015D98FD AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-28T21:12:50" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Info om Kirkendruphaven]]></header>
  <bodyText><![CDATA[<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'090759ad-95b6-4001-8e74-f5bcb211b997', CAST(0x0000A34400F815D4 AS DateTime), N'<TextPage id="1067" key="316d0aee-1d80-4ecd-86fc-1e9de75018f0" parentID="1049" level="2" creatorID="0" sortOrder="2" createDate="2014-06-08T15:03:14" updateDate="2014-06-08T15:03:14" nodeName="Info" urlName="info" path="-1,1049,1067" isDoc="" nodeType="1066" creatorName="Mads" writerName="Mads" writerID="0" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[info header]]></header>
  <bodyText><![CDATA[<p>info bodytext</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'e8cf534a-5469-4340-8db6-174502b131f2', CAST(0x0000A35801688E01 AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="4" createDate="2014-06-08T15:16:26" updateDate="2014-06-28T21:52:44" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Admin" writerID="1" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>]]></privateBodyText>
  <privateHeader><![CDATA[Forenings dokumenter]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', CAST(0x0000A34400FBD2E3 AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="3" createDate="2014-06-08T15:16:26" updateDate="2014-06-08T15:16:51" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Mads" writerID="0" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p>private bodytext</p>]]></privateBodyText>
  <privateHeader><![CDATA[Private header]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', CAST(0x0000A34400FBB5B4 AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="3" createDate="2014-06-08T15:16:26" updateDate="2014-06-08T15:16:26" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Mads" writerID="0" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder.</p>]]></publicBodyText>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', CAST(0x0000A3580160E1CB AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="4" createDate="2014-06-08T15:16:26" updateDate="2014-06-28T21:24:48" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Mads" writerID="0" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p>private bodytext</p>]]></privateBodyText>
  <privateHeader><![CDATA[Private header]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', CAST(0x0000A3580168E24A AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="4" createDate="2014-06-08T15:16:26" updateDate="2014-06-28T21:53:56" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Admin" writerID="1" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder ol.</p>
<p>Kontakt Kasper (23) hvis du glemmer dit login.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>]]></privateBodyText>
  <privateHeader><![CDATA[Forenings dokumenter]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', CAST(0x0000A3580167A864 AS DateTime), N'<PrivateArea id="1070" key="db7c7fee-a17a-4042-b8b6-b999c7a3ae4b" parentID="1049" level="2" creatorID="0" sortOrder="4" createDate="2014-06-08T15:16:26" updateDate="2014-06-28T21:49:28" nodeName="Beboer login" urlName="beboer-login" path="-1,1049,1070" isDoc="" nodeType="1069" creatorName="Mads" writerName="Admin" writerID="1" template="1068" nodeTypeAlias="PrivateArea">
  <publicHeader><![CDATA[Beboer login]]></publicHeader>
  <publicBodyText><![CDATA[<p>Login for at downloade referater fra bestyrelsesmøder.</p>]]></publicBodyText>
  <privateBodyText><![CDATA[<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>]]></privateBodyText>
  <privateHeader><![CDATA[Private header]]></privateHeader>
</PrivateArea>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', CAST(0x0000A358015B3D58 AS DateTime), N'<BoardMember id="1087" key="b2cdf0f8-9cd1-4ebd-b405-9c5917c1457c" parentID="1052" level="3" creatorID="1" sortOrder="3" createDate="2014-06-28T21:01:22" updateDate="2014-06-28T21:04:15" nodeName="Kasper Drevs Christensen" urlName="kasper-drevs-christensen" path="-1,1049,1052,1087" isDoc="" nodeType="1055" creatorName="Admin" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1084</image>
  <memberTitle><![CDATA[Supleant / Hjemmeside]]></memberTitle>
  <name><![CDATA[Kasper Drevs Christensen]]></name>
  <email><![CDATA[kasper@drevs.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', CAST(0x0000A358015A723E AS DateTime), N'<BoardMember id="1087" key="b2cdf0f8-9cd1-4ebd-b405-9c5917c1457c" parentID="1052" level="3" creatorID="1" sortOrder="2" createDate="2014-06-28T21:01:22" updateDate="2014-06-28T21:01:22" nodeName="Kasper Drevs Christensen" urlName="kasper-drevs-christensen" path="-1,1049,1052,1087" isDoc="" nodeType="1055" creatorName="Admin" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1084</image>
  <memberTitle><![CDATA[Supleant / Hjemmeside]]></memberTitle>
  <name><![CDATA[Kasper Drevs Christensen]]></name>
  <email><![CDATA[kasper@drevs.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'cfa3adec-711d-4354-b271-3394a995754a', CAST(0x0000A358015B3D4A AS DateTime), N'<BoardMember id="1088" key="e888abe6-77bb-40a2-91c7-bb714b04ce5a" parentID="1052" level="3" creatorID="1" sortOrder="1" createDate="2014-06-28T21:03:46" updateDate="2014-06-28T21:04:15" nodeName="Heidi" urlName="heidi" path="-1,1049,1052,1088" isDoc="" nodeType="1055" creatorName="Admin" writerName="Mads" writerID="0" template="0" nodeTypeAlias="BoardMember">
  <image>1083</image>
  <memberTitle><![CDATA[Næstformand]]></memberTitle>
  <name><![CDATA[Heidi Agerskov Tengs]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', CAST(0x0000A358015B1B32 AS DateTime), N'<BoardMember id="1088" key="e888abe6-77bb-40a2-91c7-bb714b04ce5a" parentID="1052" level="3" creatorID="1" sortOrder="3" createDate="2014-06-28T21:03:46" updateDate="2014-06-28T21:03:46" nodeName="Heidi" urlName="heidi" path="-1,1049,1052,1088" isDoc="" nodeType="1055" creatorName="Admin" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1083</image>
  <memberTitle><![CDATA[Næstformand]]></memberTitle>
  <name><![CDATA[Heidi Agerskov Tengs]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', CAST(0x0000A358015B6D27 AS DateTime), N'<BoardMember id="1089" key="9088e794-49a6-4587-b881-8a1cdfe00308" parentID="1052" level="3" creatorID="1" sortOrder="4" createDate="2014-06-28T21:04:56" updateDate="2014-06-28T21:04:56" nodeName="Kasper" urlName="kasper" path="-1,1049,1052,1089" isDoc="" nodeType="1055" creatorName="Admin" writerName="Admin" writerID="1" template="0" nodeTypeAlias="BoardMember">
  <image>1086</image>
  <memberTitle><![CDATA[Kasser]]></memberTitle>
  <name><![CDATA[Kasper Guldborg]]></name>
  <email><![CDATA[bestyrelsen@kirkendruphaven.dk]]></email>
</BoardMember>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'48c33b3b-f618-4376-b0d4-45d3c986aa16', CAST(0x0000A3580160AE5C AS DateTime), N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="4" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T21:24:04" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'0d0373a4-fb6e-4fcc-8735-7b27002dc22d', CAST(0x0000A3580160B41B AS DateTime), N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="4" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T21:24:09" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'7f108a38-fb5d-49be-aecd-889e7e025699', CAST(0x0000A3580160E1C6 AS DateTime), N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="3" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T21:24:48" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Mads" writerID="0" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'3df844cb-bd15-4b0f-9bd9-998485476386', CAST(0x0000A358016BFFCA AS DateTime), N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="3" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T22:05:16" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>
<p> </p>
<p><img style="width: 375px; height:500px;" src="/media/1023/12.jpeg?width=375&amp;height=500" alt="12.jpeg" rel="1105" /><img style="width: 375px; height:500px;" src="/media/1014/01.jpg?width=375&amp;height=500" alt="01.jpg" rel="1096" /><img style="width: 375px; height:500px;" src="/media/1015/04.jpg?width=375&amp;height=500" alt="04.jpg" rel="1097" /><img style="width: 500px; height:375px;" src="/media/1017/05.jpg?width=500&amp;height=375" alt="05.jpg" rel="1099" /><img style="width: 500px; height:375px;" src="/media/1018/06.jpg?width=500&amp;height=375" alt="06.jpg" rel="1100" /><img style="width: 500px; height:375px;" src="/media/1020/07.jpg?width=500&amp;height=375" alt="07.jpg" rel="1102" /><img style="width: 375px; height:500px;" src="/media/1024/09.jpg?width=375&amp;height=500" alt="09.jpg" rel="1106" /><img style="width: 500px; height:375px;" src="/media/1021/08.jpg?width=500&amp;height=375" alt="08.jpg" rel="1103" /><img style="width: 375px; height:500px;" src="/media/1019/10.jpg?width=375&amp;height=500" alt="10.jpg" rel="1101" /><img style="width: 500px; height:375px;" src="/media/1022/11.jpg?width=500&amp;height=375" alt="11.jpg" rel="1104" /><img style="width: 375px; height:500px;" src="/media/1013/02.jpg?width=375&amp;height=500" alt="02.jpg" rel="1095" /><img style="width: 375px; height:500px;" src="/media/1016/03.jpg?width=375&amp;height=500" alt="03.jpg" rel="1098" /></p>]]></bodyText>
</TextPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'928198b8-cb65-4e1c-88f8-a6ff3186cd19', CAST(0x0000A35801605372 AS DateTime), N'<TextPage id="1090" key="b8e3333a-22fc-447b-aa63-e9bf3704dde3" parentID="1049" level="2" creatorID="1" sortOrder="4" createDate="2014-06-28T21:22:46" updateDate="2014-06-28T21:22:46" nodeName="Til salg" urlName="til-salg" path="-1,1049,1090" isDoc="" nodeType="1066" creatorName="Admin" writerName="Admin" writerID="1" template="1065" nodeTypeAlias="TextPage">
  <header><![CDATA[Andel nr. 17 til salg]]></header>
  <bodyText><![CDATA[<p>Andel nr. 17 er sat til salg.<br />Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a></p>
<p><strong>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</strong></p>]]></bodyText>
</TextPage>')
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsMember2MemberGroup] ([Member], [MemberGroup]) VALUES (1074, 1075)
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[helpText] [nvarchar](1000) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (29, -92, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', NULL, 1, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', NULL, 2, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', NULL, 3, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (32, -92, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', NULL, 4, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (33, -92, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', NULL, 5, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (34, -92, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', NULL, 6, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (35, -88, 1048, 12, N'header', N'Overskrift', NULL, 0, 0, N'', N'Sidens overskrift.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (36, -87, 1048, 12, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'Sidens brødtekst.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (37, 1035, 1055, 13, N'image', N'Billede', NULL, 0, 0, N'', N'Billedet skal måle 185px i højden og 135px i bredden.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (38, -88, 1055, 13, N'memberTitle', N'Titel', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (39, -88, 1055, 13, N'name', N'Navn', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (40, -88, 1055, 13, N'extraInfo', N'Yderlig info', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (41, -88, 1055, 13, N'email', N'Email', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (42, -88, 1050, 14, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (43, -87, 1050, 14, N'bodyText', N'Brødtekst', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (44, -41, 1061, 15, N'date', N'Dato', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (45, -88, 1061, 15, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (46, -87, 1061, 15, N'bodyText', N'Brødtekst', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (47, -88, 1066, 16, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (48, -87, 1066, 16, N'bodyText', N'Brødtekst', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (49, -88, 1069, 17, N'publicHeader', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (50, -87, 1069, 17, N'publicBodyText', N'Brødtekst', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (51, -87, 1069, 18, N'privateBodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (52, -88, 1069, 18, N'privateHeader', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (53, -89, 1071, 19, N'umbracoMemberComments', N'Comments', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (54, -92, 1071, 19, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (55, -49, 1071, 19, N'umbracoMemberApproved', N'Is Approved', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (56, -49, 1071, 19, N'umbracoMemberLockedOut', N'Is Locked Out', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (57, -92, 1071, 19, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (58, -92, 1071, 19, N'umbracoMemberLastLogin', N'Last Login Date', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (59, -92, 1071, 19, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (60, -92, 1071, 19, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (61, -92, 1071, 19, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (62, 1035, 1048, 20, N'image', N'Billede', NULL, 0, 0, N'', N'Det store billede på siden. Det skal være 960px i bredden og 280px i højden.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (63, -88, 1046, 21, N'metaTitle', N'Meta Title', NULL, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 01/24/2015 11:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1049, N'e8cf704d-eade-4039-bbc7-f889991fe808', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1049, N'e8cf704d-eade-4039-bbc7-f889991fe808', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1049, N'40383842-e795-425b-b2d4-6fb2a848c925', 35, NULL, NULL, N'umbheader', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (4, 1049, N'40383842-e795-425b-b2d4-6fb2a848c925', 36, NULL, NULL, N'umbbody', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (5, 1049, N'1500eb17-62b5-4d20-a06e-8f332c4f3e94', 35, NULL, NULL, N'umbheader', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1049, N'1500eb17-62b5-4d20-a06e-8f332c4f3e94', 36, NULL, NULL, NULL, N'<p>umbbody</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1049, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1049, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1052, N'272d1b61-abf2-408d-85b9-562bea521d86', 42, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1052, N'272d1b61-abf2-408d-85b9-562bea521d86', 43, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1052, N'ce7bd866-cf9e-446b-8489-21fcfc2bf127', 42, NULL, NULL, N'Bestyrelsen overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (12, 1052, N'ce7bd866-cf9e-446b-8489-21fcfc2bf127', 43, NULL, NULL, NULL, N'<p>Bestyrelsen brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', 38, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', 39, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1057, N'687fc743-841e-4e85-93c1-4636b5bd6558', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (19, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', 38, NULL, NULL, N'title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (20, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', 39, NULL, NULL, N'name', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (21, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', 40, NULL, NULL, N'extra', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (22, 1057, N'2a2c8a2b-d349-40fa-ac16-828cacf7326b', 41, NULL, NULL, N'mail@mail.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (23, 1058, N'e0616343-a448-4cdc-8d7d-f5e0c956d58d', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (24, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', 6, NULL, NULL, N'/media/1001/av094gm_460s.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (25, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', 7, NULL, NULL, N'-1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (26, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', 8, NULL, NULL, N'-1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (27, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', 9, NULL, NULL, N'-1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (28, 1059, N'ccc9f61a-14a8-437b-95c9-363e5ed6bf08', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (29, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', 37, 1059, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (30, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', 38, NULL, NULL, N'title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (31, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', 39, NULL, NULL, N'name', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (32, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', 40, NULL, NULL, N'extra', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (33, 1057, N'ca5e5bdb-ab66-45ba-9e0b-861c8d1d865e', 41, NULL, NULL, N'mail@mail.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (34, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (35, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', 38, NULL, NULL, N'title2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (36, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', 39, NULL, NULL, N'name2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (37, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', 40, NULL, NULL, N'extra2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (38, 1060, N'628d064b-6537-448f-9bee-f70d34e24cfb', 41, NULL, NULL, N'asdasd@asdasd.asd', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (39, 1062, N'de7406f9-182d-46fe-9491-c7895bacbd84', 44, NULL, CAST(0x0000A38D00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (40, 1062, N'de7406f9-182d-46fe-9491-c7895bacbd84', 45, NULL, NULL, N'header1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (41, 1062, N'de7406f9-182d-46fe-9491-c7895bacbd84', 46, NULL, NULL, NULL, N'<p>bodytext1</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (42, 1063, N'6503a853-b472-405d-9ac7-b156f75aab51', 44, NULL, CAST(0x0000A38800000000 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (43, 1063, N'6503a853-b472-405d-9ac7-b156f75aab51', 45, NULL, NULL, N'Nyhed2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (44, 1063, N'6503a853-b472-405d-9ac7-b156f75aab51', 46, NULL, NULL, NULL, N'<p>bodytext2</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (45, 1067, N'090759ad-95b6-4001-8e74-f5bcb211b997', 47, NULL, NULL, N'info header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (46, 1067, N'090759ad-95b6-4001-8e74-f5bcb211b997', 48, NULL, NULL, NULL, N'<p>info bodytext</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (47, 1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (48, 1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (49, 1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', 51, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (50, 1070, N'6af55f46-20a8-4972-9e50-b82b5eb5abcc', 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (51, 1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (52, 1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (53, 1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', 51, NULL, NULL, NULL, N'<p>private bodytext</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (54, 1070, N'5b5e8fe9-962e-40e0-8b30-40d0f36128b1', 52, NULL, NULL, N'Private header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (55, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 53, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (56, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 54, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (57, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 55, 1, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (58, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 56, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (59, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (60, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 58, NULL, CAST(0x0000A3C200C8D480 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (61, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 59, NULL, CAST(0x0000A3C200C8CC4C AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (62, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 60, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (63, 1072, N'45b3cdc7-c648-47c9-bb48-8b1215971fbf', 61, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (64, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 53, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (65, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 54, 1, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (66, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 55, 1, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (67, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 56, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (68, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (69, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 58, NULL, CAST(0x0000A344010286D0 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (70, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 59, NULL, CAST(0x0000A34401019FF4 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (71, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 60, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (72, 1074, N'df0df962-7e4c-4e3b-9a93-7a71f9f75552', 61, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (73, 1049, N'a831ee55-fc3d-4d32-b6bf-fd8d17205ce9', 62, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (74, 1049, N'1ce34566-117c-4539-87be-aba66d463ab8', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (75, 1049, N'1ce34566-117c-4539-87be-aba66d463ab8', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (76, 1049, N'1ce34566-117c-4539-87be-aba66d463ab8', 62, 1059, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (77, 1049, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (78, 1049, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (79, 1049, N'd9d202e5-b76e-4533-81fc-0d54dbb3b986', 62, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (80, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', 6, NULL, NULL, N'/media/1001/10151338_10152166831089332_7641016017432005224_n.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (81, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', 7, NULL, NULL, N'720', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (82, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', 8, NULL, NULL, N'960', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (83, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', 9, NULL, NULL, N'89066', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (84, 1076, N'25e4ab71-f155-4ef7-b33e-6877a5f5a15b', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (85, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', 6, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (86, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', 7, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (87, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', 8, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (88, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', 9, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (89, 1077, N'29c257dc-e53b-48e9-8e63-dd47e3a56a56', 10, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (90, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', 6, NULL, NULL, N'/media/1003/kirkendrupaebletrae.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (91, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', 7, NULL, NULL, N'720', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (92, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', 8, NULL, NULL, N'960', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (93, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', 9, NULL, NULL, N'89066', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (94, 1078, N'61747eed-58da-4822-8f04-5d09d0bb192f', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (95, 1049, N'f610300b-3d34-4f55-ad5c-740522b8f636', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (96, 1049, N'f610300b-3d34-4f55-ad5c-740522b8f636', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (97, 1049, N'f610300b-3d34-4f55-ad5c-740522b8f636', 62, 1076, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (98, 1049, N'4da8bccc-1c85-4336-bf9d-994830c35b27', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (99, 1049, N'4da8bccc-1c85-4336-bf9d-994830c35b27', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (100, 1049, N'4da8bccc-1c85-4336-bf9d-994830c35b27', 62, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (101, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', 6, NULL, NULL, N'/media/1004/imag0011.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (102, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', 7, NULL, NULL, N'2592', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (103, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', 8, NULL, NULL, N'1552', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (104, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', 9, NULL, NULL, N'1393715', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (105, 1079, N'8d1193d8-6778-4c4f-af81-3deb19fef2af', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (106, 1049, N'8d498405-a794-484c-be84-fdba1312cf63', 35, NULL, NULL, N'Velkommen til Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (107, 1049, N'8d498405-a794-484c-be84-fdba1312cf63', 36, NULL, NULL, NULL, N'<p>Her på siden kan du læse lidt om vores andelsbolig forening. Se dig omkring.<br />Har du spørgsmål kan du skrive til: <a href="mailto:info@kirkendruphaven.dk">info@kirkendruphaven.dk</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (108, 1049, N'8d498405-a794-484c-be84-fdba1312cf63', 62, 1079, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (109, 1062, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', 44, NULL, CAST(0x0000A35800000000 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (110, 1062, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', 45, NULL, NULL, N'Kirkendruphaven har fået ny hjemmeside', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (111, 1062, N'082d30ae-11a6-48fb-bfd1-4f2e279b07be', 46, NULL, NULL, NULL, N'<p>Så er den nye hjemmeside for Kirkendruphaven ved at være klar at gå i luften. Indholdet fra den gamle, skal lige overføres til den nye og så skulle den være klar. På den nye side, vil alle fra bestyrelsen få adgang til at oprette indhold, så siden hele tiden vil være opdateret.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (112, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', 37, 1059, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (113, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (114, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (115, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (116, 1057, N'9c7aafad-ddaf-4155-9f5d-bbb43d0355d3', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (117, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', 6, NULL, NULL, N'/media/1005/tina.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (118, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', 7, NULL, NULL, N'720', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (119, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', 8, NULL, NULL, N'720', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (120, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', 9, NULL, NULL, N'95900', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (121, 1080, N'4ce3675b-646c-4cbc-af41-ba17313f2b3e', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (122, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', 37, 1080, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (123, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (124, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (125, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (126, 1057, N'c1122eb3-8c93-49ed-afce-66bf3964e552', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (127, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (128, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (129, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (130, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (131, 1057, N'd090accd-42e2-4119-ad89-aa210c1e020e', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (132, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', 37, 1080, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (133, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (134, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (135, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (136, 1057, N'985d7eb2-0ee2-4a3c-9ddb-6bedf6b499a1', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (137, 1081, N'8665cd4b-5c22-4f50-ade2-ec7b41f1529c', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (138, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', 6, NULL, NULL, N'/media/1006/inge.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (139, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', 7, NULL, NULL, N'135', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (140, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', 8, NULL, NULL, N'185', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (141, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', 9, NULL, NULL, N'9557', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (142, 1082, N'1e375505-6197-4a54-8730-af0b2303bb85', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (143, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', 6, NULL, NULL, N'/media/1007/heidi.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (144, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', 7, NULL, NULL, N'135', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (145, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', 8, NULL, NULL, N'185', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (146, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', 9, NULL, NULL, N'7820', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (147, 1083, N'f1f2e4d6-3a6f-435d-bd3b-b4b0c81e36f9', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (148, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', 6, NULL, NULL, N'/media/1008/kasper.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (149, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', 7, NULL, NULL, N'135', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (150, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', 8, NULL, NULL, N'185', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (151, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', 9, NULL, NULL, N'7594', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (152, 1084, N'761b4a08-5409-42fb-896c-5742a9bdace1', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (153, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', 6, NULL, NULL, N'/media/1009/tina.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (154, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', 7, NULL, NULL, N'135', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (155, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', 8, NULL, NULL, N'185', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (156, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', 9, NULL, NULL, N'5040', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (157, 1085, N'49fd88e0-ace3-4cdb-bf38-72d0220454ea', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (158, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', 6, NULL, NULL, N'/media/1010/kasper2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (159, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', 7, NULL, NULL, N'135', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (160, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', 8, NULL, NULL, N'185', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (161, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', 9, NULL, NULL, N'9338', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (162, 1086, N'd049f5f8-4bee-4dfb-8e6f-815a9c94dd2f', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (163, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', 37, 1085, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (164, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (165, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (166, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (167, 1057, N'8b84439d-ee08-4d4f-b674-098f8f6a87dc', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (168, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', 37, 1082, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (169, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', 38, NULL, NULL, N'Bestyrelses medlem', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (170, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', 39, NULL, NULL, N'Inge Ellegaard', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (171, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (172, 1060, N'9b9eaf4c-8728-4c05-9000-c6bdd8a1ef8a', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (173, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', 37, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (174, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', 38, NULL, NULL, N'Supleant / Hjemmeside', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (175, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', 39, NULL, NULL, N'Kasper Drevs Christensen', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (176, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (177, 1087, N'1776f279-fdff-4af7-a0a3-3412765bc0c8', 41, NULL, NULL, N'kasper@drevs.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (178, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', 37, 1085, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (179, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (180, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (181, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (182, 1057, N'abda3004-0162-48de-9a52-f15ab4c3096a', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (183, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', 37, 1082, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (184, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', 38, NULL, NULL, N'Bestyrelses medlem', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (185, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', 39, NULL, NULL, N'Inge Ellegaard', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (186, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (187, 1060, N'399983fa-4457-427c-b1bd-57d7f8895286', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (188, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', 37, 1083, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (189, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', 38, NULL, NULL, N'Næstformand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (190, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', 39, NULL, NULL, N'Heidi Agerskov Tengs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (191, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (192, 1088, N'813a9643-ac6a-4d5a-ab92-cdff29f33cd4', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (193, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', 37, 1083, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (194, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', 38, NULL, NULL, N'Næstformand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (195, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', 39, NULL, NULL, N'Heidi Agerskov Tengs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (196, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (197, 1088, N'cfa3adec-711d-4354-b271-3394a995754a', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (198, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', 37, 1082, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (199, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', 38, NULL, NULL, N'Bestyrelses medlem', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (200, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', 39, NULL, NULL, N'Inge Ellegaard', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (201, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', 40, NULL, NULL, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (202, 1060, N'81bac049-49c5-475e-964c-7e791fff085f', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (203, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', 37, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (204, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', 38, NULL, NULL, N'Supleant / Hjemmeside', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (205, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', 39, NULL, NULL, N'Kasper Drevs Christensen', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (206, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (207, 1087, N'e21291e2-d0b8-40d1-9b9b-169e7c228e19', 41, NULL, NULL, N'kasper@drevs.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (208, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', 37, 1086, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (209, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', 38, NULL, NULL, N'Kasser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (210, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', 39, NULL, NULL, N'Kasper Guldborg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (211, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (212, 1089, N'ee59e153-59a8-4c52-a0b0-87cf4afe3848', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (213, 1067, N'e878a057-c73e-448b-b522-6155ef2cfed7', 47, NULL, NULL, N'info header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (214, 1067, N'e878a057-c73e-448b-b522-6155ef2cfed7', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov, hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere. Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (215, 1067, N'4fcf069f-ac29-480e-a6c8-e4a131f0c7cb', 47, NULL, NULL, N'info header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (216, 1067, N'4fcf069f-ac29-480e-a6c8-e4a131f0c7cb', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening<br />beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov<br />hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en<br />forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser,<br />bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (217, 1067, N'699d607d-8613-46eb-97f2-48907a4cd6f5', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (218, 1067, N'699d607d-8613-46eb-97f2-48907a4cd6f5', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening<br />beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov<br />hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en<br />forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser,<br />bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (219, 1067, N'c23aada2-fbd8-4c51-b25c-230bdd0c4322', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (220, 1067, N'c23aada2-fbd8-4c51-b25c-230bdd0c4322', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (221, 1067, N'aafa8954-33f1-4808-bd40-ca3151f08e05', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (222, 1067, N'aafa8954-33f1-4808-bd40-ca3151f08e05', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (223, 1067, N'9ed3120e-63f2-4889-bee3-efc36e1c78ef', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (224, 1067, N'9ed3120e-63f2-4889-bee3-efc36e1c78ef', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (225, 1067, N'a5e30a3c-3c7b-42d7-ae01-15074bc33ac2', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (226, 1067, N'a5e30a3c-3c7b-42d7-ae01-15074bc33ac2', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (227, 1067, N'da9aefb4-fd13-412e-9af9-bf38bfb13c90', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (228, 1067, N'da9aefb4-fd13-412e-9af9-bf38bfb13c90', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="960" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (229, 1067, N'41e17d13-334d-4b11-94ad-bd6838330cde', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (230, 1067, N'41e17d13-334d-4b11-94ad-bd6838330cde', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="940" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (231, 1067, N'd1919267-ddb4-48c5-a43a-ef326ffd49ef', 47, NULL, NULL, N'Info om Kirkendruphaven', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (232, 1067, N'd1919267-ddb4-48c5-a43a-ef326ffd49ef', 48, NULL, NULL, NULL, N'<p>Andelsboligforeningen Kirkendruphaven er en dejlig børnevenlig andelsboligforening beliggende i det skønne Kirkendrup i Odense Nord - et dejligt og roligt område med skov hundeskov og andre natur områder lige i nærheden. Foreningen tæller 28 andelshavere.</p>
<p> </p>
<p>Andelsboligerne er to-plans rækkehuse på 95 m2, hvortil kommer både en have og en forplads med carport/parkeringsplads. Ligeledes er der fælles arealer, hvor der er legepladser, bålplads, redskabsskur, gæsteparkering og haveaffaldscontainer..</p>
<p> </p>
<p> <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17&amp;output=embed"></iframe><br /><a style="color: #0000ff; text-align: left;" name="Energi" href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=da&amp;geocode=&amp;q=Kirkendruphaven,+Odense,+Danmark&amp;sll=37.0625,-95.677068&amp;sspn=35.219929,91.318359&amp;num=10&amp;ie=UTF8&amp;hq=&amp;hnear=Kirkendruphaven,+5270,+Odense,+Danmark&amp;t=h&amp;ll=55.433786,10.333221&amp;spn=0.00213,0.00456&amp;z=17">Vis stort kort</a>                                         </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (233, 1090, N'928198b8-cb65-4e1c-88f8-a6ff3186cd19', 47, NULL, NULL, N'Andel nr. 17 til salg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (234, 1090, N'928198b8-cb65-4e1c-88f8-a6ff3186cd19', 48, NULL, NULL, NULL, N'<p>Andel nr. 17 er sat til salg.<br />Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a></p>
<p><strong>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</strong></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (235, 1090, N'48c33b3b-f618-4376-b0d4-45d3c986aa16', 47, NULL, NULL, N'Andel nr. 17 til salg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (236, 1090, N'48c33b3b-f618-4376-b0d4-45d3c986aa16', 48, NULL, NULL, NULL, N'<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (237, 1090, N'0d0373a4-fb6e-4fcc-8735-7b27002dc22d', 47, NULL, NULL, N'Andel nr. 17 til salg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (238, 1090, N'0d0373a4-fb6e-4fcc-8735-7b27002dc22d', 48, NULL, NULL, NULL, N'<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (239, 1090, N'7f108a38-fb5d-49be-aecd-889e7e025699', 47, NULL, NULL, N'Andel nr. 17 til salg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (240, 1090, N'7f108a38-fb5d-49be-aecd-889e7e025699', 48, NULL, NULL, NULL, N'<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (241, 1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (242, 1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (243, 1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', 51, NULL, NULL, NULL, N'<p>private bodytext</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (244, 1070, N'f4af7b5e-9028-46ea-94a2-bd74fd2c89fe', 52, NULL, NULL, N'Private header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (245, 1091, N'53784ea5-be77-454c-a851-96eaf927e0ac', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (246, 1092, N'56425cdf-4ae9-4e92-b182-d8f397f2fd49', 24, NULL, NULL, N'/media/1011/generalforsamling-12032012.pdf', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (247, 1092, N'56425cdf-4ae9-4e92-b182-d8f397f2fd49', 25, NULL, NULL, N'pdf', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (248, 1092, N'56425cdf-4ae9-4e92-b182-d8f397f2fd49', 26, NULL, NULL, N'1340236', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (249, 1093, N'3d6bde6c-a949-4141-a1d7-6158c24a136f', 24, NULL, NULL, N'/media/1012/generalforsamling-12032012.pdf', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (250, 1093, N'3d6bde6c-a949-4141-a1d7-6158c24a136f', 25, NULL, NULL, N'pdf', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (251, 1093, N'3d6bde6c-a949-4141-a1d7-6158c24a136f', 26, NULL, NULL, N'1340236', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (252, 1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (253, 1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (254, 1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', 51, NULL, NULL, NULL, N'<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (255, 1070, N'a8cb96be-0582-4212-b29d-dffc116d466c', 52, NULL, NULL, N'Private header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (256, 1070, N'e8cf534a-5469-4340-8db6-174502b131f2', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (257, 1070, N'e8cf534a-5469-4340-8db6-174502b131f2', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (258, 1070, N'e8cf534a-5469-4340-8db6-174502b131f2', 51, NULL, NULL, NULL, N'<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (259, 1070, N'e8cf534a-5469-4340-8db6-174502b131f2', 52, NULL, NULL, N'Forenings dokumenter', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (260, 1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', 49, NULL, NULL, N'Beboer login', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (261, 1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', 50, NULL, NULL, NULL, N'<p>Login for at downloade referater fra bestyrelsesmøder ol.</p>
<p>Kontakt Kasper (23) hvis du glemmer dit login.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (262, 1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', 51, NULL, NULL, NULL, N'<p><a href="/media/1011/generalforsamling-12032012.pdf" target="_blank" title="Generalforsamling 12032012.pdf">Bestyrelsesmøde 20/06-2013</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (263, 1070, N'ecdb09d2-d551-4149-b09c-c95ee8d9a6d8', 52, NULL, NULL, N'Forenings dokumenter', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (264, 1094, N'a61d2f44-13b6-430a-8783-c76f47c92fb1', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (265, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', 6, NULL, NULL, N'/media/1013/02.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (266, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', 7, NULL, NULL, N'1536', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (267, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', 8, NULL, NULL, N'2048', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (268, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', 9, NULL, NULL, N'1303740', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (269, 1095, N'31b77866-267b-4f7f-a087-b3a4d41ee08d', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (270, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', 6, NULL, NULL, N'/media/1014/01.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (271, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', 7, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (272, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', 8, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (273, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', 9, NULL, NULL, N'2711463', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (274, 1096, N'7c78f281-8367-4253-b972-ac79b88396e3', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (275, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', 6, NULL, NULL, N'/media/1015/04.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (276, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', 7, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (277, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', 8, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (278, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', 9, NULL, NULL, N'1597203', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (279, 1097, N'62f81c63-87f8-41d2-a79e-045a55a2b478', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (280, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', 6, NULL, NULL, N'/media/1016/03.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (281, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', 7, NULL, NULL, N'1536', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (282, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', 8, NULL, NULL, N'2048', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (283, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', 9, NULL, NULL, N'1367356', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (284, 1098, N'95f2cf2b-01a1-4095-8a9a-300b5220b2e1', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (285, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', 6, NULL, NULL, N'/media/1017/05.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (286, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', 7, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (287, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', 8, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (288, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', 9, NULL, NULL, N'2965142', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (289, 1099, N'b13c63d2-e5b9-4386-b3bd-55f8ab0365d8', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (290, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', 6, NULL, NULL, N'/media/1018/06.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (291, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', 7, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (292, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', 8, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (293, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', 9, NULL, NULL, N'3228674', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (294, 1100, N'e2595897-ce69-41cc-8587-7dbbaea861b7', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (295, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', 6, NULL, NULL, N'/media/1019/10.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (296, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', 7, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (297, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', 8, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (298, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', 9, NULL, NULL, N'2480469', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (299, 1101, N'0ea96d26-6bbe-4cbd-8ec9-f68f71eab22e', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (300, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', 6, NULL, NULL, N'/media/1020/07.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (301, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', 7, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (302, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', 8, NULL, NULL, N'2448', NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (303, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', 9, NULL, NULL, N'3477088', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (304, 1102, N'e3d88e40-9118-4086-a4a3-93d5209f6bea', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (305, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', 6, NULL, NULL, N'/media/1021/08.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (306, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', 7, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (307, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', 8, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (308, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', 9, NULL, NULL, N'3184715', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (309, 1103, N'ee79133d-5515-456c-84d8-ac0dea604009', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (310, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', 6, NULL, NULL, N'/media/1022/11.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (311, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', 7, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (312, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', 8, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (313, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', 9, NULL, NULL, N'3545978', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (314, 1104, N'd54d1973-bc3e-4e1a-96b4-af3268ca0c05', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (315, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', 6, NULL, NULL, N'/media/1023/12.jpeg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (316, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', 7, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (317, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', 8, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (318, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', 9, NULL, NULL, N'3179831', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (319, 1105, N'c75e7819-df98-4d67-84f1-45f28998cc33', 10, NULL, NULL, N'jpeg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (320, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', 6, NULL, NULL, N'/media/1024/09.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (321, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', 7, NULL, NULL, N'2448', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (322, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', 8, NULL, NULL, N'3264', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (323, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', 9, NULL, NULL, N'3566150', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (324, 1106, N'ee151628-b971-4680-8d06-1fc2426f0865', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (325, 1090, N'3df844cb-bd15-4b0f-9bd9-998485476386', 47, NULL, NULL, N'Andel nr. 17 til salg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (326, 1090, N'3df844cb-bd15-4b0f-9bd9-998485476386', 48, NULL, NULL, NULL, N'<p>Andel nr. 17 er sat til salg. Læs mere om andelen her: <a href="http://www.gratis-boligannoncer.dk/vba.php?id=8324" target="new"><strong>LINK</strong></a> </p>
<p> </p>
<p>Kontakt Anja for nærmere info: anja-juhl@sol.dk / 23834687</p>
<p> </p>
<p><img style="width: 375px; height:500px;" src="/media/1023/12.jpeg?width=375&amp;height=500" alt="12.jpeg" rel="1105" /><img style="width: 375px; height:500px;" src="/media/1014/01.jpg?width=375&amp;height=500" alt="01.jpg" rel="1096" /><img style="width: 375px; height:500px;" src="/media/1015/04.jpg?width=375&amp;height=500" alt="04.jpg" rel="1097" /><img style="width: 500px; height:375px;" src="/media/1017/05.jpg?width=500&amp;height=375" alt="05.jpg" rel="1099" /><img style="width: 500px; height:375px;" src="/media/1018/06.jpg?width=500&amp;height=375" alt="06.jpg" rel="1100" /><img style="width: 500px; height:375px;" src="/media/1020/07.jpg?width=500&amp;height=375" alt="07.jpg" rel="1102" /><img style="width: 375px; height:500px;" src="/media/1024/09.jpg?width=375&amp;height=500" alt="09.jpg" rel="1106" /><img style="width: 500px; height:375px;" src="/media/1021/08.jpg?width=500&amp;height=375" alt="08.jpg" rel="1103" /><img style="width: 375px; height:500px;" src="/media/1019/10.jpg?width=375&amp;height=500" alt="10.jpg" rel="1101" /><img style="width: 500px; height:375px;" src="/media/1022/11.jpg?width=500&amp;height=375" alt="11.jpg" rel="1104" /><img style="width: 375px; height:500px;" src="/media/1013/02.jpg?width=375&amp;height=500" alt="02.jpg" rel="1095" /><img style="width: 375px; height:500px;" src="/media/1016/03.jpg?width=375&amp;height=500" alt="03.jpg" rel="1098" /></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (327, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', 37, 1079, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (328, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (329, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (330, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (331, 1057, N'0e0b3591-1425-48c2-a0d8-36af6a27563a', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (332, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', 37, 1079, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (333, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', 38, NULL, NULL, N'Formand', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (334, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', 39, NULL, NULL, N'Tina Restrup Drue', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (335, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', 40, NULL, NULL, N'yderlig info', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (336, 1057, N'17588aac-7f1c-48c8-8617-f06924bab5a8', 41, NULL, NULL, N'bestyrelsen@kirkendruphaven.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (337, 1049, N'8d498405-a794-484c-be84-fdba1312cf63', 63, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
/****** Object:  Default [DF_cmsContentType_thumbnail]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
/****** Object:  Default [DF_cmsContentType_isContainer]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
/****** Object:  Default [DF_cmsContentType_allowAtRoot]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
/****** Object:  Default [df_cmsContentTypeAllowedContentType_sortOrder]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
/****** Object:  Default [DF_cmsContentVersion_VersionDate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
/****** Object:  Default [DF_cmsDocument_updateDate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
/****** Object:  Default [DF_cmsDocument_newest]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ('0') FOR [newest]
GO
/****** Object:  Default [DF_cmsDocumentType_IsDefault]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
/****** Object:  Default [DF_cmsMacro_macroUseInEditor]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
/****** Object:  Default [DF_cmsMacro_macroRefreshRate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
/****** Object:  Default [DF_cmsMacro_macroCacheByPage]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
/****** Object:  Default [DF_cmsMacro_macroCachePersonalized]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
/****** Object:  Default [DF_cmsMacro_macroDontRender]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
/****** Object:  Default [DF_cmsMacroProperty_macroPropertySortOrder]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
/****** Object:  Default [DF_cmsMember_Email]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
/****** Object:  Default [DF_cmsMember_LoginName]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
/****** Object:  Default [DF_cmsMember_Password]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
/****** Object:  Default [DF_cmsMemberType_memberCanEdit]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
/****** Object:  Default [DF_cmsMemberType_viewOnProfile]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
/****** Object:  Default [DF_cmsPropertyType_sortOrder]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
/****** Object:  Default [DF_cmsPropertyType_mandatory]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
/****** Object:  Default [DF_cmsTask_closed]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_closed]  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF_cmsTask_DateTime]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
/****** Object:  Default [DF_umbracoLog_Datestamp]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
/****** Object:  Default [DF_umbracoNode_trashed]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
/****** Object:  Default [DF_umbracoNode_createDate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_umbracoRelation_datetime]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
/****** Object:  Default [DF_umbracoServer_registeredDate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
/****** Object:  Default [DF_umbracoUser_userDisabled]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
/****** Object:  Default [DF_umbracoUser_userNoConsole]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
/****** Object:  ForeignKey [FK_cmsContent_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentType_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_child]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_parent]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType1]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
/****** Object:  ForeignKey [FK_cmsContentVersion_cmsContent_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsContentXml_cmsContent_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDataType_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDataTypePreValues_cmsDataType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsContent_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsTemplate_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsContentType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsTemplate_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsLanguageText_cmsDictionary_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacro_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
/****** Object:  ForeignKey [FK_cmsMember_cmsContent_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_cmsMember_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_cmsContentType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContent_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContentVersion_VersionId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_cmsPropertyType_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsContentType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsDataType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsPropertyTypeGroup_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id] FOREIGN KEY([parentGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsStylesheet_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsContent]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsPropertyType]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsTags_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
/****** Object:  ForeignKey [FK_cmsTags_cmsTags]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_cmsTags] FOREIGN KEY([ParentId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_cmsTags]
GO
/****** Object:  ForeignKey [FK_cmsTask_cmsTaskType_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser1]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_cmsTemplate]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_umbracoNode]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoDomains_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoNode_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode1]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoRelationType_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser_umbracoUserType_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_umbracoUser_umbracoUserType_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoUser_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoUser_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoNode_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoUser_id]    Script Date: 01/24/2015 11:36:13 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id]
GO

USE [OpenAuthDB]
GO
/****** Object:  Table [dbo].[WF_SchemeInfo]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_SchemeInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemeCode] [varchar](50) NULL,
	[SchemeName] [varchar](200) NULL,
	[SchemeType] [varchar](50) NULL,
	[SchemeVersion] [varchar](50) NULL,
	[SchemeCanUser] [varchar](max) NULL,
	[FrmType] [int] NULL,
	[AuthorizeType] [int] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [int] NOT NULL,
	[EnabledMark] [int] NOT NULL,
	[Description] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
	[CreateUserName] [varchar](50) NOT NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserId] [varchar](50) NULL,
	[ModifyUserName] [varchar](50) NULL,
 CONSTRAINT [PK__WF_Schem__3214EC074AD0DFEE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_SchemeInfo] ([Id], [SchemeCode], [SchemeName], [SchemeType], [SchemeVersion], [SchemeCanUser], [FrmType], [AuthorizeType], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreateDate], [CreateUserId], [CreateUserName], [ModifyDate], [ModifyUserId], [ModifyUserName]) VALUES (N'5a0b49a2-22f9-43b2-ab81-2dd2341dedbe', N'请假流程', N'请假流程', N'', N'201702062315353920', N'', NULL, NULL, NULL, 0, 1, N'', CAST(0x0000A712017F4F68 AS DateTime), N'', N'', CAST(0x0000A712017F4F68 AS DateTime), N'', N'')
/****** Object:  Table [dbo].[WF_SchemeContent]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_SchemeContent](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemeInfoId] [uniqueidentifier] NOT NULL,
	[SchemeVersion] [varchar](50) NOT NULL,
	[SchemeContent] [varchar](max) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
	[CreateUserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK__WF_Schem__3214EC07770E5E74] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_SchemeContent] ([Id], [SchemeInfoId], [SchemeVersion], [SchemeContent], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'a514aa0b-284d-4744-a99f-984ca85a424e', N'5a0b49a2-22f9-43b2-ab81-2dd2341dedbe', N'201702062315353920', N'{"Frm":{"FrmId":"99eec887-1a27-4051-a153-09320c90e617","FrmDbId":null,"FrmTable":null,"FrmName":"请假单","FrmContent":"[{\"control_type\":\"radio\",\"control_label\":\"请假事由\",\"control_field\":\"d9ebcbe9-a29d-e727-0e70-f2ece84cea95\",\"control_item\":[{\"identify\":\"2338287584876091\",\"color\":\"color_a\",\"name\":\"事假\",\"defaults\":1},{\"identify\":\"43241665285144115\",\"color\":\"color_a\",\"name\":\"病假\",\"defaults\":0},{\"identify\":\"4863826466749944\",\"color\":\"color_a\",\"name\":\"婚假\",\"defaults\":0}],\"control_required\":1},{\"control_type\":\"text\",\"control_label\":\"请假天数\",\"control_field\":\"da5497c8-5780-4651-41f5-ceb6580d5acb\",\"control_verify\":\"Num\",\"control_default\":\"2\",\"control_required\":1},{\"control_type\":\"datetime\",\"control_label\":\"开始时间\",\"control_field\":\"84bbec08-9841-c69d-060b-766f82cb3887\",\"control_dateformat\":\"date\",\"control_default\":\"Today\",\"control_required\":1}]","FrmTableId":null},"Flow":{"title":"newFlow_1","nodes":[{"name":"开始","left":77,"top":60,"type":"startround","css":"","img":"","width":24,"height":24,"alt":true,"id":"FlowPanel_node_1"},{"name":"一审","left":48,"top":148,"type":"stepnode","css":"","img":"","width":152,"height":67,"alt":true,"id":"FlowPanel_node_2","setInfo":{"NodeCode":"96fa08d0-06df-4506-a90a-6a546f59f523","NodeName":"一审","NodeDataBase":"","NodeTable":"","NodePram":"","NodeRejectType":"0","NodeRejectStep":"","NodeIsOver":"0","NodeConfluenceType":"","NodeConfluenceRate":"100","Description":"","NodeDesignate":"NodeDesignateType1","frmPermissionInfo":[{"fieldid":"d9ebcbe9-a29d-e727-0e70-f2ece84cea95","look":true},{"fieldid":"da5497c8-5780-4651-41f5-ceb6580d5acb","look":true},{"fieldid":"84bbec08-9841-c69d-060b-766f82cb3887","look":true}],"NodeDataBaseToSQL":"","NodeSQL":""}},{"name":"二审","left":47,"top":261,"type":"stepnode","css":"","img":"","width":152,"height":67,"alt":true,"id":"FlowPanel_node_3","setInfo":{"NodeCode":"d8a2cda6-aa82-4088-b8f1-25a1c73ecdb3","NodeName":"二审","NodeDataBase":"","NodeTable":"","NodePram":"","NodeRejectType":"0","NodeRejectStep":"","NodeIsOver":"0","NodeConfluenceType":"","NodeConfluenceRate":"100","Description":"","NodeDesignate":"NodeDesignateType1","frmPermissionInfo":[{"fieldid":"d9ebcbe9-a29d-e727-0e70-f2ece84cea95","look":true},{"fieldid":"da5497c8-5780-4651-41f5-ceb6580d5acb","look":true},{"fieldid":"84bbec08-9841-c69d-060b-766f82cb3887","look":true}],"NodeDataBaseToSQL":"","NodeSQL":""}},{"name":"结束","left":105,"top":384,"type":"endround","css":"","img":"","width":24,"height":24,"alt":true,"id":"FlowPanel_node_4"}],"lines":[{"id":"FlowPanel_line_5","type":"sl","from":"FlowPanel_node_1","to":"FlowPanel_node_2","name":"","alt":true},{"id":"FlowPanel_line_6","type":"sl","from":"FlowPanel_node_2","to":"FlowPanel_node_3","name":"","alt":true},{"id":"FlowPanel_line_7","type":"sl","from":"FlowPanel_node_3","to":"FlowPanel_node_4","name":"","alt":true}],"areas":{},"initNum":8}}', CAST(0x0000A712017F4F69 AS DateTime), N'', N'')
/****** Object:  Table [dbo].[WF_ProcessTransitionHistory]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ProcessTransitionHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[ProcessId] [uniqueidentifier] NOT NULL,
	[fromNodeId] [varchar](50) NOT NULL,
	[fromNodeType] [int] NULL,
	[fromNodeName] [varchar](200) NULL,
	[toNodeId] [varchar](50) NOT NULL,
	[toNodeType] [int] NULL,
	[toNodeName] [varchar](200) NULL,
	[TransitionSate] [int] NOT NULL,
	[isFinish] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
	[CreateUserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK__WF_Proce__3214EC072A4D23CB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_ProcessTransitionHistory] ([Id], [ProcessId], [fromNodeId], [fromNodeType], [fromNodeName], [toNodeId], [toNodeType], [toNodeName], [TransitionSate], [isFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'8fa95fb5-788b-4067-b60a-6ad879e2d763', N'cd962282-e700-45ae-b41f-f2315701b955', N'FlowPanel_node_2', 2, N'一审', N'FlowPanel_node_3', 2, N'二审', 0, 0, CAST(0x0000A712017FB6A9 AS DateTime), N'', N'')
INSERT [dbo].[WF_ProcessTransitionHistory] ([Id], [ProcessId], [fromNodeId], [fromNodeType], [fromNodeName], [toNodeId], [toNodeType], [toNodeName], [TransitionSate], [isFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'ffdfda0b-3fb4-4197-800a-7aa5aa14d23f', N'cd962282-e700-45ae-b41f-f2315701b955', N'FlowPanel_node_1', 3, N'开始', N'FlowPanel_node_2', 2, N'一审', 0, 0, CAST(0x0000A712017F8D6D AS DateTime), N'', N'')
/****** Object:  Table [dbo].[WF_ProcessScheme]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ProcessScheme](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemeContent] [varchar](max) NOT NULL,
	[SchemeInfoId] [uniqueidentifier] NOT NULL,
	[SchemeVersion] [varchar](50) NOT NULL,
	[ProcessType] [int] NOT NULL,
 CONSTRAINT [PK__WF_Proce__3214EC07FAC3C13B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_ProcessScheme] ([Id], [SchemeContent], [SchemeInfoId], [SchemeVersion], [ProcessType]) VALUES (N'eb9884ca-90aa-49b4-bbe5-69b51c8e8924', N'{"SchemeContent":"{\r\n  \"Frm\": {\r\n    \"FrmId\": \"99eec887-1a27-4051-a153-09320c90e617\",\r\n    \"FrmDbId\": null,\r\n    \"FrmTable\": null,\r\n    \"FrmName\": \"请假单\",\r\n    \"FrmContent\": \"[{\\\"control_type\\\":\\\"radio\\\",\\\"control_label\\\":\\\"请假事由\\\",\\\"control_field\\\":\\\"d9ebcbe9-a29d-e727-0e70-f2ece84cea95\\\",\\\"control_item\\\":[{\\\"identify\\\":\\\"2338287584876091\\\",\\\"color\\\":\\\"color_a\\\",\\\"name\\\":\\\"事假\\\",\\\"defaults\\\":1},{\\\"identify\\\":\\\"43241665285144115\\\",\\\"color\\\":\\\"color_a\\\",\\\"name\\\":\\\"病假\\\",\\\"defaults\\\":0},{\\\"identify\\\":\\\"4863826466749944\\\",\\\"color\\\":\\\"color_a\\\",\\\"name\\\":\\\"婚假\\\",\\\"defaults\\\":0}],\\\"control_required\\\":1},{\\\"control_type\\\":\\\"text\\\",\\\"control_label\\\":\\\"请假天数\\\",\\\"control_field\\\":\\\"da5497c8-5780-4651-41f5-ceb6580d5acb\\\",\\\"control_verify\\\":\\\"Num\\\",\\\"control_default\\\":\\\"2\\\",\\\"control_required\\\":1},{\\\"control_type\\\":\\\"datetime\\\",\\\"control_label\\\":\\\"开始时间\\\",\\\"control_field\\\":\\\"84bbec08-9841-c69d-060b-766f82cb3887\\\",\\\"control_dateformat\\\":\\\"date\\\",\\\"control_default\\\":\\\"Today\\\",\\\"control_required\\\":1}]\",\r\n    \"FrmTableId\": null\r\n  },\r\n  \"Flow\": {\r\n    \"title\": \"newFlow_1\",\r\n    \"nodes\": [\r\n      {\r\n        \"name\": \"开始\",\r\n        \"left\": 77,\r\n        \"top\": 60,\r\n        \"type\": \"startround\",\r\n        \"css\": \"\",\r\n        \"img\": \"\",\r\n        \"width\": 24,\r\n        \"height\": 24,\r\n        \"alt\": true,\r\n        \"id\": \"FlowPanel_node_1\"\r\n      },\r\n      {\r\n        \"name\": \"一审\",\r\n        \"left\": 48,\r\n        \"top\": 148,\r\n        \"type\": \"stepnode\",\r\n        \"css\": \"\",\r\n        \"img\": \"\",\r\n        \"width\": 152,\r\n        \"height\": 67,\r\n        \"alt\": true,\r\n        \"id\": \"FlowPanel_node_2\",\r\n        \"setInfo\": {\r\n          \"NodeCode\": \"96fa08d0-06df-4506-a90a-6a546f59f523\",\r\n          \"NodeName\": \"一审\",\r\n          \"NodeDataBase\": \"\",\r\n          \"NodeTable\": \"\",\r\n          \"NodePram\": \"\",\r\n          \"NodeRejectType\": \"0\",\r\n          \"NodeRejectStep\": \"\",\r\n          \"NodeIsOver\": \"0\",\r\n          \"NodeConfluenceType\": \"\",\r\n          \"NodeConfluenceRate\": \"100\",\r\n          \"Description\": \"\",\r\n          \"NodeDesignate\": \"NodeDesignateType1\",\r\n          \"frmPermissionInfo\": [\r\n            {\r\n              \"fieldid\": \"d9ebcbe9-a29d-e727-0e70-f2ece84cea95\",\r\n              \"look\": true\r\n            },\r\n            {\r\n              \"fieldid\": \"da5497c8-5780-4651-41f5-ceb6580d5acb\",\r\n              \"look\": true\r\n            },\r\n            {\r\n              \"fieldid\": \"84bbec08-9841-c69d-060b-766f82cb3887\",\r\n              \"look\": true\r\n            }\r\n          ],\r\n          \"NodeDataBaseToSQL\": \"\",\r\n          \"NodeSQL\": \"\",\r\n          \"Taged\": 1,\r\n          \"UserId\": \"System\",\r\n          \"description\": \"一审通过\",\r\n          \"TagedTime\": \"2017-02-06 23:17\"\r\n        }\r\n      },\r\n      {\r\n        \"name\": \"二审\",\r\n        \"left\": 47,\r\n        \"top\": 261,\r\n        \"type\": \"stepnode\",\r\n        \"css\": \"\",\r\n        \"img\": \"\",\r\n        \"width\": 152,\r\n        \"height\": 67,\r\n        \"alt\": true,\r\n        \"id\": \"FlowPanel_node_3\",\r\n        \"setInfo\": {\r\n          \"NodeCode\": \"d8a2cda6-aa82-4088-b8f1-25a1c73ecdb3\",\r\n          \"NodeName\": \"二审\",\r\n          \"NodeDataBase\": \"\",\r\n          \"NodeTable\": \"\",\r\n          \"NodePram\": \"\",\r\n          \"NodeRejectType\": \"0\",\r\n          \"NodeRejectStep\": \"\",\r\n          \"NodeIsOver\": \"0\",\r\n          \"NodeConfluenceType\": \"\",\r\n          \"NodeConfluenceRate\": \"100\",\r\n          \"Description\": \"\",\r\n          \"NodeDesignate\": \"NodeDesignateType1\",\r\n          \"frmPermissionInfo\": [\r\n            {\r\n              \"fieldid\": \"d9ebcbe9-a29d-e727-0e70-f2ece84cea95\",\r\n              \"look\": true\r\n            },\r\n            {\r\n              \"fieldid\": \"da5497c8-5780-4651-41f5-ceb6580d5acb\",\r\n              \"look\": true\r\n            },\r\n            {\r\n              \"fieldid\": \"84bbec08-9841-c69d-060b-766f82cb3887\",\r\n              \"look\": true\r\n            }\r\n          ],\r\n          \"NodeDataBaseToSQL\": \"\",\r\n          \"NodeSQL\": \"\"\r\n        }\r\n      },\r\n      {\r\n        \"name\": \"结束\",\r\n        \"left\": 105,\r\n        \"top\": 384,\r\n        \"type\": \"endround\",\r\n        \"css\": \"\",\r\n        \"img\": \"\",\r\n        \"width\": 24,\r\n        \"height\": 24,\r\n        \"alt\": true,\r\n        \"id\": \"FlowPanel_node_4\"\r\n      }\r\n    ],\r\n    \"lines\": [\r\n      {\r\n        \"id\": \"FlowPanel_line_5\",\r\n        \"type\": \"sl\",\r\n        \"from\": \"FlowPanel_node_1\",\r\n        \"to\": \"FlowPanel_node_2\",\r\n        \"name\": \"\",\r\n        \"alt\": true\r\n      },\r\n      {\r\n        \"id\": \"FlowPanel_line_6\",\r\n        \"type\": \"sl\",\r\n        \"from\": \"FlowPanel_node_2\",\r\n        \"to\": \"FlowPanel_node_3\",\r\n        \"name\": \"\",\r\n        \"alt\": true\r\n      },\r\n      {\r\n        \"id\": \"FlowPanel_line_7\",\r\n        \"type\": \"sl\",\r\n        \"from\": \"FlowPanel_node_3\",\r\n        \"to\": \"FlowPanel_node_4\",\r\n        \"name\": \"\",\r\n        \"alt\": true\r\n      }\r\n    ],\r\n    \"areas\": {},\r\n    \"initNum\": 8\r\n  }\r\n}","frmData":"{\"d9ebcbe9-a29d-e727-0e70-f2ece84cea95\":\"事假\",\"da5497c8-5780-4651-41f5-ceb6580d5acb\":\"2\",\"84bbec08-9841-c69d-060b-766f82cb3887\":\"2017-02-06\"}"}', N'5a0b49a2-22f9-43b2-ab81-2dd2341dedbe', N'201702062315353920', 1)
/****** Object:  Table [dbo].[WF_ProcessOperationHistory]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ProcessOperationHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[ProcessId] [uniqueidentifier] NOT NULL,
	[Content] [varchar](200) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
	[CreateUserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK__WF_Proce__3214EC07D7D5794C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_ProcessOperationHistory] ([Id], [ProcessId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'6249b91e-0b89-48a4-a0cf-0b5da1a65501', N'cd962282-e700-45ae-b41f-f2315701b955', N'【todo name】【一审】【2017-02-06 23:17】同意,备注：一审通过', CAST(0x0000A712017FB5AE AS DateTime), N'', N'')
INSERT [dbo].[WF_ProcessOperationHistory] ([Id], [ProcessId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'8c44d4ca-8b89-43a5-9f48-cf539a4899dd', N'cd962282-e700-45ae-b41f-f2315701b955', N'【创建】创建了一个流程进程【请假流程/老夫病了】', CAST(0x0000A712017F8D6D AS DateTime), N'', N'')
/****** Object:  Table [dbo].[WF_ProcessInstance]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ProcessInstance](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](200) NOT NULL,
	[CustomName] [varchar](200) NULL,
	[ActivityId] [varchar](50) NOT NULL,
	[ActivityType] [int] NOT NULL,
	[ActivityName] [varchar](200) NOT NULL,
	[PreviousId] [varchar](50) NULL,
	[ProcessSchemeId] [uniqueidentifier] NOT NULL,
	[SchemeType] [varchar](50) NOT NULL,
	[FrmType] [int] NULL,
	[EnabledMark] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NOT NULL,
	[CreateUserName] [varchar](50) NOT NULL,
	[wfLevel] [int] NULL,
	[Description] [varchar](200) NULL,
	[isFinish] [int] NULL,
	[MakerList] [varchar](1000) NULL,
 CONSTRAINT [PK__WF_Proce__3214EC070E63B02E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_ProcessInstance] ([Id], [Code], [CustomName], [ActivityId], [ActivityType], [ActivityName], [PreviousId], [ProcessSchemeId], [SchemeType], [FrmType], [EnabledMark], [CreateDate], [CreateUserId], [CreateUserName], [wfLevel], [Description], [isFinish], [MakerList]) VALUES (N'cd962282-e700-45ae-b41f-f2315701b955', N'请假流程', N'老夫病了', N'FlowPanel_node_3', 2, N'二审', N'FlowPanel_node_2', N'eb9884ca-90aa-49b4-bbe5-69b51c8e8924', N'', NULL, 1, CAST(0x0000A712017F8D81 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'System', 2, N'批还是不批？', 0, N'1')
/****** Object:  Table [dbo].[WF_FrmMain]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FrmMain](
	[Id] [uniqueidentifier] NOT NULL,
	[FrmCode] [varchar](50) NULL,
	[FrmName] [varchar](200) NULL,
	[FrmType] [varchar](50) NULL,
	[FrmDbId] [varchar](50) NULL,
	[FrmTable] [varchar](50) NULL,
	[isSystemTable] [int] NULL,
	[FrmTableId] [varchar](50) NULL,
	[FrmContent] [text] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [int] NULL,
	[EnabledMark] [int] NULL,
	[Description] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUserId] [varchar](50) NULL,
	[CreateUserName] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserId] [varchar](50) NULL,
	[ModifyUserName] [varchar](50) NULL,
 CONSTRAINT [PK__WF_FrmMa__5341180275CE4FF2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WF_FrmMain] ([Id], [FrmCode], [FrmName], [FrmType], [FrmDbId], [FrmTable], [isSystemTable], [FrmTableId], [FrmContent], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreateDate], [CreateUserId], [CreateUserName], [ModifyDate], [ModifyUserId], [ModifyUserName]) VALUES (N'99eec887-1a27-4051-a153-09320c90e617', N'请假单', N'请假单', N'', NULL, NULL, 0, NULL, N'[{"control_type":"radio","control_label":"请假事由","control_field":"d9ebcbe9-a29d-e727-0e70-f2ece84cea95","control_item":[{"identify":"2338287584876091","color":"color_a","name":"事假","defaults":1},{"identify":"43241665285144115","color":"color_a","name":"病假","defaults":0},{"identify":"4863826466749944","color":"color_a","name":"婚假","defaults":0}],"control_required":1},{"control_type":"text","control_label":"请假天数","control_field":"da5497c8-5780-4651-41f5-ceb6580d5acb","control_verify":"Num","control_default":"2","control_required":1},{"control_type":"datetime","control_label":"开始时间","control_field":"84bbec08-9841-c69d-060b-766f82cb3887","control_dateformat":"date","control_default":"Today","control_required":1}]', NULL, NULL, 1, N'请假用的', CAST(0x0000A712017EC704 AS DateTime), N'', N'', CAST(0x0000A712017EC704 AS DateTime), N'System', N'')
/****** Object:  Table [dbo].[User]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Sex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CrateId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'admin', N'admin', N'admin', 0, 0, 0, N'', CAST(0x0000A67500E5CD17 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'7eed5b2e-d928-4c6d-bc25-681d3197ba3b', N'test1234319450', N'test1234319450', N'test1234319450', 0, 0, 0, N'', CAST(0x0000A6860151D964 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'test', N'test', N'test', 0, 0, 0, N'', CAST(0x0000A67500E5DB2F AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'68315cde-554a-45d0-90b1-7599ed0f87c4', N'test1578600408', N'test1578600408', N'test1578600408', 0, 0, 0, N'', CAST(0x0000A6860151D9B9 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'51bbc462-34dd-403e-99db-87d56da5fb00', N'test1047047696', N'test1047047696', N'test1047047696', 0, 0, 0, N'', CAST(0x0000A6860151D974 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'09393e87-2593-4437-9dda-9362c904db35', N'test1104505776', N'test1104505776', N'test1104505776', 0, 0, 0, N'', CAST(0x0000A68601526365 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'899f425f-f055-4b60-a485-97484b796572', N'test266193702', N'test266193702', N'test266193702', 0, 0, 0, N'', CAST(0x0000A68601526354 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'test1', N'test1', N'test1', 0, 0, 0, N'', CAST(0x0000A6860147986E AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'89d95646-c346-4e8b-8dea-a89ee123b606', N'test1885359770', N'test1885359770', N'test1885359770', 0, 0, 0, N'', CAST(0x0000A6860151D989 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'71cef958-3238-4042-80f0-b2c79ca64d7d', N'test396007376', N'test396007376', N'test396007376', 0, 0, 0, N'', CAST(0x0000A6860151D94E AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'40544c42-aa20-4e9f-a33e-b50ba1d2f05c', N'test1762637029', N'test1762637029', N'test1762637029', 0, 0, 0, N'', CAST(0x0000A68601526329 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'fe34f623-b304-4fea-9418-b82145ab1497', N'test1830421175', N'test1830421175', N'test1830421175', 0, 0, 0, N'', CAST(0x0000A6860152633D AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'5eb71050-9af7-4ead-b494-b96d4270a2cf', N'test1987430379', N'test1987430379', N'test1987430379', 0, 0, 0, N'', CAST(0x0000A686015263A5 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'73717f93-868c-4ff7-944f-c2f8a0cbfc42', N'test82157081', N'test82157081', N'test82157081', 0, 0, 0, N'', CAST(0x0000A6860151D9E2 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'ef0b5581-e85f-4436-a289-cd253a3b8791', N'test1179380855', N'test1179380855', N'test1179380855', 0, 0, 0, N'', CAST(0x0000A68601526313 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'aa3998f6-2c2f-4194-9ccb-cf6a917bb28c', N'test565862131', N'test565862131', N'test565862131', 0, 0, 0, N'', CAST(0x0000A6860152637A AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'testno', N'testno', N'testno(无任何权限)', 0, 0, 0, N'', CAST(0x0000A67500E6096C AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'fb68000f-5309-4fa3-b6cf-d92c975a008b', N'test481492962', N'test481492962', N'test481492962', 0, 0, 0, N'', CAST(0x0000A686015261DA AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'f820ed38-21b1-4b7c-83cf-db567d839fcb', N'test1391328654', N'test1391328654', N'test1391328654', 0, 0, 0, N'', CAST(0x0000A6860151D9CD AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'd31932c6-14e2-43e8-bf7c-dc70174dc3df', N'test1688593926', N'test1688593926', N'test1688593926', 0, 0, 0, N'', CAST(0x0000A6860151D863 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'6c630ae2-d63a-40c6-a564-e7f8fb9af4eb', N'test1055580473', N'test1055580473', N'test1055580473', 0, 0, 0, N'', CAST(0x0000A6860152C5BC AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'f047cfd0-01a8-4acb-a11a-ebe9034504a5', N'test109184498', N'test109184498', N'test109184498', 0, 0, 0, N'', CAST(0x0000A686015262E6 AS DateTime), NULL)
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CrateId]) VALUES (N'5587f544-8219-45e4-991b-f0ea52cb6dbb', N'test1690997083', N'test1690997083', N'test1690997083', 0, 0, 0, N'', CAST(0x0000A6860151D9F8 AS DateTime), NULL)
/****** Object:  Table [dbo].[Stock]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Number] [int] NOT NULL,
	[Price] [decimal](10, 1) NOT NULL,
	[Status] [int] NOT NULL,
	[Viewable] [varchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[OrgId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库/入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可见范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Viewable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入库信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock'
GO
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'b1d19f2b-2fbf-45fa-9805-04e30cda8597', N'普通产品', 3, CAST(100.0 AS Decimal(10, 1)), 0, N'DEV', CAST(0x0000A5E600000000 AS DateTime), N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'5deb7f53-850d-4bc5-ab03-5982836ffed3', N'权限管理软件一套', 2, CAST(10000.0 AS Decimal(10, 1)), 0, N'ADMIN', CAST(0x0000A5EF00000000 AS DateTime), N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'c9ac16d0-0f07-40db-aa50-59b42aa5be0d', N'颠三倒四多', 1, CAST(0.0 AS Decimal(10, 1)), 0, N'', CAST(0x0000A6F700A8C33C AS DateTime), N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'20fe07a1-695f-4ded-bb92-6cf8c0d64173', N'权限管理', 1, CAST(10000.0 AS Decimal(10, 1)), 1, N'', CAST(0x0000A68100000000 AS DateTime), N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'6a4ed45e-c7f5-4dd7-84bb-7b7c13dc2f5b', N'打印机', 2, CAST(3333.0 AS Decimal(10, 1)), 1, N'', CAST(0x0000A5EF00000000 AS DateTime), N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [Viewable], [Time], [OrgId]) VALUES (N'1b2499a3-c89d-4030-8f1e-c2d6b947f4ea', N'高级权限管理', 1, CAST(999.0 AS Decimal(10, 1)), 0, N'ADMIN', CAST(0x0000A5870098A8DC AS DateTime), N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
/****** Object:  Table [dbo].[Role]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId]) VALUES (N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'集团高层', 0, 0, CAST(0x0000A6780000006A AS DateTime), N'')
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId]) VALUES (N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'研发主管', 0, 0, CAST(0x0000A6A200A5C1CD AS DateTime), N'')
/****** Object:  Table [dbo].[Resource]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[Id] [uniqueidentifier] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Key] [varchar](200) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource'
GO
INSERT [dbo].[Resource] ([Id], [CascadeId], [Key], [Name], [Status], [SortNo], [Description], [ParentId], [CategoryId]) VALUES (N'ec99f670-0eca-465c-9f64-d4d5dc510b83', N'', N'DEV', N'开发可见', 0, 0, N'仅开发维护可见的内容', NULL, N'fa37b322-508b-47ce-b29f-b1dacb82637a')
INSERT [dbo].[Resource] ([Id], [CascadeId], [Key], [Name], [Status], [SortNo], [Description], [ParentId], [CategoryId]) VALUES (N'fdf3aac3-4507-40ad-aa2f-d7f0459de252', N'', N'ADMIN', N'管理层可见', 0, 0, N'仅管理层可见的内容', NULL, N'fa37b322-508b-47ce-b29f-b1dacb82637a')
/****** Object:  Table [dbo].[Relevance]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Relevance](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[OperateTime] [datetime] NOT NULL,
	[OperatorId] [int] NOT NULL,
	[FirstId] [uniqueidentifier] NOT NULL,
	[SecondId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Relevance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'FirstId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'SecondId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'多对多关系集中映射' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance'
GO
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'120d7a5d-203c-4261-95f5-0125757fb386', N'', N'UserElement', 0, CAST(0x0000A6A501186DFD AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'7f071c63-1620-4486-9264-5806b2e63218')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'feef2bb0-422e-4753-8c7d-0287d692db07', N'', N'UserOrg', 0, CAST(0x0000A68601526298 AS DateTime), 0, N'fb68000f-5309-4fa3-b6cf-d92c975a008b', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'68912e65-256e-45b6-b48e-036382598d32', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5D841 AS DateTime), 0, N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1cf19b35-e2c2-436f-99b9-03ac2b232cc6', N'', N'RoleElement', 0, CAST(0x0000A6770180D0ED AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'44075557-496e-4dde-bb75-7b69f51ab4fe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'dfd5430b-3422-465a-be79-05a1e06deed2', N'', N'RoleElement', 0, CAST(0x0000A6770180C45D AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'172bd18a-e58e-4360-a1ea-05d41cb2c31e', N'', N'UserOrg', 0, CAST(0x0000A6860151D96D AS DateTime), 0, N'7eed5b2e-d928-4c6d-bc25-681d3197ba3b', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9a6b2159-939b-4382-bc8d-080f5223b333', N'', N'UserOrg', 0, CAST(0x0000A68601526298 AS DateTime), 0, N'fb68000f-5309-4fa3-b6cf-d92c975a008b', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'13612a4c-b20c-4bd0-a2cd-0ae47576364d', N'', N'UserElement', 0, CAST(0x0000A6A5011110C7 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6db5666b-6f8c-4e83-bada-0b45054bd9a4', N'', N'RoleElement', 0, CAST(0x0000A6770180B649 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0d25438e-1436-48e0-aedf-0f1690693282')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3bcaab20-e096-480e-a9bb-0fdb70686714', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'cf7388be-2677-427c-ad78-8f00f1062b96')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a051aa08-38da-4b6d-8d90-10b3c2485e4b', N'', N'RoleOrg', 0, CAST(0x0000A6780000006A AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5725ff79-43c6-4778-bbff-131cf364dab6', N'', N'UserElement', 0, CAST(0x0000A6A501186E92 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'cf7388be-2677-427c-ad78-8f00f1062b96')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'242e9543-3343-41d4-8816-15ffeeaef551', N'', N'UserElement', 0, CAST(0x0000A67A00FFC7A6 AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a8123b37-ba70-4aab-aef6-1938733b5210', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c0d8505c-061a-467d-862a-c94f27caa208')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'da6c0645-0bf9-4ade-9dd3-1b09e91e504c', N'', N'RoleElement', 0, CAST(0x0000A678009A6357 AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f1779e2f-3fb6-4408-939c-1b643220e42c', N'', N'UserOrg', 0, CAST(0x0000A68601526389 AS DateTime), 0, N'aa3998f6-2c2f-4194-9ccb-cf6a917bb28c', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2d0fcc88-a7c0-4d33-8a08-1d688e9dde83', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4ba3982b-f0ae-4f9a-980e-1eaedc3b5f2e', N'', N'UserElement', 0, CAST(0x0000A67A01257D69 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'af263192-daa8-4f29-99b9-1efb96e31627', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'645b40ac-4223-44a7-aab4-66eb56cf9864')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c14addeb-1812-4a78-9152-1f7115b22d89', N'', N'UserRole', 0, CAST(0x0000A67800003793 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'224a2821-12db-4bde-bb6c-1fa3cc241bd9', N'', N'UserOrg', 0, CAST(0x0000A6860151D96D AS DateTime), 0, N'7eed5b2e-d928-4c6d-bc25-681d3197ba3b', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'832f4a8f-7791-4aa6-bcd2-20dcb6f5ef37', N'', N'UserElement', 0, CAST(0x0000A67500F54A2F AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9e46a946-6e81-4f61-bcba-21e4f7fac3df', N'', N'RoleModule', 0, CAST(0x0000A67501192799 AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'df2d90b3-4e2e-40e9-b406-220009726460', N'', N'RoleModule', 0, CAST(0x0000A6770180AD2A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'08ff97f7-17fc-4072-b29a-287135898ece', N'', N'RoleResource', 0, CAST(0x0000A67701809F05 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fdf3aac3-4507-40ad-aa2f-d7f0459de252')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4fde1dc6-9d73-4c7c-9238-28981858c5a6', N'', N'RoleModule', 0, CAST(0x0000A678009A5780 AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1873ed85-a88a-4236-bd40-2c416aa2576c', N'', N'RoleModule', 0, CAST(0x0000A67501192770 AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c9099371-8d4e-4f5b-9686-2c60a2c1c641', N'', N'ProcessUser', 0, CAST(0x0000A67B0114EBF4 AS DateTime), 0, N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2ebff9a4-b2d5-4a35-a7dd-2cfa2f5b0522', N'', N'ProcessUser', 0, CAST(0x0000A67A01216463 AS DateTime), 0, N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'8579b351-0ae3-4b5f-8cdd-2ead39dbe1e0', N'', N'UserOrg', 0, CAST(0x0000A6860151D9EC AS DateTime), 0, N'73717f93-868c-4ff7-944f-c2f8a0cbfc42', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3a5700e5-ac2f-49dd-9a00-2ef956ccb78a', N'', N'UserOrg', 0, CAST(0x0000A6860152635E AS DateTime), 0, N'899f425f-f055-4b60-a485-97484b796572', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2d15e438-cc3a-41e9-9b13-325bfd5c804a', N'', N'RoleElement', 0, CAST(0x0000A6770180D68A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84e38920-f6e5-499c-bf52-a3c6f8499ff7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'715d017a-68b6-468d-aa3f-32ca4cfd4b9e', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9ad706e3-8e6b-4bc7-a502-371b298ef062', N'', N'RoleElement', 0, CAST(0x0000A6770180DB22 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef42721f-d223-4a00-a1d9-80b81121f21a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ac9082bb-635a-43eb-97d4-372a84b1c159', N'', N'UserOrg', 0, CAST(0x0000A68601526332 AS DateTime), 0, N'40544c42-aa20-4e9f-a33e-b50ba1d2f05c', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2683e630-c8bd-4701-9d1e-386b9f3fcf2e', N'', N'UserOrg', 0, CAST(0x0000A686015262F5 AS DateTime), 0, N'f047cfd0-01a8-4acb-a11a-ebe9034504a5', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'77bd93da-2c2b-4ba8-bf05-3a1382811a6a', N'', N'RoleModule', 0, CAST(0x0000A67501192799 AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'84a52091-08a0-4a46-b661-3cd206771c29', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'93bcac7a-0ff1-488c-8d1c-3da7e44cbefc', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4C AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'965f010b-2fd6-4b34-ba23-3e44c1af2877', N'', N'RoleOrg', 0, CAST(0x0000A67B010CF904 AS DateTime), 0, N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'acc51898-5335-4903-83b9-4701a782bc4d', N'', N'UserElement', 0, CAST(0x0000A6A501186F28 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ab84b111-fb5d-4ddd-99d5-479954d9d521', N'', N'RoleOrg', 0, CAST(0x0000A67B010CF908 AS DateTime), 0, N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'8851dc0e-1185-4588-a6fe-48dc0cb7e578', N'', N'UserOrg', 0, CAST(0x0000A6860151DA01 AS DateTime), 0, N'5587f544-8219-45e4-991b-f0ea52cb6dbb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b2edfee4-f980-4aa5-b547-492d677e0674', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'06f4c4a2-faa8-4bad-9184-50ceb517f30b', N'', N'ProcessUser', 0, CAST(0x0000A67B0114EBF5 AS DateTime), 0, N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6aad866e-1b2d-4d83-b31c-5117f50881c8', N'', N'UserOrg', 0, CAST(0x0000A6860151D982 AS DateTime), 0, N'51bbc462-34dd-403e-99db-87d56da5fb00', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'19c9621c-3d23-46b7-a841-54d5c82ec8e8', N'', N'UserOrg', 0, CAST(0x0000A67500E5DB32 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'16154fc4-d18e-44a3-bcf2-5539b168aba7', N'', N'RoleElement', 0, CAST(0x0000A6A9011F1678 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'18cc3217-28a6-49b2-9a20-080230065984')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2014027e-0cff-41cf-974b-56126d6eaa9a', N'', N'RoleElement', 0, CAST(0x0000A678009A68AE AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6b67894b-5dc5-479c-bdef-5693d4e070c6', N'', N'UserOrg', 0, CAST(0x0000A6860152635E AS DateTime), 0, N'899f425f-f055-4b60-a485-97484b796572', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'92f0b297-96c1-47d4-84dd-571374431bc0', N'', N'RoleElement', 0, CAST(0x0000A6770180D0EC AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84694ea5-d6e1-4a65-8a59-7b5b779688d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'80310629-5e52-482c-9a0f-5c5bdfabcd9e', N'', N'RoleOrg', 0, CAST(0x0000A6780000006F AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'64e4f5aa-28ef-4690-9b20-5f0b543964f6', N'', N'UserElement', 0, CAST(0x0000A67A00FF85A6 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9edc7b81-2b51-4193-8805-6062e596ccdc', N'', N'UserOrg', 0, CAST(0x0000A67500E6096F AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ac184827-9899-4b40-8939-61fe9d2b187c', N'', N'UserElement', 0, CAST(0x0000A67A01258FB9 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f6367ca1-0486-46a4-b9c6-65c00936a516', N'', N'RoleElement', 0, CAST(0x0000A6770180C462 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'9e2c6754-f258-4b14-96a0-b9d981196a65')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a8094b46-de5a-40ea-a8ee-69ea905480ef', N'', N'RoleModule', 0, CAST(0x0000A678009A5734 AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'361feb63-bde2-49c7-86ec-6df3ec6f0fe3', N'', N'RoleElement', 0, CAST(0x0000A6770180DB23 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c870438-4260-43a5-8996-a6e1dc8bbf6a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5167dbcd-3a32-4ae8-827e-6f381cc58fa2', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4e613188-0387-4d17-a60d-703b4a606d75', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'72bf4729-af60-42f5-b0d7-717362ffad7f', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4C AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2feefce1-e3d8-42ac-b811-2352679628da')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f579a427-a9ed-4ebe-8411-72e8e6abd01d', N'', N'UserElement', 0, CAST(0x0000A678010EA882 AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e785147c-f46b-474f-8fad-73b14fa69822', N'', N'UserRole', 0, CAST(0x0000A6790119EE6D AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3de0359b-6331-4dc7-a00e-751f71dbadb5', N'', N'ProcessUser', 0, CAST(0x0000A68F009AC523 AS DateTime), 0, N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2a36a2b7-41aa-4190-b88c-75d44a56ad6e', N'', N'UserModule', 0, CAST(0x0000A7120003EDBE AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'92b00259-2d15-43e7-9321-adffb29e8bf2')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'332a373c-f485-4f85-9af9-7792f7462bf1', N'', N'RoleModule', 0, CAST(0x0000A6750119308C AS DateTime), 0, N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'd5a40ed5-e4ab-43e4-8ea4-7920d866f816', N'', N'UserOrg', 0, CAST(0x0000A68601526332 AS DateTime), 0, N'40544c42-aa20-4e9f-a33e-b50ba1d2f05c', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5a20d59c-6ee6-4fe2-98fe-7b35b11026ae', N'', N'UserElement', 0, CAST(0x0000A67A00FF85A7 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e28c0dcd-168a-4b60-a514-7b6eb8026709', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7fd7f976-f10e-44aa-a7ba-7ca40d2e8f90', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'444495aa-303f-4dce-b7df-7de999ad40d4', N'', N'UserOrg', 0, CAST(0x0000A6860151D9C6 AS DateTime), 0, N'68315cde-554a-45d0-90b1-7599ed0f87c4', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c6103f69-9378-4e05-821b-7e5d12915a17', N'', N'UserOrg', 0, CAST(0x0000A68601526373 AS DateTime), 0, N'09393e87-2593-4437-9dda-9362c904db35', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1271ec89-3b07-4c7a-a49a-7e6af3c12146', N'', N'UserOrg', 0, CAST(0x0000A686015263AE AS DateTime), 0, N'5eb71050-9af7-4ead-b494-b96d4270a2cf', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e84f6b9c-716d-4e94-a1aa-7fd0d1a2e23e', N'', N'RoleModule', 0, CAST(0x0000A6750119308B AS DateTime), 0, N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7475b0c3-f204-4f95-a22f-80591fe76bc7', N'', N'ProcessUser', 0, CAST(0x0000A6B000C3BC6D AS DateTime), 0, N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad267296-5eba-4d59-b821-8148d8cfb3c6', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ec9c80ce-dbdf-4ba5-9091-82f75392c3b0', N'', N'UserElement', 0, CAST(0x0000A67A00FFA0E8 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4991ea0b-4dbc-4cd8-8bbd-84812b1fc566', N'', N'UserOrg', 0, CAST(0x0000A6860151D9D7 AS DateTime), 0, N'f820ed38-21b1-4b7c-83cf-db567d839fcb', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9ca32abd-6eeb-47c7-adf8-84a9f26159e9', N'', N'UserOrg', 0, CAST(0x0000A6860152C5CB AS DateTime), 0, N'6c630ae2-d63a-40c6-a564-e7f8fb9af4eb', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'27c4d50c-32da-4dbc-88a1-84b343cdd649', N'', N'UserElement', 0, CAST(0x0000A6A501186D3A AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'6839a297-350b-4215-b680-4e5dfdae5615')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1acec4c4-0136-4e2b-a839-8676dbd6594a', N'', N'ProcessUser', 0, CAST(0x0000A68100BFD09D AS DateTime), 0, N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'aa537e02-9939-4110-a2da-87c0aec416c8', N'', N'UserOrg', 0, CAST(0x0000A6860151D99B AS DateTime), 0, N'89d95646-c346-4e8b-8dea-a89ee123b606', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6431a464-6f1f-4ffc-8157-89212b70f09a', N'', N'RoleOrg', 0, CAST(0x0000A6780000006F AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'13433400-a32c-4539-b988-8b417c09bc0e', N'', N'UserModule', 0, CAST(0x0000A67A00FF765A AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'620b368a-7b56-4c74-ab85-8bc91d08ddc9', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b9ecaad0-be49-4418-85e0-8ee26eae325d', N'', N'UserOrg', 0, CAST(0x0000A686015263AE AS DateTime), 0, N'5eb71050-9af7-4ead-b494-b96d4270a2cf', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a7213fba-6072-49aa-b193-8fa43b9c37fa', N'', N'UserOrg', 0, CAST(0x0000A686014798B1 AS DateTime), 0, N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'18fcb441-dd60-411c-b2fa-90e5d6be29db', N'', N'UserOrg', 0, CAST(0x0000A6860151D957 AS DateTime), 0, N'71cef958-3238-4042-80f0-b2c79ca64d7d', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'340c60fe-8b95-474c-aa04-9197903998d2', N'', N'RoleModule', 0, CAST(0x0000A6770180AD27 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'bee6572d-8fb8-4e0e-af15-93aafc989717', N'', N'RoleElement', 0, CAST(0x0000A6770180B649 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'68fc793f-069f-43e1-a012-42ac2d7c585c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'8851bc26-c1c7-47c4-a7a7-9440b75e7921', N'', N'UserOrg', 0, CAST(0x0000A6860151D957 AS DateTime), 0, N'71cef958-3238-4042-80f0-b2c79ca64d7d', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4757bb30-e4bc-4c2d-a824-947ef151d341', N'', N'UserRole', 0, CAST(0x0000A67A014F6DBE AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f4ba636a-9002-43e6-93eb-95132a3e68c5', N'', N'ProcessUser', 0, CAST(0x0000A68F009AC522 AS DateTime), 0, N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0fd5b371-b010-4846-8833-95cc1e813a32', N'', N'UserElement', 0, CAST(0x0000A67A00FFC7A6 AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2352a2da-063f-4a7e-8dce-967f6d4a7832', N'', N'UserOrg', 0, CAST(0x0000A6860151D9EC AS DateTime), 0, N'73717f93-868c-4ff7-944f-c2f8a0cbfc42', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'54b2e9b6-1f7c-4a39-92c9-98f58429c1fc', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6d036f11-4742-40dc-81e1-991356ad39d4', N'', N'UserOrg', 0, CAST(0x0000A6860151DA01 AS DateTime), 0, N'5587f544-8219-45e4-991b-f0ea52cb6dbb', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'854e0658-ab8a-4869-b157-9941955acdc6', N'', N'RoleElement', 0, CAST(0x0000A6770180D689 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1a473afd-cbd4-41e9-9471-81f9435aaabe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3dc61549-7533-4837-a85e-99449c8b07a3', N'', N'UserOrg', 0, CAST(0x0000A68601526348 AS DateTime), 0, N'fe34f623-b304-4fea-9418-b82145ab1497', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'acb4d37f-8b45-4a99-b364-99f3881dfcda', N'', N'RoleElement', 0, CAST(0x0000A6770180DB1A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'f8dde22a-2a37-47c4-8e67-70fb3af5303e')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9fa50449-5d87-4579-9f1f-9cdcd876976b', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6839a297-350b-4215-b680-4e5dfdae5615')
GO
print 'Processed 100 total records'
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'10e58d75-dec1-4b85-882f-9dac79ad1210', N'', N'RoleResource', 0, CAST(0x0000A6A6012AE37E AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c3050d65-d26b-4e46-bece-a212b0cc00ec', N'', N'RoleElement', 0, CAST(0x0000A6770180B648 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'66e25fc5-093d-42ab-85dc-a38f6600889b', N'', N'UserOrg', 0, CAST(0x0000A67500E6096F AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'61b5ba33-f5e2-4856-8b12-a5a119223584', N'', N'UserOrg', 0, CAST(0x0000A686015262F5 AS DateTime), 0, N'f047cfd0-01a8-4acb-a11a-ebe9034504a5', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c4771ac5-3375-4de9-adb8-a603398f0d62', N'', N'RoleElement', 0, CAST(0x0000A6770180D68B AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2d595a2a-5de5-479e-a331-b53c799a6b10')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'eec41fcb-61c0-4e56-a5c0-a9f8be6e6fdc', N'', N'UserModule', 0, CAST(0x0000A67A00FF7630 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a9821db0-49bd-49be-a554-afa811c99760', N'', N'RoleResource', 0, CAST(0x0000A67701809F05 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f433bc05-9f47-4d3b-b501-aff3f5a57d03', N'', N'UserOrg', 0, CAST(0x0000A6860151D9C6 AS DateTime), 0, N'68315cde-554a-45d0-90b1-7599ed0f87c4', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9d568d6d-d78d-47d6-8fb6-b1327cdbe83a', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'03be9b5e-38b0-4525-8431-b26d35ce6ce3', N'', N'UserElement', 0, CAST(0x0000A67A00FFA0E8 AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'960224e6-5910-472b-a5ef-b2aa9a8b106f', N'', N'UserRole', 0, CAST(0x0000A6790119DE94 AS DateTime), 0, N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'75340ad3-fb80-4646-b1de-ba801688ddc2', N'', N'RoleElement', 0, CAST(0x0000A6770180D0ED AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'aa051096-a23a-431d-9053-bb954f9453a7', N'', N'RoleElement', 0, CAST(0x0000A6770180C45E AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'4bfa8ea0-6b0d-426f-8687-b654575ca780')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ec72f6ae-09ee-4db9-99a1-bf15c8e35dda', N'', N'ProcessUser', 0, CAST(0x0000A68100BFD097 AS DateTime), 0, N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2ca288a6-d222-4328-951e-c01c3e77a0c7', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7f071c63-1620-4486-9264-5806b2e63218')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'24c7a3cb-2142-4482-8040-c0c067fa0606', N'', N'UserOrg', 0, CAST(0x0000A68601526348 AS DateTime), 0, N'fe34f623-b304-4fea-9418-b82145ab1497', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'47415ddd-45ba-4099-bdc5-c21877b1e6f6', N'', N'UserOrg', 0, CAST(0x0000A6860151D940 AS DateTime), 0, N'd31932c6-14e2-43e8-bf7c-dc70174dc3df', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'8b633f3c-965b-4e35-8496-c364890d7760', N'', N'RoleElement', 0, CAST(0x0000A6770180D68A AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c3d7b478-21e9-4c1e-b866-a3c80be7909b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7f25286f-246b-4143-98eb-c3e574fe7455', N'', N'ProcessUser', 0, CAST(0x0000A67A01216457 AS DateTime), 0, N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e72609b9-82f4-4d32-876b-c52d6db97710', N'', N'UserOrg', 0, CAST(0x0000A68601526389 AS DateTime), 0, N'aa3998f6-2c2f-4194-9ccb-cf6a917bb28c', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7cd4fc21-7d40-47cf-abba-c81b82498189', N'', N'UserOrg', 0, CAST(0x0000A68601526373 AS DateTime), 0, N'09393e87-2593-4437-9dda-9362c904db35', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad5bc7a6-e307-4fa8-a4ef-ce9e09f7e21b', N'', N'RoleModule', 0, CAST(0x0000A678009A577F AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c98b3d02-a76b-4ecc-94a5-cfeffd5e29fb', N'', N'RoleModule', 0, CAST(0x0000A67501192798 AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b08d7763-a725-406f-a7d5-d144f00d716e', N'', N'UserOrg', 0, CAST(0x0000A67500E5CD5F AS DateTime), 0, N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'828f6b77-b4c4-4a20-9409-d4594958201b', N'', N'UserOrg', 0, CAST(0x0000A6860151D99B AS DateTime), 0, N'89d95646-c346-4e8b-8dea-a89ee123b606', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ee4f39fd-4fbf-4f68-9a70-d6c7d7db9723', N'', N'ProcessUser', 0, CAST(0x0000A6B000C3BC6C AS DateTime), 0, N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c2d3b7d6-b47d-4bd8-9dc6-d9134d86713f', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0435c676-34d4-47c6-a27e-e2399829224a', N'', N'UserOrg', 0, CAST(0x0000A6860151D9D7 AS DateTime), 0, N'f820ed38-21b1-4b7c-83cf-db567d839fcb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a06fe8c6-3f5e-4085-9bbf-e366571a356c', N'', N'RoleElement', 0, CAST(0x0000A6770180D0EB AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c58cb482-6ab7-49eb-b5b0-e45424b6e502', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'34730f5a-d307-457b-9041-5f7de30abfa9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'30c82d18-7892-4e5f-9aee-e4f483a858c2', N'', N'UserModule', 0, CAST(0x0000A678010E8402 AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c50fae2a-b36f-486f-9d53-e58406590101', N'', N'ProcessUser', 0, CAST(0x0000A6AC0114D121 AS DateTime), 0, N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'55b10ecc-3fb3-4127-b69e-e7a3467d7a1a', N'', N'RoleElement', 0, CAST(0x0000A678009A68AE AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'6db928fe-93df-460f-9472-8bb0b6cae52c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b102ef08-8806-4b96-bbf3-e83a836e682a', N'', N'UserOrg', 0, CAST(0x0000A686014798B1 AS DateTime), 0, N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'270ff833-040b-4924-aad5-e9148542ea31', N'', N'UserOrg', 0, CAST(0x0000A6860152C5CB AS DateTime), 0, N'6c630ae2-d63a-40c6-a564-e7f8fb9af4eb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ab924ba7-8a74-4804-82b0-ecbbedf4c13e', N'', N'RoleElement', 0, CAST(0x0000A678009A68AD AS DateTime), 0, N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'38109ca0-32ec-44bd-a243-017e591b532b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a0904102-e26a-4bc5-9c95-ed5ef977586b', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), 0, N'211e12c7-e466-496e-8d26-0660a38e24cc', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6b9c4789-042c-4f6f-a749-ee68ee87462d', N'', N'ProcessUser', 0, CAST(0x0000A6AC0114D121 AS DateTime), 0, N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1ced1564-2fea-4c04-8aea-f071fa5bb293', N'', N'UserModule', 0, CAST(0x0000A678010E83BB AS DateTime), 0, N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e12b77de-b7ce-4f38-b7a3-f3b2d285f33b', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5D841 AS DateTime), 0, N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e401b23b-ec4a-4f8b-9bf8-f65fe4ec5919', N'', N'UserOrg', 0, CAST(0x0000A6860151D940 AS DateTime), 0, N'd31932c6-14e2-43e8-bf7c-dc70174dc3df', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad29467e-eeee-494c-ab82-f6be5d2619d5', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'50c9df24-b233-42cb-9a0d-4ce158c75f86')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'74c71c4b-c028-43a8-a44d-fd841faf23e2', N'', N'UserOrg', 0, CAST(0x0000A6860152631C AS DateTime), 0, N'ef0b5581-e85f-4436-a289-cd253a3b8791', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0d713185-8eb5-4011-852c-fe94df9017b8', N'', N'UserOrg', 0, CAST(0x0000A6860151D982 AS DateTime), 0, N'51bbc462-34dd-403e-99db-87d56da5fb00', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'289b2060-3017-42f1-a7b4-ff2cda7d73a1', N'', N'UserOrg', 0, CAST(0x0000A6860152631C AS DateTime), 0, N'ef0b5581-e85f-4436-a289-cd253a3b8791', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'88a4c966-d042-4a2e-b133-ff7eded1c5de', N'', N'RoleElement', 0, CAST(0x0000A6770180DB23 AS DateTime), 0, N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0')
/****** Object:  Table [dbo].[Org]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Org](
	[Id] [uniqueidentifier] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CustomCode] [varchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Org] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务对照码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'BizCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义扩展码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CustomCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org'
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId]) VALUES (N'543a9fcf-4770-4fd9-865f-030e562be238', N'0.1', N'集团总部', N'', N'根节点', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A69F00BF7F21 AS DateTime), 0, 0, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId]) VALUES (N'990cb229-cc18-41f3-8e2b-13f0f0110798', N'0.1.3', N'研发部', N'', N'集团总部', 0, 1, N'', 0, 0, N'', N'', CAST(0x0000A5EA00D73ED8 AS DateTime), 0, 0, N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId]) VALUES (N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b', N'0.1.3.1', N'研发小组', N'', N'研发部', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A69F00C0671C AS DateTime), 0, 1, N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId]) VALUES (N'c36e43df-3a99-45da-80d9-3ac5d24f4014', N'0.2', N'汇丰', N'', N'根节点', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A61200FA1EF5 AS DateTime), 0, 1, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId]) VALUES (N'86449128-d5ac-44bf-b999-f7735b7458fd', N'0.2.1', N'汇丰软件部', N'', N'汇丰', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A61200FA3A14 AS DateTime), 0, 1, N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
/****** Object:  Table [dbo].[ModuleElement]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleElement](
	[Id] [uniqueidentifier] NOT NULL,
	[DomId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Attr] [varchar](500) NOT NULL,
	[Script] [varchar](500) NOT NULL,
	[Icon] [varchar](255) NOT NULL,
	[Class] [varchar](255) NOT NULL,
	[Remark] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
	[ModuleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ModuleElement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOM ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'DomId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素附加属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Attr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素调用脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Script'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块元素表(需要权限控制的按钮)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement'
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'38109ca0-32ec-44bd-a243-017e591b532b', N'btnEditStock', N'编辑', N'button', N' ', N'edit()', N'pencil', N'btn-pink', N'编辑进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'18cc3217-28a6-49b2-9a20-080230065984', N'btnEdit', N'编辑', N'', N'', N'edit()', N'plus', N'btn-pink', N'', 1, N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'8966b04f-8e26-4046-8b03-0c64f9f833dd', N'btnDel', N'删除', N'', N'', N'del()', N'trash', N'btn-danger', N'', 3, N'92b00259-2d15-43e7-9321-adffb29e8bf2')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736', N'btnAssignRes', N'为角色分配资源', N'button', N'', N'openRoleReourceAccess(this)', N'pencil', N'btn-success', N'为角色分配资源', 3, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'0d25438e-1436-48e0-aedf-0f1690693282', N'btnAccessModule', N'为角色分配模块', N'button', N'', N'assignRoleModule(this)', N'pencil', N'btn-success', N'为角色分配模块', 4, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'3dc0ec4d-bf86-4bae-9ec0-1d6c2403fb99', N'btnAdd', N'添加', N'', N'', N'add()', N'plus', N'btn-success', N'', 1, N'92b00259-2d15-43e7-9321-adffb29e8bf2')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'2feefce1-e3d8-42ac-b811-2352679628da', N'btnDel', N'删除', N'button', N'', N'del()', N'trash', N'btn-danger', N'刪除用戶', 2, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'17ae4fd4-ab4e-439e-ba1d-2a53b46d112b', N'btnDel', N'删除', N'', N'', N'del()', N'trash', N'btn-danger', N'', 2, N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'816b12b3-e916-446d-a2fa-329cfd13c831', N'btnDetail', N'进度详情', N'button', N'', N'detail()', N'bar', N'btn-success', N'', 4, N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'68484265-7802-4f06-b024-33e8b2f2edcf', N'btnAdd', N'新的申请', N'button', N'', N'add()', N'plus', N'btn-success', N'申请物品', 0, N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'68fc793f-069f-43e1-a012-42ac2d7c585c', N'btnDel', N'删除', N'button', N'', N'del()', N'trash', N'btn-danger', N'删除角色', 2, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a', N'btnRefresh', N'刷新', N'button', N'', N'refresh()', N'refresh', N'btn-success', N'刷新用户', 3, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'50c9df24-b233-42cb-9a0d-4ce158c75f86', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加用戶', 0, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'6839a297-350b-4215-b680-4e5dfdae5615', N'btnAssignReource', N'为用户分配资源', N'button', N'', N'openUserReourceAccess(this)', N'pencil', N'btn-success', N'为用户分配资源', 4, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'7f071c63-1620-4486-9264-5806b2e63218', N'btnAccessRole', N'为用户分配角色', N'button', N'', N'openUserRoleAccess(this)', N'pencil', N'btn-success', N'为用户分配角色', 5, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4', N'btnDel', N'删除', N'button', N' ', N'del()', N'pencil', N'btn-danger', N'删除模块', 0, N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'34730f5a-d307-457b-9041-5f7de30abfa9', N'btnEdit', N'编辑', N'button', N'', N'edit()', N'pencil', N'btn-pink', N'编辑用户', 1, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'645b40ac-4223-44a7-aab4-66eb56cf9864', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加角色', 0, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9', N'btnEdit', N'编辑', N'button', N'', N'edit()', N'pencil', N'btn-pink', N'编辑角色', 1, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'f8dde22a-2a37-47c4-8e67-70fb3af5303e', N'btnRefresh', N'刷新', N'button', N'', N'refresh()', N'refresh', N'btn-success', N'刷新部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'79ccd3eb-3aaf-4e08-83c9-713d8ff446fe', N'btnVerification', N'处理', N'', N'', N'verificationForm()', N'bar', N'btn-danger', N'', 5, N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'584c7a3b-d28a-47b4-8648-7797d05d83d1', N'btnDel', N'删除', N'button', N'', N'del()', N'trash', N'btn-danger', N'', 3, N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'84694ea5-d6e1-4a65-8a59-7b5b779688d4', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn btn-green ', N'添加模块', 0, N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'44075557-496e-4dde-bb75-7b69f51ab4fe', N'btnEdit', N'编辑', N'button', N'', N'edit()', N'pencil', N'btn-pink', N'编辑模块', 0, N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'ef42721f-d223-4a00-a1d9-80b81121f21a', N'btnEdit', N'编辑', N'button', N' ', N'edit()', N'pencil', N'btn-pink', N'编辑部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'1a473afd-cbd4-41e9-9471-81f9435aaabe', N'btnEdit', N'编辑', N'button', N' ', N'edit()', N'pencil', N'btn-success', N'编辑分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'6db928fe-93df-460f-9472-8bb0b6cae52c', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'cf7388be-2677-427c-ad78-8f00f1062b96', N'btnAssignElement', N'为用户分配菜单', N'button', N'', N'openAssignUserElement(this)', N'pencil', N'btn-success', N'为用户分配菜单', 7, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0', N'btnDel', N'删除', N'button', N'', N'del()', N'del', N'btn-danger', N'删除部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'd352c8ee-3dff-4d28-a0de-903ae68f2533', N'btnPreview', N'预览', N'', N'', N'preview()', N'pencil', N'btn-primary', N'', 1, N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'84e38920-f6e5-499c-bf52-a3c6f8499ff7', N'btnDelStock', N'删除', N'button', N' ', N'del()', N'trash', N'btn-danger', N'删除分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'c3d7b478-21e9-4c1e-b866-a3c80be7909b', N'btnRefresh', N'刷新', N'button', N'', N'refresh()', N'refresh', N'btn-success', N'刷新分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'1c870438-4260-43a5-8996-a6e1dc8bbf6a', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae', N'btnAssign', N'为模块分配按钮', N'button', N'', N'assignButton()', N'bar', N'btn-danger', N'为模块分配按钮', 0, N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'4f2737db-633f-4946-8a71-b08b9885f151', N'btnEdit', N'编辑', N'', N'', N'edit()', N'pencil', N'btn-primary', N'', 2, N'92b00259-2d15-43e7-9321-adffb29e8bf2')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'c7d7daf0-3669-4a22-8bed-b092617deb9c', N'btnDel', N'删除', N'button', N'', N'del()', N'trash', N'btn-danger', N'删除资源', 3, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'6c814946-db5c-48bd-84dd-b1c38196ad74', N'btnAdd', N'添加模版', N'', N'', N'add()', N'plus', N'btn-success', N'', 0, N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'2d595a2a-5de5-479e-a331-b53c799a6b10', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'4bfa8ea0-6b0d-426f-8687-b654575ca780', N'btnEdit', N'编辑', N'button', N'', N'edit()', N'pencil', N'btn-pink', N'编辑资源', 2, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'362d1eda-c85e-4b14-a80a-b923291e08de', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-pink', N'添加', 0, N'f0f06b8f-0a86-487c-8b0e-0a12573ccd46')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'9e2c6754-f258-4b14-96a0-b9d981196a65', N'btnAdd', N'添加', N'button', N'', N'add()', N'plus', N'btn-success', N'添加资源', 0, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'c7123d75-dd86-4cf3-ac71-c11676cd3909', N'btnAddInstance', N'发起流程', N'', N'', N'addInstance()', N'plus', N'btn-pink', N'', 3, N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'fa816af1-a28d-47b5-9b8b-c46e18f902e9', N'btnAccessModule', N'为用户分配模块', N'button', N'', N'openUserModuleAccess(this)', N'pencil', N'btn-success', N'为用户分配模块', 6, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'c0d8505c-061a-467d-862a-c94f27caa208', N'btnAssignElement', N'为角色分配菜单', N'button', N'', N'assignRoleElement(this)', N'bar', N'btn-success', N'为角色分配菜单', 5, N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId]) VALUES (N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2', N'btnDel', N'删除', N'button', N'', N'del()', N'trash', N'btn-danger', N'删除进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202')
/****** Object:  Table [dbo].[Module]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [uniqueidentifier] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[Vector] [varchar](255) NOT NULL,
	[SortNo] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页面URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矢量图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Vector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module'
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'bedb41a2-f310-4775-af99-01be08adda93', N'0.1.7', N'角色管理', N'/RoleManager/Index', N'', 1, 0, N'fa-users', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'0031262c-689c-4b96-bae2-2c9d67076ade', N'0.4.10', N'流程设计', N'/flowmanage/flowdesign/index', N'', 0, 0, N'fa-anchor', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', N'0.1.6', N'资源管理', N'/ResourceManager/Index', N'', 0, 0, N'fa-calculator', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', N'0.4.9', N'用户管理', N'/UserManager/Index', N'', 0, 0, N'fa-user', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'9486ff22-b696-4d7f-8093-8a3e53c45453', N'0.5.2', N'流程处理', N'/FlowManage/FlowInstances/Index', N'', 0, 0, N'fa-clock-o', 0, N'应用功能', N'', 0, N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'7580672f-a390-4bb6-982d-9a4570cb5199', N'0.4', N'基础配置', N' ', N' ', 1, 0, N'fa-cog', 1, N'根节点', N' ', 0, NULL)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'92b00259-2d15-43e7-9321-adffb29e8bf2', N'0.4.11', N'表单设计', N'/flowmanage/formdesign/index', N'', 0, 0, N'fa-anchor', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'89c3bfbe-246f-4112-8eb1-b6789da54202', N'0.2.1', N'进出库管理', N'/StockManager/Index', N'ctrl', 0, 0, N'fa-archive', 0, N'应用功能', N'', 0, N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'bc80478d-0547-4437-9cff-be4b40144bdf', N'0.4.8', N'模块管理', N'/ModuleManager/Index', N' ', 1, 0, N'fa-file-code-o', 0, N'基础配置', N' ', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'0.5', N'应用功能', N'/', N'c', 0, 0, N'fa-bars', 0, N'根节点', N'', 0, NULL)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', N'0.1.5', N'分类管理', N'/CategoryManager/Index', N'', 0, 0, N'fa-archive', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId]) VALUES (N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', N'0.1.3', N'部门管理', N'/OrgManager/Index', N'', 0, 0, N'fa-plus-square-o', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199')
/****** Object:  Table [dbo].[DicIndex]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DicIndex](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[SortNo] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[CategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DicIndex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex'
GO
/****** Object:  Table [dbo].[DicDetail]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DicDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Text] [nvarchar](100) NOT NULL,
	[SortNo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[DicId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DicDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属字典ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'DicId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail'
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02/06/2017 23:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[RootKey] [varchar](100) NOT NULL,
	[RootName] [varchar](200) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类所属科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类所属科目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [Status], [SortNo], [RootKey], [RootName], [ParentId]) VALUES (N'fa37b322-508b-47ce-b29f-b1dacb82637a', N'0.3', N'机密资源', 0, 0, N'STOCK', N'进出库管理', NULL)
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [Status], [SortNo], [RootKey], [RootName], [ParentId]) VALUES (N'8fe31cfe-b117-4875-a29a-cc16f33ae11d', N'0.4', N'角色类型', 0, 0, N'', N'', NULL)
/****** Object:  Default [DF_Category_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Category__Cascad__34D3C6C9]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Cascad__34D3C6C9]  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Category__Name__35C7EB02]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Name__35C7EB02]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Category__Status__37B03374]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Status__37B03374]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Category__SortNo__38A457AD]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__SortNo__38A457AD]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Category__RootKe__39987BE6]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__RootKe__39987BE6]  DEFAULT (' ') FOR [RootKey]
GO
/****** Object:  Default [DF__Category__RootNa__3A8CA01F]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__RootNa__3A8CA01F]  DEFAULT (' ') FOR [RootName]
GO
/****** Object:  Default [DF_DicDetail_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF_DicDetail_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__DicDetail__Value__3B80C458]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF__DicDetail__Value__3B80C458]  DEFAULT (' ') FOR [Value]
GO
/****** Object:  Default [DF__DicDetail__Text__3C74E891]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF__DicDetail__Text__3C74E891]  DEFAULT ('0') FOR [Text]
GO
/****** Object:  Default [DF__DicDetail__SortN__3E5D3103]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF__DicDetail__SortN__3E5D3103]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__DicDetail__Statu__3F51553C]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF__DicDetail__Statu__3F51553C]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__DicDetail__Descr__40457975]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicDetail] ADD  CONSTRAINT [DF__DicDetail__Descr__40457975]  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF_DicIndex_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicIndex] ADD  CONSTRAINT [DF_DicIndex_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__DicIndex__Name__41399DAE]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicIndex] ADD  CONSTRAINT [DF__DicIndex__Name__41399DAE]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__DicIndex__Key__422DC1E7]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicIndex] ADD  CONSTRAINT [DF__DicIndex__Key__422DC1E7]  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__DicIndex__SortNo__4321E620]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicIndex] ADD  CONSTRAINT [DF__DicIndex__SortNo__4321E620]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__DicIndex__Descri__450A2E92]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[DicIndex] ADD  CONSTRAINT [DF__DicIndex__Descri__450A2E92]  DEFAULT ('0') FOR [Description]
GO
/****** Object:  Default [DF_Module_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Module__CascadeI__45FE52CB]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__CascadeI__45FE52CB]  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Module__Name__46F27704]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__Name__46F27704]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Module__Url__47E69B3D]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__Url__47E69B3D]  DEFAULT (' ') FOR [Url]
GO
/****** Object:  Default [DF__Module__HotKey__48DABF76]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__HotKey__48DABF76]  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Module__IsLeaf__4AC307E8]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__IsLeaf__4AC307E8]  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Module__IsAutoEx__4BB72C21]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__IsAutoEx__4BB72C21]  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Module__IconName__4CAB505A]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__IconName__4CAB505A]  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Module__Status__4D9F7493]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__Status__4D9F7493]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Module__ParentNa__4E9398CC]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__ParentNa__4E9398CC]  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Module__Vector__4F87BD05]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__Vector__4F87BD05]  DEFAULT (' ') FOR [Vector]
GO
/****** Object:  Default [DF__Module__SortNo__507BE13E]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__SortNo__507BE13E]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF_ModuleElement_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF_ModuleElement_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__ModuleEle__DomId__51700577]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__DomId__51700577]  DEFAULT (' ') FOR [DomId]
GO
/****** Object:  Default [DF__ModuleElem__Name__526429B0]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Name__526429B0]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__ModuleElem__Type__53584DE9]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Type__53584DE9]  DEFAULT (' ') FOR [Type]
GO
/****** Object:  Default [DF__ModuleElem__Attr__5540965B]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Attr__5540965B]  DEFAULT (' ') FOR [Attr]
GO
/****** Object:  Default [DF__ModuleEle__Scrip__5634BA94]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Scrip__5634BA94]  DEFAULT (' ') FOR [Script]
GO
/****** Object:  Default [DF__ModuleElem__Icon__5728DECD]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Icon__5728DECD]  DEFAULT (' ') FOR [Icon]
GO
/****** Object:  Default [DF__ModuleEle__Class__581D0306]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Class__581D0306]  DEFAULT (' ') FOR [Class]
GO
/****** Object:  Default [DF__ModuleEle__Remar__5911273F]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleEle__Remar__5911273F]  DEFAULT (' ') FOR [Remark]
GO
/****** Object:  Default [DF__ModuleElem__Sort__5A054B78]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  CONSTRAINT [DF__ModuleElem__Sort__5A054B78]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Org_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF_Org_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Org__CascadeId__5AF96FB1]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__CascadeId__5AF96FB1]  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Org__Name__5BED93EA]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__Name__5BED93EA]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Org__HotKey__5CE1B823]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__HotKey__5CE1B823]  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Org__ParentName__5ECA0095]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__ParentName__5ECA0095]  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Org__IsLeaf__5FBE24CE]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__IsLeaf__5FBE24CE]  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Org__IsAutoExpan__60B24907]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__IsAutoExpan__60B24907]  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Org__IconName__61A66D40]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__IconName__61A66D40]  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Org__Status__629A9179]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__Status__629A9179]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Org__Type__638EB5B2]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__Type__638EB5B2]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__Org__BizCode__6482D9EB]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__BizCode__6482D9EB]  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__Org__CustomCode__6576FE24]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__CustomCode__6576FE24]  DEFAULT (' ') FOR [CustomCode]
GO
/****** Object:  Default [DF__Org__CreateTime__666B225D]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__CreateTime__666B225D]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Org__CreateId__675F4696]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__CreateId__675F4696]  DEFAULT ((0)) FOR [CreateId]
GO
/****** Object:  Default [DF__Org__SortNo__68536ACF]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Org] ADD  CONSTRAINT [DF__Org__SortNo__68536ACF]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF_Relevance_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF_Relevance_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Relevance__Descr__70E8B0D0]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF__Relevance__Descr__70E8B0D0]  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Relevance__Key__71DCD509]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF__Relevance__Key__71DCD509]  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Relevance__Statu__72D0F942]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF__Relevance__Statu__72D0F942]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Relevance__Opera__73C51D7B]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF__Relevance__Opera__73C51D7B]  DEFAULT (getdate()) FOR [OperateTime]
GO
/****** Object:  Default [DF__Relevance__Opera__74B941B4]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Relevance] ADD  CONSTRAINT [DF__Relevance__Opera__74B941B4]  DEFAULT ((0)) FOR [OperatorId]
GO
/****** Object:  Default [DF_Resource_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF_Resource_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Resource__Cascad__75AD65ED]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Cascad__75AD65ED]  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Resource__Key__76A18A26]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Key__76A18A26]  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Resource__Name__7795AE5F]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Name__7795AE5F]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Resource__Status__797DF6D1]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Status__797DF6D1]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Resource__SortNo__7A721B0A]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__SortNo__7A721B0A]  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Resource__Descri__7C5A637C]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Descri__7C5A637C]  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF_Role_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Role__Name__7D4E87B5]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__Name__7D4E87B5]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Role__Status__7E42ABEE]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__Status__7E42ABEE]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Role__Type__7F36D027]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__Type__7F36D027]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__Role__CreateTime__002AF460]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__CreateTime__002AF460]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Role__CreateId__011F1899]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__CreateId__011F1899]  DEFAULT (' ') FOR [CreateId]
GO
/****** Object:  Default [DF_Stock_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF_Stock_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Stock__Name__04EFA97D]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__Name__04EFA97D]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Stock__Number__05E3CDB6]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__Number__05E3CDB6]  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF__Stock__Price__06D7F1EF]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__Price__06D7F1EF]  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF__Stock__Status__07CC1628]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__Status__07CC1628]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Stock__User__08C03A61]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__User__08C03A61]  DEFAULT (' ') FOR [Viewable]
GO
/****** Object:  Default [DF__Stock__Time__09B45E9A]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF__Stock__Time__09B45E9A]  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF_User_Id]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__User__Account__0B9CA70C]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Account__0B9CA70C]  DEFAULT (' ') FOR [Account]
GO
/****** Object:  Default [DF__User__Password__0C90CB45]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Password__0C90CB45]  DEFAULT (' ') FOR [Password]
GO
/****** Object:  Default [DF__User__Name__0D84EF7E]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Name__0D84EF7E]  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__User__Sex__0E7913B7]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Sex__0E7913B7]  DEFAULT ((0)) FOR [Sex]
GO
/****** Object:  Default [DF__User__Status__0F6D37F0]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Status__0F6D37F0]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__User__Type__10615C29]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Type__10615C29]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__User__BizCode__11558062]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__BizCode__11558062]  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__User__CreateTime__1249A49B]    Script Date: 02/06/2017 23:25:09 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__CreateTime__1249A49B]  DEFAULT (getdate()) FOR [CreateTime]
GO

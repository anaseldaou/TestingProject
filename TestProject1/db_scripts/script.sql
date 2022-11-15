GO
/****** Object:  Schema [LAF]    Script Date: 11/9/2022 12:53:36 PM ******/
CREATE SCHEMA [LAF]
GO
/****** Object:  Table [LAF].[category]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[category](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[city]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[city](
	[id] [uniqueidentifier] NOT NULL,
	[district] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[color]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[color](
	[id] [uniqueidentifier] NOT NULL,
	[color] [smallint] NOT NULL,
	[green] [smallint] NULL,
	[red] [smallint] NULL,
	[blue] [smallint] NULL,
 CONSTRAINT [PK_color] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[country]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[country](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[department]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[department](
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[name] [varchar](50) NULL,
	[type] [uniqueidentifier] NULL,
	[place] [uniqueidentifier] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[department_type]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[department_type](
	[id] [uniqueidentifier] NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_department_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[destinations]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[destinations](
	[from] [uniqueidentifier] NOT NULL,
	[to] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[district]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[district](
	[id] [uniqueidentifier] NOT NULL,
	[province] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[event]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[event](
	[id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[fire_arm]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[fire_arm](
	[id] [uniqueidentifier] NOT NULL,
	[type] [uniqueidentifier] NOT NULL,
	[manufacturer] [uniqueidentifier] NOT NULL,
	[serial_number] [varchar](50) NOT NULL,
	[calibder] [uniqueidentifier] NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_fire_arm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[fire_arm_type]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[fire_arm_type](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
	[is_military] [bit] NULL,
 CONSTRAINT [PK_fire_arm_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[fire_arms_owner]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[fire_arms_owner](
	[fire_arms] [uniqueidentifier] NOT NULL,
	[person] [uniqueidentifier] NOT NULL,
	[from] [datetime] NOT NULL,
	[to] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[manufacturer]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[manufacturer](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[category] [uniqueidentifier] NULL,
 CONSTRAINT [PK_manufacturer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[manufacturer_category]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[manufacturer_category](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_manufacturer_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[nationality]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[nationality](
	[person] [uniqueidentifier] NOT NULL,
	[country] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[notification]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[notification](
	[id] [uniqueidentifier] NOT NULL,
	[user_role] [uniqueidentifier] NOT NULL,
	[subject] [varchar](max) NOT NULL,
	[details] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[object]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[object](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
	[category] [uniqueidentifier] NULL,
	[parent] [uniqueidentifier] NULL,
	[quantity] [float] NULL,
	[unit] [uniqueidentifier] NULL,
	[unit_category] [uniqueidentifier] NULL,
	[illegal] [bit] NULL,
	[stolen] [bit] NULL,
	[manufacturer] [uniqueidentifier] NULL,
 CONSTRAINT [PK_object] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[object_property_value]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[object_property_value](
	[object] [uniqueidentifier] NOT NULL,
	[property] [uniqueidentifier] NOT NULL,
	[value] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[object_type]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[object_type](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
	[unit_category] [uniqueidentifier] NULL,
 CONSTRAINT [PK_object_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[object_type_properties]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[object_type_properties](
	[id] [uniqueidentifier] NOT NULL,
	[label] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[object_type] [uniqueidentifier] NULL,
 CONSTRAINT [PK_object_type_properties] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[permission]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[permission](
	[id] [uniqueidentifier] NOT NULL,
	[category] [uniqueidentifier] NOT NULL,
	[function] [varchar](max) NOT NULL,
 CONSTRAINT [PK_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[person]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[person](
	[id] [uniqueidentifier] NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[place]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[place](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
	[longititude] [float] NOT NULL,
	[latitude] [float] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[type] [uniqueidentifier] NULL,
	[city] [uniqueidentifier] NULL,
 CONSTRAINT [PK_place] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[place_type]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[place_type](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_place_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[province]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[province](
	[id] [uniqueidentifier] NOT NULL,
	[country] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[registration_history]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[registration_history](
	[id] [uniqueidentifier] NOT NULL,
	[vehicle] [uniqueidentifier] NOT NULL,
	[registration] [varchar](50) NULL,
	[from] [datetime] NULL,
	[to] [datetime] NULL,
 CONSTRAINT [PK_registration_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[relationship]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[relationship](
	[person_1] [uniqueidentifier] NOT NULL,
	[person_2] [uniqueidentifier] NOT NULL,
	[relationship] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[role]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[role](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[department] [uniqueidentifier] NOT NULL,
	[category] [uniqueidentifier] NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[office] [varchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[unit_category]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[unit_category](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_unit_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[unit_conversion]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[unit_conversion](
	[from] [uniqueidentifier] NOT NULL,
	[to] [uniqueidentifier] NOT NULL,
	[factor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[units]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[units](
	[id] [uniqueidentifier] NOT NULL,
	[unit] [varchar](50) NULL,
	[category] [uniqueidentifier] NULL,
 CONSTRAINT [PK_units] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[user]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[user](
	[id] [uniqueidentifier] NOT NULL,
	[username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[user_activities]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[user_activities](
	[id] [uniqueidentifier] NULL,
	[user] [uniqueidentifier] NOT NULL,
	[body] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[user_role]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[user_role](
	[id] [uniqueidentifier] NOT NULL,
	[user] [uniqueidentifier] NOT NULL,
	[role] [uniqueidentifier] NOT NULL,
	[start] [datetime] NOT NULL,
	[end] [datetime] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[vehicle]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[vehicle](
	[id] [uniqueidentifier] NOT NULL,
	[manufacturer] [uniqueidentifier] NULL,
	[year] [smallint] NULL,
	[registration_number] [varchar](50) NULL,
	[color] [uniqueidentifier] NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_vehicle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[vehicle_owner]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[vehicle_owner](
	[vehicle] [uniqueidentifier] NOT NULL,
	[person] [uniqueidentifier] NOT NULL,
	[from] [datetime] NOT NULL,
	[to] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika](
	[id] [uniqueidentifier] NOT NULL,
	[version] [int] NOT NULL,
	[year] [smallint] NOT NULL,
	[number] [int] NOT NULL,
	[short_description] [varchar](max) NOT NULL,
	[type] [uniqueidentifier] NULL,
	[destination] [uniqueidentifier] NULL,
	[event] [uniqueidentifier] NULL,
 CONSTRAINT [PK_wasika] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_fire_arms]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_fire_arms](
	[wasika] [uniqueidentifier] NOT NULL,
	[fire_arm] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_object]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_object](
	[wasika] [uniqueidentifier] NOT NULL,
	[object] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_people]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_people](
	[wasika] [uniqueidentifier] NOT NULL,
	[person] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_places]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_places](
	[wasika] [uniqueidentifier] NOT NULL,
	[place] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_type]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_type](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_wasika_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wasika_vehicle]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wasika_vehicle](
	[wasika] [uniqueidentifier] NOT NULL,
	[vehicle] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [LAF].[whistory]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[whistory](
	[id] [uniqueidentifier] NOT NULL,
	[wasika] [uniqueidentifier] NOT NULL,
	[status] [uniqueidentifier] NOT NULL,
	[user_role_id] [uniqueidentifier] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_whistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LAF].[wstatus]    Script Date: 11/9/2022 12:53:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LAF].[wstatus](
	[id] [uniqueidentifier] NOT NULL,
	[description] [varchar](max) NULL,
	[is_start] [bit] NULL,
	[is_end] [bit] NULL,
 CONSTRAINT [PK_wstatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [LAF].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_district] FOREIGN KEY([district])
REFERENCES [LAF].[district] ([id])
GO
ALTER TABLE [LAF].[city] CHECK CONSTRAINT [FK_city_district]
GO
ALTER TABLE [LAF].[department]  WITH CHECK ADD  CONSTRAINT [FK_department_department] FOREIGN KEY([parent])
REFERENCES [LAF].[department] ([id])
GO
ALTER TABLE [LAF].[department] CHECK CONSTRAINT [FK_department_department]
GO
ALTER TABLE [LAF].[department]  WITH CHECK ADD  CONSTRAINT [FK_department_department_type] FOREIGN KEY([type])
REFERENCES [LAF].[department_type] ([id])
GO
ALTER TABLE [LAF].[department] CHECK CONSTRAINT [FK_department_department_type]
GO
ALTER TABLE [LAF].[department]  WITH CHECK ADD  CONSTRAINT [FK_department_place] FOREIGN KEY([place])
REFERENCES [LAF].[place] ([id])
GO
ALTER TABLE [LAF].[department] CHECK CONSTRAINT [FK_department_place]
GO
ALTER TABLE [LAF].[destinations]  WITH CHECK ADD  CONSTRAINT [FK_destinations_department] FOREIGN KEY([from])
REFERENCES [LAF].[department] ([id])
GO
ALTER TABLE [LAF].[destinations] CHECK CONSTRAINT [FK_destinations_department]
GO
ALTER TABLE [LAF].[destinations]  WITH CHECK ADD  CONSTRAINT [FK_destinations_department1] FOREIGN KEY([to])
REFERENCES [LAF].[department] ([id])
GO
ALTER TABLE [LAF].[destinations] CHECK CONSTRAINT [FK_destinations_department1]
GO
ALTER TABLE [LAF].[district]  WITH CHECK ADD  CONSTRAINT [FK_district_province] FOREIGN KEY([province])
REFERENCES [LAF].[province] ([id])
GO
ALTER TABLE [LAF].[district] CHECK CONSTRAINT [FK_district_province]
GO
ALTER TABLE [LAF].[fire_arm]  WITH CHECK ADD  CONSTRAINT [FK_fire_arm_fire_arm_type] FOREIGN KEY([type])
REFERENCES [LAF].[fire_arm_type] ([id])
GO
ALTER TABLE [LAF].[fire_arm] CHECK CONSTRAINT [FK_fire_arm_fire_arm_type]
GO
ALTER TABLE [LAF].[fire_arm]  WITH CHECK ADD  CONSTRAINT [FK_fire_arm_manufacturer] FOREIGN KEY([manufacturer])
REFERENCES [LAF].[manufacturer] ([id])
GO
ALTER TABLE [LAF].[fire_arm] CHECK CONSTRAINT [FK_fire_arm_manufacturer]
GO
ALTER TABLE [LAF].[fire_arms_owner]  WITH CHECK ADD  CONSTRAINT [FK_fire_arms_owner_fire_arm] FOREIGN KEY([fire_arms])
REFERENCES [LAF].[fire_arm] ([id])
GO
ALTER TABLE [LAF].[fire_arms_owner] CHECK CONSTRAINT [FK_fire_arms_owner_fire_arm]
GO
ALTER TABLE [LAF].[fire_arms_owner]  WITH CHECK ADD  CONSTRAINT [FK_fire_arms_owner_person] FOREIGN KEY([person])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[fire_arms_owner] CHECK CONSTRAINT [FK_fire_arms_owner_person]
GO
ALTER TABLE [LAF].[manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_manufacturer_manufacturer_category] FOREIGN KEY([category])
REFERENCES [LAF].[manufacturer_category] ([id])
GO
ALTER TABLE [LAF].[manufacturer] CHECK CONSTRAINT [FK_manufacturer_manufacturer_category]
GO
ALTER TABLE [LAF].[nationality]  WITH CHECK ADD  CONSTRAINT [FK_nationality_country] FOREIGN KEY([country])
REFERENCES [LAF].[country] ([id])
GO
ALTER TABLE [LAF].[nationality] CHECK CONSTRAINT [FK_nationality_country]
GO
ALTER TABLE [LAF].[nationality]  WITH CHECK ADD  CONSTRAINT [FK_nationality_person] FOREIGN KEY([person])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[nationality] CHECK CONSTRAINT [FK_nationality_person]
GO
ALTER TABLE [LAF].[notification]  WITH CHECK ADD  CONSTRAINT [FK_notification_user_role] FOREIGN KEY([user_role])
REFERENCES [LAF].[user_role] ([id])
GO
ALTER TABLE [LAF].[notification] CHECK CONSTRAINT [FK_notification_user_role]
GO
ALTER TABLE [LAF].[object]  WITH CHECK ADD  CONSTRAINT [FK_object_manufacturer] FOREIGN KEY([manufacturer])
REFERENCES [LAF].[manufacturer] ([id])
GO
ALTER TABLE [LAF].[object] CHECK CONSTRAINT [FK_object_manufacturer]
GO
ALTER TABLE [LAF].[object]  WITH CHECK ADD  CONSTRAINT [FK_object_object] FOREIGN KEY([parent])
REFERENCES [LAF].[object] ([id])
GO
ALTER TABLE [LAF].[object] CHECK CONSTRAINT [FK_object_object]
GO
ALTER TABLE [LAF].[object]  WITH CHECK ADD  CONSTRAINT [FK_object_object_type] FOREIGN KEY([category])
REFERENCES [LAF].[object_type] ([id])
GO
ALTER TABLE [LAF].[object] CHECK CONSTRAINT [FK_object_object_type]
GO
ALTER TABLE [LAF].[object]  WITH CHECK ADD  CONSTRAINT [FK_object_unit_category] FOREIGN KEY([unit_category])
REFERENCES [LAF].[unit_category] ([id])
GO
ALTER TABLE [LAF].[object] CHECK CONSTRAINT [FK_object_unit_category]
GO
ALTER TABLE [LAF].[object]  WITH CHECK ADD  CONSTRAINT [FK_object_units] FOREIGN KEY([unit])
REFERENCES [LAF].[units] ([id])
GO
ALTER TABLE [LAF].[object] CHECK CONSTRAINT [FK_object_units]
GO
ALTER TABLE [LAF].[object_property_value]  WITH CHECK ADD  CONSTRAINT [FK_object_property_value_object] FOREIGN KEY([object])
REFERENCES [LAF].[object] ([id])
GO
ALTER TABLE [LAF].[object_property_value] CHECK CONSTRAINT [FK_object_property_value_object]
GO
ALTER TABLE [LAF].[object_property_value]  WITH CHECK ADD  CONSTRAINT [FK_object_property_value_object_type_properties] FOREIGN KEY([property])
REFERENCES [LAF].[object_type_properties] ([id])
GO
ALTER TABLE [LAF].[object_property_value] CHECK CONSTRAINT [FK_object_property_value_object_type_properties]
GO
ALTER TABLE [LAF].[object_type]  WITH CHECK ADD  CONSTRAINT [FK_object_type_unit_category] FOREIGN KEY([unit_category])
REFERENCES [LAF].[unit_category] ([id])
GO
ALTER TABLE [LAF].[object_type] CHECK CONSTRAINT [FK_object_type_unit_category]
GO
ALTER TABLE [LAF].[object_type_properties]  WITH CHECK ADD  CONSTRAINT [FK_object_type_properties_object_type] FOREIGN KEY([object_type])
REFERENCES [LAF].[object_type] ([id])
GO
ALTER TABLE [LAF].[object_type_properties] CHECK CONSTRAINT [FK_object_type_properties_object_type]
GO
ALTER TABLE [LAF].[permission]  WITH CHECK ADD  CONSTRAINT [FK_permission_category] FOREIGN KEY([category])
REFERENCES [LAF].[category] ([id])
GO
ALTER TABLE [LAF].[permission] CHECK CONSTRAINT [FK_permission_category]
GO
ALTER TABLE [LAF].[place]  WITH CHECK ADD  CONSTRAINT [FK_place_city] FOREIGN KEY([city])
REFERENCES [LAF].[city] ([id])
GO
ALTER TABLE [LAF].[place] CHECK CONSTRAINT [FK_place_city]
GO
ALTER TABLE [LAF].[place]  WITH CHECK ADD  CONSTRAINT [FK_place_place] FOREIGN KEY([parent])
REFERENCES [LAF].[place] ([id])
GO
ALTER TABLE [LAF].[place] CHECK CONSTRAINT [FK_place_place]
GO
ALTER TABLE [LAF].[place]  WITH CHECK ADD  CONSTRAINT [FK_place_place_type] FOREIGN KEY([type])
REFERENCES [LAF].[place_type] ([id])
GO
ALTER TABLE [LAF].[place] CHECK CONSTRAINT [FK_place_place_type]
GO
ALTER TABLE [LAF].[province]  WITH CHECK ADD  CONSTRAINT [FK_province_country] FOREIGN KEY([country])
REFERENCES [LAF].[country] ([id])
GO
ALTER TABLE [LAF].[province] CHECK CONSTRAINT [FK_province_country]
GO
ALTER TABLE [LAF].[registration_history]  WITH CHECK ADD  CONSTRAINT [FK_registration_history_vehicle] FOREIGN KEY([vehicle])
REFERENCES [LAF].[vehicle] ([id])
GO
ALTER TABLE [LAF].[registration_history] CHECK CONSTRAINT [FK_registration_history_vehicle]
GO
ALTER TABLE [LAF].[relationship]  WITH CHECK ADD  CONSTRAINT [FK_relationship_person] FOREIGN KEY([person_1])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[relationship] CHECK CONSTRAINT [FK_relationship_person]
GO
ALTER TABLE [LAF].[relationship]  WITH CHECK ADD  CONSTRAINT [FK_relationship_person1] FOREIGN KEY([person_2])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[relationship] CHECK CONSTRAINT [FK_relationship_person1]
GO
ALTER TABLE [LAF].[role]  WITH CHECK ADD  CONSTRAINT [FK_role_category] FOREIGN KEY([category])
REFERENCES [LAF].[category] ([id])
GO
ALTER TABLE [LAF].[role] CHECK CONSTRAINT [FK_role_category]
GO
ALTER TABLE [LAF].[role]  WITH CHECK ADD  CONSTRAINT [FK_role_department] FOREIGN KEY([department])
REFERENCES [LAF].[department] ([id])
GO
ALTER TABLE [LAF].[role] CHECK CONSTRAINT [FK_role_department]
GO
ALTER TABLE [LAF].[unit_conversion]  WITH CHECK ADD  CONSTRAINT [FK_unit_conversion_units] FOREIGN KEY([from])
REFERENCES [LAF].[units] ([id])
GO
ALTER TABLE [LAF].[unit_conversion] CHECK CONSTRAINT [FK_unit_conversion_units]
GO
ALTER TABLE [LAF].[unit_conversion]  WITH CHECK ADD  CONSTRAINT [FK_unit_conversion_units1] FOREIGN KEY([to])
REFERENCES [LAF].[units] ([id])
GO
ALTER TABLE [LAF].[unit_conversion] CHECK CONSTRAINT [FK_unit_conversion_units1]
GO
ALTER TABLE [LAF].[units]  WITH CHECK ADD  CONSTRAINT [FK_units_unit_category] FOREIGN KEY([category])
REFERENCES [LAF].[unit_category] ([id])
GO
ALTER TABLE [LAF].[units] CHECK CONSTRAINT [FK_units_unit_category]
GO
ALTER TABLE [LAF].[user_activities]  WITH CHECK ADD  CONSTRAINT [FK_user_activities_user] FOREIGN KEY([user])
REFERENCES [LAF].[user] ([id])
GO
ALTER TABLE [LAF].[user_activities] CHECK CONSTRAINT [FK_user_activities_user]
GO
ALTER TABLE [LAF].[user_role]  WITH CHECK ADD  CONSTRAINT [FK_user_role_role] FOREIGN KEY([role])
REFERENCES [LAF].[role] ([id])
GO
ALTER TABLE [LAF].[user_role] CHECK CONSTRAINT [FK_user_role_role]
GO
ALTER TABLE [LAF].[user_role]  WITH CHECK ADD  CONSTRAINT [FK_user_role_user] FOREIGN KEY([user])
REFERENCES [LAF].[user] ([id])
GO
ALTER TABLE [LAF].[user_role] CHECK CONSTRAINT [FK_user_role_user]
GO
ALTER TABLE [LAF].[vehicle]  WITH CHECK ADD  CONSTRAINT [FK_vehicle_color] FOREIGN KEY([color])
REFERENCES [LAF].[color] ([id])
GO
ALTER TABLE [LAF].[vehicle] CHECK CONSTRAINT [FK_vehicle_color]
GO
ALTER TABLE [LAF].[vehicle]  WITH CHECK ADD  CONSTRAINT [FK_vehicle_manufacturer] FOREIGN KEY([manufacturer])
REFERENCES [LAF].[manufacturer] ([id])
GO
ALTER TABLE [LAF].[vehicle] CHECK CONSTRAINT [FK_vehicle_manufacturer]
GO
ALTER TABLE [LAF].[vehicle_owner]  WITH CHECK ADD  CONSTRAINT [FK_vehicle_owner_person] FOREIGN KEY([person])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[vehicle_owner] CHECK CONSTRAINT [FK_vehicle_owner_person]
GO
ALTER TABLE [LAF].[vehicle_owner]  WITH CHECK ADD  CONSTRAINT [FK_vehicle_owner_vehicle] FOREIGN KEY([vehicle])
REFERENCES [LAF].[vehicle] ([id])
GO
ALTER TABLE [LAF].[vehicle_owner] CHECK CONSTRAINT [FK_vehicle_owner_vehicle]
GO
ALTER TABLE [LAF].[wasika]  WITH CHECK ADD  CONSTRAINT [FK_wasika_department] FOREIGN KEY([destination])
REFERENCES [LAF].[department] ([id])
GO
ALTER TABLE [LAF].[wasika] CHECK CONSTRAINT [FK_wasika_department]
GO
ALTER TABLE [LAF].[wasika]  WITH CHECK ADD  CONSTRAINT [FK_wasika_event] FOREIGN KEY([event])
REFERENCES [LAF].[event] ([id])
GO
ALTER TABLE [LAF].[wasika] CHECK CONSTRAINT [FK_wasika_event]
GO
ALTER TABLE [LAF].[wasika]  WITH CHECK ADD  CONSTRAINT [FK_wasika_wasika_type] FOREIGN KEY([type])
REFERENCES [LAF].[wasika_type] ([id])
GO
ALTER TABLE [LAF].[wasika] CHECK CONSTRAINT [FK_wasika_wasika_type]
GO
ALTER TABLE [LAF].[wasika_fire_arms]  WITH CHECK ADD  CONSTRAINT [FK_wasika_fire_arms_fire_arm] FOREIGN KEY([fire_arm])
REFERENCES [LAF].[fire_arm] ([id])
GO
ALTER TABLE [LAF].[wasika_fire_arms] CHECK CONSTRAINT [FK_wasika_fire_arms_fire_arm]
GO
ALTER TABLE [LAF].[wasika_fire_arms]  WITH CHECK ADD  CONSTRAINT [FK_wasika_fire_arms_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[wasika_fire_arms] CHECK CONSTRAINT [FK_wasika_fire_arms_wasika]
GO
ALTER TABLE [LAF].[wasika_object]  WITH CHECK ADD  CONSTRAINT [FK_wasika_object_object] FOREIGN KEY([object])
REFERENCES [LAF].[object] ([id])
GO
ALTER TABLE [LAF].[wasika_object] CHECK CONSTRAINT [FK_wasika_object_object]
GO
ALTER TABLE [LAF].[wasika_object]  WITH CHECK ADD  CONSTRAINT [FK_wasika_object_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[wasika_object] CHECK CONSTRAINT [FK_wasika_object_wasika]
GO
ALTER TABLE [LAF].[wasika_people]  WITH CHECK ADD  CONSTRAINT [FK_wasika_people_person] FOREIGN KEY([person])
REFERENCES [LAF].[person] ([id])
GO
ALTER TABLE [LAF].[wasika_people] CHECK CONSTRAINT [FK_wasika_people_person]
GO
ALTER TABLE [LAF].[wasika_people]  WITH CHECK ADD  CONSTRAINT [FK_wasika_people_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[wasika_people] CHECK CONSTRAINT [FK_wasika_people_wasika]
GO
ALTER TABLE [LAF].[wasika_places]  WITH CHECK ADD  CONSTRAINT [FK_wasika_places_place] FOREIGN KEY([place])
REFERENCES [LAF].[place] ([id])
GO
ALTER TABLE [LAF].[wasika_places] CHECK CONSTRAINT [FK_wasika_places_place]
GO
ALTER TABLE [LAF].[wasika_places]  WITH CHECK ADD  CONSTRAINT [FK_wasika_places_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[wasika_places] CHECK CONSTRAINT [FK_wasika_places_wasika]
GO
ALTER TABLE [LAF].[wasika_vehicle]  WITH CHECK ADD  CONSTRAINT [FK_wasika_vehicle_vehicle] FOREIGN KEY([vehicle])
REFERENCES [LAF].[vehicle] ([id])
GO
ALTER TABLE [LAF].[wasika_vehicle] CHECK CONSTRAINT [FK_wasika_vehicle_vehicle]
GO
ALTER TABLE [LAF].[wasika_vehicle]  WITH CHECK ADD  CONSTRAINT [FK_wasika_vehicle_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[wasika_vehicle] CHECK CONSTRAINT [FK_wasika_vehicle_wasika]
GO
ALTER TABLE [LAF].[whistory]  WITH CHECK ADD  CONSTRAINT [FK_whistory_user_role] FOREIGN KEY([user_role_id])
REFERENCES [LAF].[user_role] ([id])
GO
ALTER TABLE [LAF].[whistory] CHECK CONSTRAINT [FK_whistory_user_role]
GO
ALTER TABLE [LAF].[whistory]  WITH CHECK ADD  CONSTRAINT [FK_whistory_wasika] FOREIGN KEY([wasika])
REFERENCES [LAF].[wasika] ([id])
GO
ALTER TABLE [LAF].[whistory] CHECK CONSTRAINT [FK_whistory_wasika]
GO
ALTER TABLE [LAF].[whistory]  WITH CHECK ADD  CONSTRAINT [FK_whistory_wstatus] FOREIGN KEY([status])
REFERENCES [LAF].[wstatus] ([id])
GO
ALTER TABLE [LAF].[whistory] CHECK CONSTRAINT [FK_whistory_wstatus]
GO

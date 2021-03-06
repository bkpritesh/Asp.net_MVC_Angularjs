USE [master]
GO
/****** Object:  Database [AngularJsDemo]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE DATABASE [AngularJsDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AngularJsDemo', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AngularJsDemo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AngularJsDemo_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AngularJsDemo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AngularJsDemo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AngularJsDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AngularJsDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AngularJsDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AngularJsDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AngularJsDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AngularJsDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [AngularJsDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AngularJsDemo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AngularJsDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AngularJsDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AngularJsDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AngularJsDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AngularJsDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AngularJsDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AngularJsDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AngularJsDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AngularJsDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AngularJsDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AngularJsDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AngularJsDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AngularJsDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AngularJsDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AngularJsDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AngularJsDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AngularJsDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AngularJsDemo] SET  MULTI_USER 
GO
ALTER DATABASE [AngularJsDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AngularJsDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AngularJsDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AngularJsDemo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AngularJsDemo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 27-07-2017 6:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[DOB] [date] NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](10) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](150) NULL,
	[State] [varchar](150) NULL,
	[Country] [varchar](150) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201707060925061_InitialCreate', N'WebAPI.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829ECE3948AD5CBA8B6D60EF22759273826E2E5867DBF3B6A025DA1156A254894A1314FD657DE84FEA5FE850A264F1A68BADD84EB1C0222287DF0C874372381CFACFDFFF187F780A03EB1127A91F91897D343AB42D4CDCC8F3C972626774F1CD3BFBC3FB7FFE637CE1854FD68F25DD09A38396249DD80F94C6A78E93BA0F3844E928F4DD244AA3051DB951E8202F728E0F0FBF738E8E1C0C10366059D6F85346A81FE2FC033EA71171714C33145C471E0E525E0E35B31CD5BA41214E63E4E289FD139E9FDD5D8D0A42DB3A0B7C0442CC70B0B02D4448441105114F3FA7784693882C673114A0E0FE39C640B740418AB9E8A72BF2AEBD383C66BD70560D4B28374B6914F6043C3AE16A71E4E66B29D7AED4068ABB0005D367D6EB5C7913FBCAC379D1A7280005C80C4FA741C28827F675C5E22C8D6F301D950D4705E4650270BF44C9D7511DF1C0EADCEEA032A3E3D121FB77604DB38066099E109CD1040507D65D360F7CF707FC7C1F7DC5647272345F9CBC7BF31679276FBFC5276FEA3D85BE029D500045774914E30464C38BAAFFB6E588ED1CB961D5ACD6A6D00AD812CC08DBBA464F1F3159D207982BC7EF6CEBD27FC25E59C28DEB33F1610241239A64F0799305019A07B8AA771A79B2FF1BB81EBF793B08D71BF4E82FF3A197F8C3C449605E7DC2415E9B3EF87131BD84F1FEC2C92E932864DFA27D15B55F665196B8AC339191E41E254B4C45E9C6CECA783B9934831ADEAC4BD4FD376D26A96ADE5A52D6A1756642C962DBB3A194F765F976B6B8B33886C1CB4D8B69A4C9E0847D6A24353CB08AEA95C11C753518021DF93BAF7F1721F2830116C00E5CC0ED58F84988AB5E7E1F81B921D25BE63B94A630FFBDFFA1F4A14174F87300D167D8CD1230CB194561FCE2DCEE1E22826FB270CEAC7D7BBC061B9AFB5FA24BE4D228B920ACD5C6781F23F76B94D10BE29D238A3F53B704649FF77ED81D601071CE5C17A7E9251833F6A61178D525E015A127C7BDE1D8DAB46B07641A203FD47B20D22AFAA5245D79217A0AC5133190E9BC9126513F464B9F7413B524358B5A50B48ACAC9FA8ACAC0BA49CA29CD82E604AD72165483F977F9080DEFE0E5B0FBEFE16DB6799BD6829A1A67B042E2FF62821358C6BC3B44294EC86A04BAAC1BBB7016F2E1634C5F7C6FCA39FD88826C68566BCD867C11187E36E4B0FB3F1B7231A1F8D1F79857D2E1D85312037C277AFD89AA7DCE49926D7B3A08DDDC36F3EDAC01A6E97296A691EBE7B34013F0E2E10A517EF0E1ACF6D845D11B39FE011D0343F7D9960725D0375B36AA5B728E034CB175E61601C1294A5DE4A96A840E793D042B77548D60AB388828DC7F149E60E938618D103B04A530537D42D569E113D78F51D0AA25A965C72D8CF5BDE221D79CE31813C6B055135D98EBC31E4C808A8F34286D1A1A3B358B6B364483D76A1AF336177635EE4A34622B36D9E23B1BEC92FB6F2F6298CD1ADB827136ABA48B00C610DE2E0C949F55BA1A807C70D93703954E4C0603E52ED5560C54D4D80E0C5454C9AB33D0E288DA75FCA5F3EABE99A77850DEFEB6DEA8AE1DD8A6A08F3D33CDC2F78436145AE04435CFF339ABC44F5473380339F9F92CE5AEAE6C220C7C86A918B259F9BB5A3FD46906918DA8097065682DA0FCF24F015226540FE1CA585EA374DC8BE8015BC6DD1A61F9DA2FC1D66C40C5AE5F82D608CD57A5B271763A7D543DABAC4131F24E87851A8EC620E4C54BEC7807A598E2B2AA62BAF8C27DBCE15AC7F8603428A8C5733528A9ECCCE05A2A4DB35D4B3A87AC8F4BB6919624F7C9A0A5B233836B89DB68BB92344E410FB7602315895BF84093AD8C7454BB4D5537768AB4285E30760CF953E36B14C73E59D6F2A97889352B92A9A6DFCCFAA71A850586E3A69A8CA34ADA8A138D12B4C4522DB006492FFD24A5E788A23962719EA9172A64DABDD5B0FC972CEBDBA73A88E53E5052B3BF8B16E295BDB0CDAA7E086F7E099D0B99339347D03543AF6F6EB1D43614A04413B49F46411612B36F656E5D5CDDD5DB17252AC2D891E4577C2745518A872B6ABDD398A8F361F3F1A9BC96F5C7C80C61D274E973D6756DF243CD286558AA8E620A55ED6CCC4CEE4BD771929DC2FEC3D48AF032B38967A2D40178514F8C5A32830256ABEB8E2AE69BD431C59AEE885252491D52AAEA21653D754410B25EB1169E41A37A8AEE1CD464913ABA5ADB1D5993365287D654AF81AD9159AEEB8EAAC92CA9036BAABB63AFD24CE4F5738FF72BE351659D0DAB38C86EB66319305E66311C66C3ABDDD7D7816AC53DB1F88DBC02C6CBF7D2908CA7B9750CA9085D6C6648060CF37A235C728BCB4DE3CDBC1953B8B91696F4A69B7B335E3F737D51A350CE713249C5BD3ACF49E7B6313F43B53F8E510E5505896D956A84EDFC39A5381C3182D1ECE7601AF8982DDE25C13522FE02A7B4C8D6B08F0F8F8EA54736FBF3E0C549532FD09C414DAF5EC431DB42E215794489FB8012350D628347212B5025C27C453CFC34B17FCD5B9DE6C10AF6575E7C605DA59F89FF730615F74986ADDFD4B4CE6192E49B4F557BFAA4A1BB56AFFEFFA5687A60DD2630634EAD434997EB8CB0F8D0A1973445D30DA459FBF9C3EB9D50C22B032DAA3421D67F5430F7E9200F0A4A29FF15A2A77FF7154DFB68602344CDC380A1F00651A129F17F1D2C63D2BF079F344FFAEFD759FD23807544333E00F0497F3039FDBFFB3254B6DCE156A3390E6D6349CAF5DC9A3EBD512EE5AEF72625CB7AA389AE6652F780DB205B7A0DCB786589C683ED8E9A3CE2C1B07769DA2F9E3CBC2FF9C2AB4C8EDDA6096F3333B8E11EE86F9510BC07296C9A949CDDA7FD6EDBD64C21DC3DCF9DEC97DCBB67C6C613B5769FC2BB6D63338579F7DCD87A25EAEE99ADED6AFFDCB1A575DE42779E76AB661019AE6274B1E0B6B4DA22700E27FC790446507894C56B487D1E57530E6A0BC3158999A939814C66AC4C1C85AF42D1CCB65F5FF986DFD8594ED3CCD69076D9C49BAFFF8DBC394D336F4332E32E1282B5E984BA24ED9675AC29EBE93525000B3D69C9376FF3591BEFD55F53BEEF204A11668FE18EF8F5A4F70EA29221A74E8F745EF5BA17F6CEDA2F26C2FE9DFACB1504FBFD44825D61D7AC68AEC8222A376F49A292448AD05C638A3CD852CF12EA2F904BA19AC598F3E7DC79DC8EDD74CCB177456E331A6714BA8CC3792004BC9813D0C43FCF5916651EDFC6F92F930CD10510D367B1F95BF27DE6075E25F7A52626648060DE058FE8B2B1A42CB2BB7CAE906E22D21188ABAF728AEE7118070096DE92197AC4EBC806E6F7112F91FBBC8A009A40DA074254FBF8DC47CB048529C758B5874FB0612F7C7AFF179594EEA838540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4eab8cc1-57c2-4521-ab88-6964281e29f6', N'pritesh@yahoo.com', 0, N'AMXSy+1r58zavRDtuvQcjO1uf6LaarG5eGwVb6j2hoom9r4nS0Y7m7VYx6v7t/lhcw==', N'f3754857-a5f8-46f5-b220-42b6190645c4', NULL, 0, 0, NULL, 0, 0, N'pritesh@yahoo.com')
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2064, N'zzz1', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2065, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2066, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2068, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Bardoli', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2070, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Bardoli', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2075, N'TDf', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2076, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2077, N'Tsddw', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2079, N'Ts', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2081, N'Tsdsfasfasd', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2082, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2083, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2084, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2085, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2086, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2087, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2088, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2089, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2090, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2091, N'TDD', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2092, N'DDd', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2093, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2095, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2096, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2097, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2098, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2099, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2100, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2101, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2102, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2103, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2104, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2105, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2106, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2107, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2108, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2109, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2110, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2111, N'Twwwqaaaqw', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2112, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2113, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2114, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2115, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2116, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2117, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2118, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2119, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2120, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2121, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2122, N'T', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2123, N'T5', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2125, N'T4', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2141, N'T1', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (2152, N'Tsssw', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Surat', N'Gujarat', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (5167, N'eeeee1', N'eee', N'www', N'Female', CAST(0xAD190B00 AS Date), N'ram@yahoo.com', N'1234567892', N'Test', N'Bardoli', N'Rajasthan', N'Uk')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (5170, N'sddsd', N'Narendrabhai', N'Maturkar', N'Male', CAST(0xAC190B00 AS Date), N'test@yahoo.com', N'1234567892', N'Pal', N'Bardoli', N'Rajasthan', N'India')
INSERT [dbo].[Customer] ([ID], [FirstName], [MiddleName], [LastName], [Gender], [DOB], [Email], [MobileNo], [Address], [City], [State], [Country]) VALUES (5171, N'dfasdfq', N'sgfg', N'dfg', N'Male', CAST(0xAC190B00 AS Date), N'pritesh@yahoo.com', N'8866671361', N'Pal', N'Bardoli', N'Gujarat', N'India')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 27-07-2017 6:29:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [AngularJsDemo] SET  READ_WRITE 
GO

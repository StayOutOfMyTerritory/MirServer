USE [master]
GO
/****** Object:  Database [Mir2Game]    Script Date: 2024/11/12 21:04:19 ******/
CREATE DATABASE [Mir2Game]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mir2Game', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mir2Game.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mir2Game_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mir2Game_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mir2Game] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mir2Game].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mir2Game] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mir2Game] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mir2Game] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mir2Game] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mir2Game] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mir2Game] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mir2Game] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mir2Game] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mir2Game] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mir2Game] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mir2Game] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mir2Game] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mir2Game] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mir2Game] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mir2Game] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mir2Game] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mir2Game] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mir2Game] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mir2Game] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mir2Game] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mir2Game] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mir2Game] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mir2Game] SET RECOVERY FULL 
GO
ALTER DATABASE [Mir2Game] SET  MULTI_USER 
GO
ALTER DATABASE [Mir2Game] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mir2Game] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mir2Game] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mir2Game] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mir2Game] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mir2Game] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mir2Game', N'ON'
GO
ALTER DATABASE [Mir2Game] SET QUERY_STORE = OFF
GO
USE [Mir2Game]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[RealName] [nvarchar](max) NULL,
	[BirthDate] [datetime2](7) NULL,
	[SecretQuestion] [nvarchar](max) NULL,
	[SecretAnswer] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CreationIP] [varchar](max) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Banned] [bit] NOT NULL,
	[BanReason] [nvarchar](max) NULL,
	[ExpiryDate] [datetime2](7) NULL,
	[LastIP] [varchar](max) NOT NULL,
	[LastDate] [datetime2](7) NOT NULL,
	[Hwan] [bigint] NOT NULL,
	[ValidTime] [datetime2](7) NULL,
	[WrongPasswordCount] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountShortcutKey]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountShortcutKey](
	[AccountID] [nvarchar](25) NOT NULL,
	[Key] [nvarchar](max) NOT NULL,
	[AuxiliaryKey] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Level] [char](1) NOT NULL,
	[AdminName] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BagItem]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BagItem](
	[Character] [nvarchar](max) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Position] [int] NOT NULL,
	[MakeIndex] [bigint] NOT NULL,
	[ItemID] [int] NOT NULL,
	[Dura] [int] NOT NULL,
	[DuraMax] [int] NOT NULL,
	[Desc0] [tinyint] NOT NULL,
	[Desc1] [tinyint] NOT NULL,
	[Desc2] [tinyint] NOT NULL,
	[Desc3] [tinyint] NOT NULL,
	[Desc4] [tinyint] NOT NULL,
	[Desc5] [tinyint] NOT NULL,
	[Desc6] [tinyint] NOT NULL,
	[Desc7] [tinyint] NOT NULL,
	[Desc8] [tinyint] NOT NULL,
	[Desc9] [tinyint] NOT NULL,
	[Desc10] [tinyint] NOT NULL,
	[Desc11] [tinyint] NOT NULL,
	[Desc12] [tinyint] NOT NULL,
	[Desc13] [tinyint] NOT NULL,
	[AwakeType] [tinyint] NOT NULL,
	[AwakeStage1] [tinyint] NOT NULL,
	[AwakeStage2] [tinyint] NOT NULL,
	[AwakeStage3] [tinyint] NOT NULL,
	[AwakeStage4] [tinyint] NOT NULL,
	[AwakeStage5] [tinyint] NOT NULL,
	[SealExpiryDate] [datetime2](7) NULL,
	[ItemCreationDate] [datetime2](7) NULL,
	[Hero_Name] [nvarchar](max) NOT NULL,
	[Hero_Sex] [bit] NOT NULL,
	[Hero_Level] [int] NOT NULL,
	[Hero_Job] [tinyint] NOT NULL,
	[Hero_SealCount] [tinyint] NOT NULL,
	[Hero_RemoveLevelLimitCount] [tinyint] NOT NULL,
	[Hero_MaxHP] [int] NOT NULL,
	[Hero_MaxMP] [int] NOT NULL,
	[Hero_MinDC] [int] NOT NULL,
	[Hero_MaxDC] [int] NOT NULL,
	[Hero_MinMC] [int] NOT NULL,
	[Hero_MaxMC] [int] NOT NULL,
	[Hero_MinSC] [int] NOT NULL,
	[Hero_MaxSC] [int] NOT NULL,
	[Hero_MinAC] [int] NOT NULL,
	[Hero_MaxAC] [int] NOT NULL,
	[Hero_MinMAC] [int] NOT NULL,
	[Hero_MaxMAC] [int] NOT NULL,
	[Hero_ExpRate] [int] NOT NULL,
	[Hero_WeightBag] [int] NOT NULL,
	[Hero_WeightEquip] [int] NOT NULL,
	[Hero_WeightTwoHands] [int] NOT NULL,
	[Hero_Accurate] [int] NOT NULL,
	[Hero_Agility] [int] NOT NULL,
	[Hero_MagicResist] [int] NOT NULL,
	[Hero_PoisonResist] [int] NOT NULL,
	[Hero_HPRecovery] [int] NOT NULL,
	[Hero_MPRecovery] [int] NOT NULL,
	[Hero_Luck] [int] NOT NULL,
	[Hero_FishingSuccessRate] [int] NOT NULL,
	[Hero_MiningSuccessRate] [int] NOT NULL,
	[Hero_AddMagic] [varchar](max) NOT NULL,
	[Hero_LearnedMagic] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[CharacterName] [nvarchar](max) NOT NULL,
	[AccountID] [nvarchar](max) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[DeleteDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreationIP] [varchar](max) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Banned] [bit] NOT NULL,
	[BanReason] [nvarchar](max) NULL,
	[ExpiryDate] [datetime2](7) NULL,
	[ChatBanned] [bit] NOT NULL,
	[ChatBanExpiryDate] [datetime2](7) NULL,
	[LastIP] [varchar](max) NOT NULL,
	[LastDate] [datetime2](7) NOT NULL,
	[CurrentMapName] [nvarchar](max) NOT NULL,
	[CurrentX] [int] NOT NULL,
	[CurrentY] [int] NOT NULL,
	[Dir] [tinyint] NOT NULL,
	[Hair] [tinyint] NOT NULL,
	[EnableAgitRecall] [bit] NOT NULL,
	[Sex] [tinyint] NOT NULL,
	[Job] [tinyint] NOT NULL,
	[Level] [int] NOT NULL,
	[Hp] [int] NOT NULL,
	[Mp] [int] NOT NULL,
	[Exp] [bigint] NOT NULL,
	[Gold] [int] NOT NULL,
	[HomeMap] [nvarchar](max) NOT NULL,
	[HomeX] [int] NOT NULL,
	[HomeY] [int] NOT NULL,
	[PKPoint] [int] NOT NULL,
	[AllowGroup] [bit] NOT NULL,
	[FreeGulityCount] [tinyint] NOT NULL,
	[AttackMode] [tinyint] NOT NULL,
	[FightZoneDie] [int] NOT NULL,
	[BodyLuck] [float] NOT NULL,
	[IncHealth] [int] NOT NULL,
	[IncSpell] [int] NOT NULL,
	[IncHealing] [int] NOT NULL,
	[BonusApply] [tinyint] NOT NULL,
	[BonusPoint] [int] NOT NULL,
	[CGHUseTime] [bigint] NOT NULL,
	[EnableGRecall] [bit] NOT NULL,
	[NotReadTag] [int] NOT NULL,
	[BagCount] [tinyint] NOT NULL,
	[HasExpandedStorage] [bit] NOT NULL,
	[ExpandedStorageExpiryDate] [datetime2](7) NULL,
	[HeroNameplateCount] [tinyint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterShortcutKey]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterShortcutKey](
	[CharacterName] [nvarchar](max) NOT NULL,
	[Key] [nvarchar](max) NOT NULL,
	[AuxiliaryKey] [nvarchar](max) NOT NULL,
	[Deleted] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeroBagItem]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeroBagItem](
	[MasterName] [nvarchar](max) NOT NULL,
	[Nameplate_Pos] [tinyint] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Position] [int] NOT NULL,
	[MakeIndex] [bigint] NOT NULL,
	[ItemID] [int] NOT NULL,
	[Dura] [int] NOT NULL,
	[DuraMax] [int] NOT NULL,
	[Desc0] [tinyint] NOT NULL,
	[Desc1] [tinyint] NOT NULL,
	[Desc2] [tinyint] NOT NULL,
	[Desc3] [tinyint] NOT NULL,
	[Desc4] [tinyint] NOT NULL,
	[Desc5] [tinyint] NOT NULL,
	[Desc6] [tinyint] NOT NULL,
	[Desc7] [tinyint] NOT NULL,
	[Desc8] [tinyint] NOT NULL,
	[Desc9] [tinyint] NOT NULL,
	[Desc10] [tinyint] NOT NULL,
	[Desc11] [tinyint] NOT NULL,
	[Desc12] [tinyint] NOT NULL,
	[Desc13] [tinyint] NOT NULL,
	[AwakeType] [tinyint] NOT NULL,
	[AwakeStage1] [tinyint] NOT NULL,
	[AwakeStage2] [tinyint] NOT NULL,
	[AwakeStage3] [tinyint] NOT NULL,
	[AwakeStage4] [tinyint] NOT NULL,
	[AwakeStage5] [tinyint] NOT NULL,
	[SealExpiryDate] [datetime2](7) NULL,
	[ItemCreationDate] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeroInfo]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeroInfo](
	[HeroName] [nvarchar](max) NOT NULL,
	[MasterName] [nvarchar](max) NOT NULL,
	[HeroNameplatePos] [tinyint] NOT NULL,
	[Job] [tinyint] NOT NULL,
	[Sex] [tinyint] NOT NULL,
	[Level] [int] NOT NULL,
	[Hair] [tinyint] NOT NULL,
	[HP] [int] NOT NULL,
	[MP] [int] NOT NULL,
	[Exp] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeroMagic]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeroMagic](
	[MasterName] [nvarchar](max) NOT NULL,
	[Nameplate_Pos] [tinyint] NOT NULL,
	[MagicID] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Level] [tinyint] NOT NULL,
	[Key] [int] NOT NULL,
	[AuxiliaryKey] [int] NOT NULL,
	[CurrentTrain] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeroSettingInfo]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeroSettingInfo](
	[MasterName] [nvarchar](max) NOT NULL,
	[HeroNameplatePos] [tinyint] NOT NULL,
	[MagicOpenCount] [tinyint] NOT NULL,
	[BagOpenCount] [tinyint] NOT NULL,
	[LimitUpCount] [tinyint] NOT NULL,
	[AutoSlotOpenCount] [int] NOT NULL,
	[ExpRate] [int] NOT NULL,
	[AutoSlot1Type] [int] NOT NULL,
	[AutoSlot1Rate] [int] NOT NULL,
	[AutoSlot2Type] [int] NOT NULL,
	[AutoSlot2Rate] [int] NOT NULL,
	[AISetting] [tinyint] NOT NULL,
	[MaxSealCount] [tinyint] NOT NULL,
	[StoneMakeindex] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Magic]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magic](
	[Character] [nvarchar](max) NOT NULL,
	[MagicID] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Level] [tinyint] NOT NULL,
	[Key] [int] NOT NULL,
	[AuxiliaryKey] [int] NOT NULL,
	[CurrentTrain] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest](
	[Character] [nvarchar](max) NOT NULL,
	[QuestOpenIndex] [varchar](max) NOT NULL,
	[QuestFinishIndex] [varchar](max) NOT NULL,
	[Quest] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[Character] [nvarchar](max) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Job] [tinyint] NOT NULL,
	[Level] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relation]    Script Date: 2024/11/12 21:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[Character] [nvarchar](max) NOT NULL,
	[OtherName] [nvarchar](max) NOT NULL,
	[State] [int] NULL,
	[Msg] [int] NULL,
	[Date] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Mir2Game] SET  READ_WRITE 
GO

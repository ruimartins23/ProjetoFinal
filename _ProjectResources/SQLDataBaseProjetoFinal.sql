USE [master]
GO
/****** Object:  Database [RM_SiteReceitas]    Script Date: 16/12/2020 00:58:41 ******/
CREATE DATABASE [RM_SiteReceitas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjetoFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjetoFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjetoFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjetoFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RM_SiteReceitas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RM_SiteReceitas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ARITHABORT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RM_SiteReceitas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RM_SiteReceitas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [RM_SiteReceitas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RM_SiteReceitas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RM_SiteReceitas] SET  MULTI_USER 
GO
ALTER DATABASE [RM_SiteReceitas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RM_SiteReceitas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RM_SiteReceitas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RM_SiteReceitas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RM_SiteReceitas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RM_SiteReceitas] SET QUERY_STORE = OFF
GO
USE [RM_SiteReceitas]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 16/12/2020 00:58:41 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 16/12/2020 00:58:41 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 16/12/2020 00:58:41 ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 16/12/2020 00:58:41 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 16/12/2020 00:58:41 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 16/12/2020 00:58:41 ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 16/12/2020 00:58:41 ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Utilizador_Id] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Categoria_Id] [int] IDENTITY(1,1) NOT NULL,
	[ValorCategoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Categoria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaIngrediente](
	[Categoria_Id] [int] NOT NULL,
	[Ingrediente_Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[Comentario_Id] [int] IDENTITY(1,1) NOT NULL,
	[ValorComentario] [ntext] NOT NULL,
	[Receita_Id] [int] NULL,
	[Utilizador_Id] [int] NULL,
	[DatePost] [date] NOT NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[Comentario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteRecipes]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteRecipes](
	[Utilizador_id] [int] NULL,
	[Receita_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingrediente](
	[Ingrediente_Id] [int] IDENTITY(1,1) NOT NULL,
	[Produto] [nvarchar](50) NOT NULL,
	[Unidade] [nvarchar](50) NOT NULL,
	[Receita_id] [int] NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[Ingrediente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita](
	[Receita_id] [int] IDENTITY(1,1) NOT NULL,
	[NomeRec] [nvarchar](50) NOT NULL,
	[Descricao] [ntext] NOT NULL,
	[Duracao] [nvarchar](50) NOT NULL,
	[Dificuldade] [tinyint] NOT NULL,
	[Rating] [tinyint] NOT NULL,
	[Categoria] [nvarchar](10) NULL,
	[Utilizador_id] [int] NULL,
	[Comentário] [ntext] NULL,
	[IsValidated] [bit] NOT NULL,
 CONSTRAINT [PK_Receita] PRIMARY KEY CLUSTERED 
(
	[Receita_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceitaIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceitaIngrediente](
	[Receita_id] [int] NULL,
	[Ingrediente_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeUser](
	[Utilizador_id] [int] NULL,
	[Receita_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[Utilizador_id] [int] IDENTITY(1,1) NOT NULL,
	[NomeUser] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[IsRegisted] [bit] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Account_Id] [int] NULL,
	[MembershipUserName] [nvarchar](50) NULL,
	[IsBlocked] [bit] NOT NULL,
 CONSTRAINT [PK_Utilizador] PRIMARY KEY CLUSTERED 
(
	[Utilizador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (1, N'ruimartins_23', N'1234567789', 3)
INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (2, N'FernandoAndrade2323', N'1234567789', 4)
INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (3, N'FernandoAndrade2323', N'1234567789', 4)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'ProjetoFinal.WebForms', N'projetofinal.webforms', N'97c9c507-e184-4f6d-ae0b-563ad3013922', NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'43fea860-7be1-4b8a-b5db-12ae5fc3d48b', N'9AFtiLqYXZgqHwJkpQGos4aJFrQ=', 1, N'+DXoYQ5Z28XBC0n59Tyg5Q==', NULL, N'dsasadas@jsoasadsadasdas.pt', N'dsasadas@jsoasadsadasdas.pt', NULL, NULL, 1, 0, CAST(N'2020-12-08T19:38:54.000' AS DateTime), CAST(N'2020-12-08T19:38:54.873' AS DateTime), CAST(N'2020-12-08T19:38:54.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'cfa3e0c2-68a3-4041-ac28-107f4a5afb36', N'JGf8D6CHrgsP+W3cSkJpSRBV3eE=', 1, N'jXqs096IS53FUjMV6whrWA==', NULL, N'ruirui@teste.pt', N'ruirui@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-12T01:31:49.000' AS DateTime), CAST(N'2020-12-12T01:31:49.000' AS DateTime), CAST(N'2020-12-12T01:31:49.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'f9023b98-1190-476d-a40b-bc85fe64cbfe', N'kufh5SwYdpHLBrPe694MC0wpHa8=', 1, N'q2BQhNB94fm6hVEKpJE2OA==', NULL, N'ruirui@teste.pt', N'ruirui@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-12T01:32:44.000' AS DateTime), CAST(N'2020-12-12T01:32:44.000' AS DateTime), CAST(N'2020-12-12T01:32:44.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'4c403059-b5cf-44e1-8792-62ef9f01c448', N'EwmO0nPKlBZudASjr62u33duf4E=', 1, N'dZ5znaIwMQ6GIUM6KRUJ2Q==', NULL, N'ruirui@teste.pt', N'ruirui@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-12T01:33:29.000' AS DateTime), CAST(N'2020-12-12T01:33:29.000' AS DateTime), CAST(N'2020-12-12T01:33:29.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'e6cf2ef6-bd81-4a92-81d7-002321fa9148', N'R+FSBKx6j6mo1kFUx/6ORQp7dWI=', 1, N'6IQPv2WpNIHvWSGuYl/90Q==', NULL, N'sadsa@spao.pt', N'sadsa@spao.pt', NULL, NULL, 1, 0, CAST(N'2020-12-08T19:05:40.000' AS DateTime), CAST(N'2020-12-08T19:05:40.977' AS DateTime), CAST(N'2020-12-08T19:05:40.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'23faf8b8-5bdf-4904-b71f-d33b4cbe27b7', N'yRm+jhHuFMpI/wZZTbYY5bbc1eo=', 1, N'To98TbkZz8vTDeMUl6Kudg==', NULL, N'teste@teste.pt', N'teste@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-12T01:39:48.000' AS DateTime), CAST(N'2020-12-12T01:39:48.567' AS DateTime), CAST(N'2020-12-12T01:39:48.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'e1b98cb9-b906-4711-b979-b97cf67c7250', N'eEXe1K/NKB/p/2DoGVvZ3Nj3gOk=', 1, N'4sg354rUdQWnxCmAQWhBtg==', NULL, N'teste@teste.pt', N'teste@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T17:45:41.000' AS DateTime), CAST(N'2020-12-14T17:49:10.313' AS DateTime), CAST(N'2020-12-14T17:45:41.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2020-12-15T00:24:44.557' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'37d336da-0136-4caa-8551-47d2e6b1f640', N'ZPqsTtMG9R560cbhe645G1Se+vk=', 1, N'8Fvwj4RGZ+VqL7brknwRIg==', NULL, N'teste@teste1.pt', N'teste@teste1.pt', NULL, NULL, 1, 0, CAST(N'2020-12-12T15:43:02.000' AS DateTime), CAST(N'2020-12-12T15:43:14.477' AS DateTime), CAST(N'2020-12-12T15:43:02.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'd7d86646-b307-4af1-b618-558267b96d90', N'lToDcP6f41A4wSQH5IqoV6o1hmo=', 1, N'E2zEyfZ2jZrYIL0mxyEWIQ==', NULL, N'teste@teste1.pt', N'teste@teste1.pt', NULL, NULL, 1, 0, CAST(N'2020-12-13T21:09:54.000' AS DateTime), CAST(N'2020-12-13T21:09:54.337' AS DateTime), CAST(N'2020-12-13T21:09:54.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'c4018838-e4a6-4ec1-a4ea-909f9bd855b5', N'iOJeAtvYmmTQ/9oXNdOBzdPRWIc=', 1, N'Fz/rNA0/zLOzYTx54Ixq7w==', NULL, N'teste@teste1.pt', N'teste@teste1.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T15:33:07.000' AS DateTime), CAST(N'2020-12-14T15:33:07.000' AS DateTime), CAST(N'2020-12-14T15:33:07.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'22bd55e2-6fdd-42b6-9e97-a5723549dd16', N'KXVeOKEH1EMKRk7lq8SMaD6T3Y8=', 1, N'RuuBG9wXlsFxdbXurxSR5Q==', NULL, N'teste@teste1.pt', N'teste@teste1.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T15:33:53.000' AS DateTime), CAST(N'2020-12-16T00:22:27.753' AS DateTime), CAST(N'2020-12-14T15:33:53.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'eac8ca38-aa9d-4f1e-a789-c6fca2f1bff4', N'AiOlKhQS070Ctw4NCKetMaK6g0c=', 1, N'Hu3sEn4zIScpDqcm37abeQ==', NULL, N'teste@teste1.pt', N'teste@teste1.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T16:40:55.000' AS DateTime), CAST(N'2020-12-14T16:40:55.173' AS DateTime), CAST(N'2020-12-14T16:40:55.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'308d5779-78ec-4c5b-b78f-2c2e79e815c7', N'YjUNhJS9dBcS7MC6p54chZWxGXU=', 1, N'ijHeWcSzZJCfWQ0k/Hnjtg==', NULL, N'teste@teste11.pt', N'teste@teste11.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T17:46:59.000' AS DateTime), CAST(N'2020-12-14T17:49:03.593' AS DateTime), CAST(N'2020-12-14T17:46:59.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'225cb580-77f2-4045-b3fb-096d0af4547b', N'vR5R/dL2xeGs/0ZGWkkHOe/XICU=', 1, N'9GjNPI/rRVogZ7j8IACVdg==', NULL, N'teste3@teste.pt', N'teste3@teste.pt', NULL, NULL, 1, 0, CAST(N'2020-12-14T17:52:03.000' AS DateTime), CAST(N'2020-12-14T17:52:03.243' AS DateTime), CAST(N'2020-12-14T17:52:03.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'23faf8b8-5bdf-4904-b71f-d33b4cbe27b7', N'111111teste', N'111111teste', NULL, 0, CAST(N'2020-12-12T01:39:48.567' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'37d336da-0136-4caa-8551-47d2e6b1f640', N'ruimartins23', N'ruimartins23', NULL, 0, CAST(N'2020-12-12T15:43:14.477' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'd7d86646-b307-4af1-b618-558267b96d90', N'ruimartins2323', N'ruimartins2323', NULL, 0, CAST(N'2020-12-13T21:09:54.337' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'c4018838-e4a6-4ec1-a4ea-909f9bd855b5', N'ruimartinsruimartins', N'ruimartinsruimartins', NULL, 0, CAST(N'2020-12-14T15:33:07.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'22bd55e2-6fdd-42b6-9e97-a5723549dd16', N'ruimartinsruimartins23', N'ruimartinsruimartins23', NULL, 0, CAST(N'2020-12-16T00:46:39.980' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'e6cf2ef6-bd81-4a92-81d7-002321fa9148', N'ruirui', N'ruirui', NULL, 0, CAST(N'2020-12-08T19:05:40.977' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'cfa3e0c2-68a3-4041-ac28-107f4a5afb36', N'ruirui23', N'ruirui23', NULL, 0, CAST(N'2020-12-12T01:31:49.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'f9023b98-1190-476d-a40b-bc85fe64cbfe', N'ruirui232323', N'ruirui232323', NULL, 0, CAST(N'2020-12-12T01:32:44.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'4c403059-b5cf-44e1-8792-62ef9f01c448', N'ruirui2323232323', N'ruirui2323232323', NULL, 0, CAST(N'2020-12-12T01:33:29.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'43fea860-7be1-4b8a-b5db-12ae5fc3d48b', N'Test2', N'test2', NULL, 0, CAST(N'2020-12-08T19:38:54.873' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'e1b98cb9-b906-4711-b979-b97cf67c7250', N'teste1', N'teste1', NULL, 0, CAST(N'2020-12-14T17:49:10.313' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'308d5779-78ec-4c5b-b78f-2c2e79e815c7', N'teste2', N'teste2', NULL, 0, CAST(N'2020-12-14T17:49:03.593' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'eac8ca38-aa9d-4f1e-a789-c6fca2f1bff4', N'teste23', N'teste23', NULL, 0, CAST(N'2020-12-14T16:40:55.173' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'97c9c507-e184-4f6d-ae0b-563ad3013922', N'225cb580-77f2-4045-b3fb-096d0af4547b', N'teste3', N'teste3', NULL, 0, CAST(N'2020-12-14T17:52:03.243' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (15, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (16, N'Carne')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (17, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (18, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (19, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (20, N'Sobremesa')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (21, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (22, N'TesteTeste')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (23, N'Peixe')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingrediente] ON 

INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (16, N'Robalo', N'100g', NULL)
INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (17, N'Carna de Vaca', N'100g', NULL)
INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (18, N'Carna de Porco', N'100g', NULL)
SET IDENTITY_INSERT [dbo].[Ingrediente] OFF
GO
SET IDENTITY_INSERT [dbo].[Receita] ON 

INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (12, N'Ovos Mexidos', N'Bater os ovos e meter na frigideira', N'15', 1, 1, N'Ovos', 3, NULL, 1)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (13, N'Bife de peru grelhado', N'Temperar o bife e grelhar', N'30', 1, 1, N'Carne', 4, NULL, 1)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (14, N'Ovos Mexidos', N'Bater os ovos e meter na frigideira', N'15', 1, 1, N'Ovos', 3, NULL, 1)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (15, N'Bife de peru grelhado', N'Temperar o bife e grelhar', N'30', 1, 1, N'Carne', 4, NULL, 1)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (18, N'Robalo', N'asd', N'15', 0, 0, N'Peixe', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (19, N'Robalo', N'asd', N'15', 0, 0, N'Peixe', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (20, N'Robalo de cavalo', N'12234', N'15', 1, 0, N'Peixe', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (21, N'dsadas', N'dsadsa', N'15', 0, 0, N'dsadas', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (22, N'Robalo de cavala', N'dasdas', N'15', 2, 0, N'dasdas', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (23, N'Robalo de cavala', N'dasdas', N'15', 0, 0, N'dasdas', 1012, NULL, 0)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário], [IsValidated]) VALUES (24, N'Robalo', N'DASDAS', N'15', 0, 0, N'dasdas', 1012, NULL, 0)
SET IDENTITY_INSERT [dbo].[Receita] OFF
GO
INSERT [dbo].[RecipeUser] ([Utilizador_id], [Receita_id]) VALUES (12, 1012)
INSERT [dbo].[RecipeUser] ([Utilizador_id], [Receita_id]) VALUES (15, 1012)
INSERT [dbo].[RecipeUser] ([Utilizador_id], [Receita_id]) VALUES (19, 1012)
INSERT [dbo].[RecipeUser] ([Utilizador_id], [Receita_id]) VALUES (13, 1012)
INSERT [dbo].[RecipeUser] ([Utilizador_id], [Receita_id]) VALUES (14, 1012)
GO
SET IDENTITY_INSERT [dbo].[Utilizador] ON 

INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (3, N'Rui', N'teste@teste.pt', CAST(N'1997-02-02T00:00:00.000' AS DateTime), 1, 1, 1, NULL, 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (4, N'FernandoAndrade', N'fernando@teste.pt', CAST(N'1962-10-10T00:00:00.000' AS DateTime), 1, 1, NULL, NULL, 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (5, N'ruimartins', N'rui_miguel97@hotmail.com', CAST(N'1997-10-10T00:00:00.000' AS DateTime), 1, 1, NULL, NULL, 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (6, N'FernandoAndrade', N'fernando@teste.pt', CAST(N'1962-10-10T00:00:00.000' AS DateTime), 1, 1, NULL, NULL, 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (10, N'Rui Martins', N'teste@teste.pt', CAST(N'2020-12-14T00:00:00.000' AS DateTime), 1, 1, NULL, N'111111teste', 1)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (11, N'ruimartins23', N'teste@teste1.pt', CAST(N'2020-12-15T00:00:00.000' AS DateTime), 1, 1, NULL, N'ruimartins23', 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (1011, N'ruimartins23', N'teste@teste1.pt', CAST(N'2020-12-14T00:00:00.000' AS DateTime), 1, 0, NULL, N'ruimartins2323', 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (1012, N'ruimartinsruimartins', N'teste@teste1.pt', CAST(N'2020-12-15T00:00:00.000' AS DateTime), 1, 0, NULL, N'ruimartinsruimartins23', 0)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id], [MembershipUserName], [IsBlocked]) VALUES (1013, N'teste23', N'teste@teste1.pt', CAST(N'2020-11-29T00:00:00.000' AS DateTime), 1, 0, NULL, N'teste23', 0)
SET IDENTITY_INSERT [dbo].[Utilizador] OFF
GO
/****** Object:  Index [PK__aspnet_A__C93A4C98A875631E]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__aspnet_A__17477DE495EFAE96]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__aspnet_A__30910331453A194E]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DD5B21DB9]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58CE551874]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC0644F9F9B3]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 16/12/2020 00:58:41 ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B9DF33E1B]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4D0E82D581]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 16/12/2020 00:58:41 ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 16/12/2020 00:58:41 ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Receita]    Script Date: 16/12/2020 00:58:41 ******/
ALTER TABLE [dbo].[Receita] ADD  CONSTRAINT [IX_Receita] UNIQUE NONCLUSTERED 
(
	[Receita_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Receita] ADD  CONSTRAINT [DF_Receita_IsValidated_1]  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[Utilizador] ADD  CONSTRAINT [DF_Utilizador_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Utilizador] FOREIGN KEY([Utilizador_Id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Utilizador]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[CategoriaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_CategoriaIngrediente_Categoria] FOREIGN KEY([Categoria_Id])
REFERENCES [dbo].[Categoria] ([Categoria_Id])
GO
ALTER TABLE [dbo].[CategoriaIngrediente] CHECK CONSTRAINT [FK_CategoriaIngrediente_Categoria]
GO
ALTER TABLE [dbo].[CategoriaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_CategoriaIngrediente_Ingrediente] FOREIGN KEY([Ingrediente_Id])
REFERENCES [dbo].[Ingrediente] ([Ingrediente_Id])
GO
ALTER TABLE [dbo].[CategoriaIngrediente] CHECK CONSTRAINT [FK_CategoriaIngrediente_Ingrediente]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Receita] FOREIGN KEY([Receita_Id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Receita]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Utilizador] FOREIGN KEY([Utilizador_Id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Utilizador]
GO
ALTER TABLE [dbo].[Ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_Ingrediente_Receita] FOREIGN KEY([Receita_id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[Ingrediente] CHECK CONSTRAINT [FK_Ingrediente_Receita]
GO
ALTER TABLE [dbo].[Receita]  WITH CHECK ADD  CONSTRAINT [FK_Receita_Utilizador] FOREIGN KEY([Utilizador_id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[Receita] CHECK CONSTRAINT [FK_Receita_Utilizador]
GO
ALTER TABLE [dbo].[ReceitaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_ReceitaIngrediente_Ingrediente] FOREIGN KEY([Ingrediente_id])
REFERENCES [dbo].[Ingrediente] ([Ingrediente_Id])
GO
ALTER TABLE [dbo].[ReceitaIngrediente] CHECK CONSTRAINT [FK_ReceitaIngrediente_Ingrediente]
GO
ALTER TABLE [dbo].[ReceitaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_ReceitaIngrediente_Receita] FOREIGN KEY([Receita_id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[ReceitaIngrediente] CHECK CONSTRAINT [FK_ReceitaIngrediente_Receita]
GO
ALTER TABLE [dbo].[RecipeUser]  WITH CHECK ADD  CONSTRAINT [FK_RecipeUser_Receita] FOREIGN KEY([Utilizador_id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[RecipeUser] CHECK CONSTRAINT [FK_RecipeUser_Receita]
GO
ALTER TABLE [dbo].[RecipeUser]  WITH CHECK ADD  CONSTRAINT [FK_RecipeUser_Utilizador] FOREIGN KEY([Receita_id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[RecipeUser] CHECK CONSTRAINT [FK_RecipeUser_Utilizador]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[spAddAccount]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAddAccount] 
@Account_id int out,
@Username nvarchar(50),
@Password nvarchar(50),
@Utilizador_id int
AS
BEGIN
INSERT INTO Account ( Username, [Password], Utilizador_Id)
VALUES ( @Username, @Password, @Utilizador_id )
SELECT @Account_id = SCOPE_IDENTITY()
RETURN @Account_id
END

EXEC spAddAccount
GO
/****** Object:  StoredProcedure [dbo].[spAddCategoria]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAddCategoria]
@ValorCategoria nvarchar(50),
@Categoria_id int OUTPUT 
AS
BEGIN
	INSERT INTO Categoria ( ValorCategoria )
	VALUES ( @ValorCategoria );
	SELECT @Categoria_Id = SCOPE_IDENTITY();
END;
GO
/****** Object:  StoredProcedure [dbo].[spAddComentario]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAddComentario]
@Comentario_id int out,
@ValorComentario ntext,
@Receita_id int,
@Utilizador_id int,
@DatePost datetime
AS
BEGIN
INSERT INTO Comentario ( ValorComentario, Receita_id, Utilizador_id, DatePost)
VALUES (@ValorComentario, @Receita_id, @Utilizador_id, @DatePost)
SELECT @Comentario_id = SCOPE_IDENTITY()
RETURN @Comentario_id
END
GO
/****** Object:  StoredProcedure [dbo].[spAddIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAddIngrediente]
@Produto nvarchar(50),
@Unidade nvarchar(50),
@Ingrediente_Id int OUTPUT
AS
BEGIN
INSERT INTO Ingrediente ( Produto, Unidade )
	VALUES ( @Produto, @Unidade );
	SELECT @Ingrediente_Id = SCOPE_IDENTITY();
	RETURN @Ingrediente_Id
END

GO
/****** Object:  StoredProcedure [dbo].[spAddReceita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAddReceita]
@Receita_id int out,
@NomeRec nvarchar(50),
@Descricao ntext,
@Duracao nvarchar(50),
@Rating tinyint,
@Dificuldade tinyint,
@Categoria nvarchar(10),
@Utilizador_id int
AS
BEGIN
INSERT INTO Receita (NomeRec, Dificuldade, Descricao, Duracao, Rating, Categoria, Utilizador_id )
VALUES (@NomeRec, @Dificuldade, @Descricao, @Duracao, @Rating, @Categoria, @Utilizador_id)
SELECT @Receita_id = SCOPE_IDENTITY()
RETURN @Receita_id
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteAccount]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteAccount]
@Account_id int
AS
BEGIN
DELETE FROM Account
WHERE @Account_id = Account_Id
END

EXEC spDeleteAccount
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCategoria]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteCategoria]
@Categoria_id int
AS
BEGIN
DELETE FROM Categoria
WHERE Categoria_Id = @Categoria_id
END

EXEC spDeleteCategoria
GO
/****** Object:  StoredProcedure [dbo].[spDeleteComentario]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteComentario]
@Comentario_id int
AS
BEGIN
DELETE FROM Comentario
WHERE Comentario_Id = @Comentario_id
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteIngrediente]
@Ingrediente_id int
AS
BEGIN
DELETE FROM Ingrediente
WHERE Ingrediente_Id = @Ingrediente_id
END

EXEC spDeleteIngrediente

GO
/****** Object:  StoredProcedure [dbo].[spDeleteReceita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteReceita]
@Receita_id int
AS
BEGIN
DELETE FROM Receita
WHERE Receita_id = @Receita_id
END

EXEC spDeleteReceita


GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteUser]
@Utilizador_id int
AS
BEGIN
DELETE FROM Utilizador
WHERE Utilizador_id = @Utilizador_id
END

EXEC spDeleteUser
GO
/****** Object:  StoredProcedure [dbo].[spGetAccountById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAccountById]
@id int
AS
BEGIN
	SELECT * FROM Account
	WHERE Account_Id = @id
END

EXEC spGetAccountById
GO
/****** Object:  StoredProcedure [dbo].[spGetAllAccount]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllAccount]
AS
BEGIN
SELECT * FROM Account
END

EXEC spGetAllAccount
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCategoria]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllCategoria]
AS
BEGIN
SELECT * FROM Categoria
END

EXEC spGetAllCategoria
GO
/****** Object:  StoredProcedure [dbo].[spGetAllComentario]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllComentario]
AS
BEGIN
SELECT * FROM Comentario
END

EXEC spGetAllComentario
GO
/****** Object:  StoredProcedure [dbo].[spGetAllIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllIngrediente]
AS
BEGIN
SELECT * FROM Ingrediente
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllReceita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllReceita]
AS
BEGIN
SELECT * FROM Receita
END

EXEC spGetAllReceita
GO
/****** Object:  StoredProcedure [dbo].[spGetAllUtilizador]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllUtilizador]
AS
BEGIN
SELECT * FROM Utilizador
END

EXEC spGetAllUtilizador
GO
/****** Object:  StoredProcedure [dbo].[spGetCategoriaById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetCategoriaById]
@id int
AS
BEGIN
	SELECT * FROM Categoria
	WHERE Categoria_Id = @id
END

EXEC spGetCategoriaById
GO
/****** Object:  StoredProcedure [dbo].[spGetComentarioById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetComentarioById]
@id int
AS
BEGIN
	SELECT * FROM Comentario
	WHERE Comentario_Id = @id
END

EXEC spGetComentarioById
GO
/****** Object:  StoredProcedure [dbo].[spGetFavRecipesByUserId]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetFavRecipesByUserId]
@Utilizador_id int
AS
BEGIN
SELECT * FROM RecipeUser 
WHERE Utilizador_id = @Utilizador_id
END
GO
/****** Object:  StoredProcedure [dbo].[spGetIngredienteById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetIngredienteById]
@id int
AS
BEGIN
	SELECT * FROM Ingrediente
	WHERE Ingrediente_Id = @id
END

EXEC spGetIngredienteById
GO
/****** Object:  StoredProcedure [dbo].[spGetLoggedInUser]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetLoggedInUser]
@MembershipUserName nvarchar(50)
AS
BEGIN
SELECT * FROM Utilizador
WHERE MembershipUserName = @MembershipUsername
END
GO
/****** Object:  StoredProcedure [dbo].[spGetReceitaById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetReceitaById]
@Receita_id int
AS
BEGIN
	SELECT * FROM Receita
	WHERE Receita_id = @Receita_id
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUsersByMembership]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetUsersByMembership]
@MembershipUsername nvarchar(50)
AS
BEGIN
SELECT * FROM Utilizador
WHERE MembershipUserName = @MembershipUsername
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUtilizadorById]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetUtilizadorById]
@id int
AS
BEGIN
	SELECT * FROM Utilizador
	WHERE Utilizador_id = @id
END

EXEC spGetUtilizadorById
GO
/****** Object:  StoredProcedure [dbo].[spInsertUserRecipeId]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertUserRecipeId]
@Utilizador_id int,
@Receita_id int
AS
BEGIN
INSERT INTO RecipeUser ( Utilizador_id, Receita_id )
VALUES ( @Utilizador_id, @Receita_id )
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertUserWithMembership]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertUserWithMembership]
@Nome nvarchar(50),
@Email nvarchar(50),
@Birthdate Date,
@MembershipUsername nvarchar(50)
AS
BEGIN
INSERT INTO Utilizador ( NomeUser, Email, BirthDate, MembershipUserName, IsRegisted, IsAdmin )
VALUES ( @Nome, @Email, @Birthdate, @MembershipUsername, 1, 0 )
SELECT cast(SCOPE_IDENTITY() as int)
END
GO
/****** Object:  StoredProcedure [dbo].[spReadRecipeId]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spReadRecipeId]
@Utilizador_id int
AS
BEGIN
SELECT Receita_id FROM RecipeUser
WHERE Utilizador_id = @Utilizador_id
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchReceita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSearchReceita]
@NomeRec nvarchar(50) = NULL,
@Categoria nvarchar(50) = NULL
AS
BEGIN
SELECT * FROM Receita WHERE
	( NomeRec = @NomeRec OR @NomeRec IS NULL ) AND
	( Categoria = @Categoria OR @Categoria IS NULL )
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateAccount]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateAccount]
@Account_id int,
@Username nvarchar(50),
@Password nvarchar(50),
@Utilizador_id int
AS 
BEGIN
	UPDATE Account
SET Username = @Username,
	[Password] = @Password,
	Utilizador_Id = @Utilizador_id
WHERE Account_Id = @Account_id
END

EXEC spUpdateAccount
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCategoria]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateCategoria]
@Categoria_id int,
@ValorCategoria nvarchar(50)
AS
BEGIN
UPDATE Categoria
SET ValorCategoria = @ValorCategoria
WHERE Categoria_id = @Categoria_id
END

EXEC spUpdateCategoria
GO
/****** Object:  StoredProcedure [dbo].[spUpdateComentario]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateComentario]
@Comentario_id int,
@ValorComentario ntext
AS
BEGIN
UPDATE Comentario
SET ValorComentario = @ValorComentario
WHERE Comentario_Id = @Comentario_id
END

EXEC spUpdateComentario
GO
/****** Object:  StoredProcedure [dbo].[spUpdateIngrediente]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateIngrediente]
@Ingrediente_id int,
@Unidade nvarchar(50),
@Produto nvarchar(50)
AS
BEGIN
UPDATE Ingrediente
SET Unidade = @Unidade,
	Produto = @Produto
WHERE Ingrediente_Id = @Ingrediente_id
END

EXEC spUpdateIngrediente

GO
/****** Object:  StoredProcedure [dbo].[spUpdateReceita]    Script Date: 16/12/2020 00:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateReceita]
@Receita_id int,
@NomeRec nvarchar(50),
@Descricao ntext,
@Duracao bit,
@Rating bit,
@Categoria nvarchar(10)
AS
BEGIN
	UPDATE Receita
SET  NomeRec = @NomeRec,
	 Descricao = @Descricao,
	 Duracao = @Duracao,
	 Rating = @Rating,
	 Categoria = @Categoria
WHERE Receita_id = @Receita_id
END

EXEC spUpdateReceita
		







GO
USE [master]
GO
ALTER DATABASE [RM_SiteReceitas] SET  READ_WRITE 
GO

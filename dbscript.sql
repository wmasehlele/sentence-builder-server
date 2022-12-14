
/*
***********************************************************************************************
*** Minimum required sql server version - Microsoft SQL Server 2017 Developer Edition (64-bit)
***********************************************************************************************
*/

USE [master]
GO
/****** Object:  Database [sentencebuilder]    Script Date: 16/11/2022 12:25:35 ******/
CREATE DATABASE [sentencebuilder]
ALTER DATABASE [sentencebuilder] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sentencebuilder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sentencebuilder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sentencebuilder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sentencebuilder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sentencebuilder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sentencebuilder] SET ARITHABORT OFF 
GO
ALTER DATABASE [sentencebuilder] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sentencebuilder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sentencebuilder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sentencebuilder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sentencebuilder] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sentencebuilder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sentencebuilder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sentencebuilder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sentencebuilder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sentencebuilder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sentencebuilder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sentencebuilder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sentencebuilder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sentencebuilder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sentencebuilder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sentencebuilder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sentencebuilder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sentencebuilder] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sentencebuilder] SET  MULTI_USER 
GO
ALTER DATABASE [sentencebuilder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sentencebuilder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sentencebuilder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sentencebuilder] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sentencebuilder] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sentencebuilder', N'ON'
GO
ALTER DATABASE [sentencebuilder] SET QUERY_STORE = OFF
GO
USE [sentencebuilder]
GO
/****** Object:  Table [dbo].[sentences]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sentences](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sentence] [text] NULL,
 CONSTRAINT [PK_sentences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[word_types]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[word_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[word_type] [nchar](100) NULL,
 CONSTRAINT [PK_word_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[words]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[words](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[word_type_id] [int] NULL,
	[word] [nchar](100) NULL,
 CONSTRAINT [PK_words] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sentences] ON 

INSERT [dbo].[sentences] ([id], [sentence]) VALUES (4, N'new sentence')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (5, N'new sentence')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (14, N'Achievable achievable achievable achievable')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (15, N'Acceptable acceptable acceptable acceptable acceptable')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (18, N'Acceptable achievable active avoidable believable')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (24, N'Creatively imitatively monotonously expectedly comfortably')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (26, N'Acceptable acceptable acceptable achievable achievable achievable achievable achievable achievable achievable')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (27, N'Achievable achievable achievable')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (28, N'Cheerfully cheerfully actively actively actively')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (29, N'Clearly clearly clearly clearly clearly')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (30, N'Behind behind behind behind behind along')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (31, N'Herself herself herself herself herself herself herself')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (32, N'Among among among among among across')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (33, N'Fourth fourth fourth fourth fourth eighth an')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (34, N'Achieve achieve achieve achieve achieve achieve achieve')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (35, N'Behind behind behind behind behind among among')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (37, N'Actively creatively creditably dangerously hopefully')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (38, N'Actively carefully actively actively cheerfully')
INSERT [dbo].[sentences] ([id], [sentence]) VALUES (39, N'Accept achieve adjust admire amazed amass')
SET IDENTITY_INSERT [dbo].[sentences] OFF
GO
SET IDENTITY_INSERT [dbo].[word_types] ON 

INSERT [dbo].[word_types] ([id], [word_type]) VALUES (1, N'Noun                                                                                                ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (2, N'Verb                                                                                                ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (3, N'Adjective                                                                                           ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (4, N'Adverb                                                                                              ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (5, N'Pronoun                                                                                             ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (6, N'Preposition                                                                                         ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (7, N'Conjunction                                                                                         ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (8, N'Determiner                                                                                          ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (9, N'Exclamation                                                                                         ')
INSERT [dbo].[word_types] ([id], [word_type]) VALUES (10, N'Punctuation                                                                                         ')
SET IDENTITY_INSERT [dbo].[word_types] OFF
GO
SET IDENTITY_INSERT [dbo].[words] ON 

INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (10, 1, N'acceptance                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (11, 1, N'achievement                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (12, 1, N'action                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (13, 1, N'activity                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (14, 1, N'activeness                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (15, 1, N'addition                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (16, 1, N'adjustment                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (17, 1, N'admiration                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (18, 1, N'advice                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (19, 1, N'mass                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (20, 1, N'amazement                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (21, 1, N'amusement                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (22, 1, N'annoyance                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (23, 1, N'approach                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (24, 1, N'attention                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (25, 1, N'attraction                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (26, 1, N'avoidance                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (27, 1, N'belief                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (28, 1, N'blackness                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (29, 1, N'blood                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (30, 1, N'boredom                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (31, 1, N'botheration                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (32, 1, N'breath                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (33, 1, N'burial                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (34, 1, N'care                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (35, 1, N'challenge                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (36, 1, N'chase                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (37, 1, N'cheerfulness                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (38, 1, N'choice                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (39, 1, N'clarity                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (40, 1, N'collection                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (41, 1, N'comfort                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (42, 1, N'complexity                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (43, 1, N'confusion                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (44, 1, N'consideration                                                                                       ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (45, 1, N'consolation                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (46, 1, N'continuity                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (47, 1, N'craze                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (48, 1, N'creation                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (49, 1, N'credit                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (50, 1, N'cure                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (51, 1, N'curse                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (52, 1, N'damage                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (53, 1, N'deafness                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (54, 1, N'decision                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (55, 1, N'decoration                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (56, 1, N'delight                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (57, 1, N'demand                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (58, 1, N'derivation                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (59, 1, N'deserve                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (60, 1, N'destruction                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (61, 1, N'development                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (62, 1, N'death                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (63, 1, N'difference                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (64, 1, N'disturbance                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (65, 1, N'dust                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (66, 1, N'education                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (67, 1, N'embarrassment                                                                                       ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (68, 1, N'power                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (69, 1, N'emptiness                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (70, 1, N'circle                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (71, 1, N'courage                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (72, 1, N'danger                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (73, 1, N'enthusiasm                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (74, 1, N'number                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (75, 1, N'envy                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (76, 1, N'evaporation                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (77, 1, N'expectation                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (78, 1, N'explanation                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (79, 1, N'exploration                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (80, 1, N'fascination                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (81, 1, N'food                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (82, 1, N'firmness                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (83, 1, N'flight                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (84, 1, N'force                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (85, 1, N'glory                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (86, 1, N'growth                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (87, 1, N'harm                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (88, 1, N'hatred                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (89, 1, N'health                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (90, 1, N'hope                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (91, 1, N'identification                                                                                      ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (92, 1, N'identity                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (93, 1, N'imitation                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (94, 1, N'impression                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (95, 1, N'inclusion                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (96, 1, N'indication                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (97, 1, N'information                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (98, 1, N'habitat                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (99, 1, N'injury                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (100, 1, N'inquiry                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (101, 1, N'instruction                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (102, 1, N'insult                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (103, 1, N'intention                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (104, 1, N'interference                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (105, 1, N'introduction                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (106, 1, N'invention                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (107, 1, N'irritation                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (108, 1, N'leadership                                                                                          ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (109, 1, N'life                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (110, 1, N'life                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (111, 1, N'liveliness                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (112, 1, N'loss                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (113, 1, N'madness                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (114, 1, N'migration                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (115, 1, N'modernity                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (116, 1, N'moisture                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (117, 1, N'monotony                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (118, 1, N'movement                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (119, 1, N'narrowness                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (120, 1, N'nationality                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (121, 1, N'observation                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (122, 1, N'ownership                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (123, 1, N'performance                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (124, 1, N'permission                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (125, 1, N'persuasion                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (126, 1, N'pleasure                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (127, 1, N'popularity                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (128, 1, N'quickness                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (129, 1, N'redness                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (130, 1, N'sadness                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (131, 1, N'security                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (132, 1, N'scene                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (133, 1, N'sight                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (134, 1, N'speed                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (135, 1, N'whiteness                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (136, 1, N'badness                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (137, 2, N'accept                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (138, 2, N'achieve                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (139, 2, N'act                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (140, 2, N'act                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (141, 2, N'act                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (142, 2, N'add                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (143, 2, N'adjust                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (144, 2, N'admire                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (145, 2, N'advise                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (146, 2, N'amass                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (147, 2, N'amazed                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (148, 2, N'amuse                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (149, 2, N'annoy                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (150, 2, N'approach                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (151, 2, N'attend                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (152, 2, N'attract                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (153, 2, N'avoid                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (154, 2, N'believe                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (155, 2, N'blacken                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (156, 2, N'bleed                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (157, 2, N'bore                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (158, 2, N'bother                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (159, 2, N'breathe                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (160, 2, N'bury                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (161, 2, N'care                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (162, 2, N'challenge                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (163, 2, N'chase                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (164, 2, N'cheer                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (165, 2, N'choose                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (166, 2, N'clear                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (167, 2, N'collect                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (168, 2, N'comfort                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (169, 2, N'complex                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (170, 2, N'confuse                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (171, 2, N'consider                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (172, 2, N'console                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (173, 2, N'continue                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (174, 2, N'craze                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (175, 2, N'create                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (176, 2, N'credit                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (177, 2, N'cure                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (178, 2, N'curse                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (179, 2, N'damage                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (180, 2, N'deafen                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (181, 2, N'decide                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (182, 2, N'decorate                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (183, 2, N'delight                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (184, 2, N'demand                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (185, 2, N'derive                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (186, 2, N'deserve                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (187, 2, N'destroy                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (188, 2, N'develop                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (189, 2, N'die                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (190, 2, N'differ                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (191, 2, N'disturb                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (192, 2, N'dust                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (193, 2, N'educate                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (194, 2, N'embarrass                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (195, 2, N'empower                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (196, 2, N'empty                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (197, 2, N'encircle                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (198, 2, N'encourage                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (199, 2, N'endanger                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (200, 2, N'enthuse                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (201, 2, N'enumerate                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (202, 2, N'envy                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (203, 2, N'evaporate                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (204, 2, N'expect                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (205, 2, N'explain                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (206, 2, N'explore                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (207, 2, N'fascinate                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (208, 2, N'feed                                                                                                ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (209, 2, N'firm                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (210, 2, N'fly                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (211, 2, N'force                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (212, 2, N'glorify                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (213, 2, N'grow                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (214, 2, N'harm                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (215, 2, N'hate                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (216, 2, N'heal                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (217, 2, N'hope                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (218, 2, N'identify                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (219, 2, N'identify                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (220, 2, N'imitate                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (221, 2, N'impress                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (222, 2, N'include                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (223, 2, N'indicate                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (224, 2, N'inform                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (225, 2, N'inhabit                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (226, 2, N'injure                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (227, 2, N'inquire                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (228, 2, N'instruct                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (229, 2, N'insult                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (230, 2, N'intent                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (231, 2, N'interfere                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (232, 2, N'introduce                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (233, 2, N'invent                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (234, 2, N'irritate                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (235, 2, N'lead                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (236, 2, N'live                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (237, 2, N'live                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (238, 2, N'live                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (239, 2, N'lose                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (240, 2, N'madden                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (241, 2, N'migrate                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (242, 2, N'modernise                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (243, 2, N'moisten                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (244, 2, N'monotonies                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (245, 2, N'move                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (246, 2, N'narrow                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (247, 2, N'nationalise                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (248, 2, N'observe                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (249, 2, N'own                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (250, 2, N'perform                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (251, 2, N'permit                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (252, 2, N'persuade                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (253, 2, N'please                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (254, 2, N'popularise                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (255, 2, N'quicken                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (256, 2, N'redden                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (257, 2, N'sadden                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (258, 2, N'secure                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (259, 2, N'see                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (260, 2, N'see                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (261, 2, N'speed                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (262, 2, N'whiten                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (263, 3, N'acceptable                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (264, 3, N'achievable                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (265, 3, N'active                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (266, 3, N'active                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (267, 3, N'active                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (268, 3, N'additional                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (269, 3, N'adjustable                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (270, 3, N'admirable                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (271, 3, N'advisable                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (272, 3, N'massive                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (273, 3, N'amazing                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (274, 3, N'amusing                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (275, 3, N'annoying                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (276, 3, N'approachable                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (277, 3, N'attentive                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (278, 3, N'attractive                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (279, 3, N'avoidable                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (280, 3, N'believable                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (281, 3, N'black                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (282, 3, N'bloody                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (283, 3, N'boring                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (284, 3, N'bothering                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (285, 3, N'breathing                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (286, 3, N'buried                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (287, 3, N'careful                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (288, 3, N'challenging                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (289, 3, N'chasing                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (290, 3, N'cheerful                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (291, 3, N'chosen                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (292, 3, N'clear                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (293, 3, N'collective                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (294, 3, N'comfortable                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (295, 3, N'complex                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (296, 3, N'confused                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (297, 3, N'considerable                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (298, 3, N'consoled                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (299, 3, N'continuous                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (300, 3, N'crazy                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (301, 3, N'creative                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (302, 3, N'creditable                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (303, 3, N'curable                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (304, 3, N'cursed                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (305, 3, N'damaged                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (306, 3, N'deaf                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (307, 3, N'decisive                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (308, 3, N'decorative                                                                                          ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (309, 3, N'delightful                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (310, 3, N'demanding                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (311, 3, N'derivative                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (312, 3, N'deserving                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (313, 3, N'destructive                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (314, 3, N'developing                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (315, 3, N'dead                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (316, 3, N'different                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (317, 3, N'disturbing                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (318, 3, N'dusty                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (319, 3, N'educative                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (320, 3, N'embarrassing                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (321, 3, N'powerful                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (322, 3, N'empty                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (323, 3, N'circular                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (324, 3, N'courageous                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (325, 3, N'dangerous                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (326, 3, N'enthusiastic                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (327, 3, N'numerable                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (328, 3, N'envious                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (329, 3, N'evaporating                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (330, 3, N'expected                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (331, 3, N'explainable                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (332, 3, N'exploring                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (333, 3, N'fascinating                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (334, 4, N'actively                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (335, 4, N'actively                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (336, 4, N'actively                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (337, 4, N'massively                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (338, 4, N'carefully                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (339, 4, N'cheerfully                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (340, 4, N'clearly                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (341, 4, N'collectively                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (342, 4, N'comfortably                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (343, 4, N'considerably                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (344, 4, N'continuously                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (345, 4, N'crazily                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (346, 4, N'creatively                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (347, 4, N'creditably                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (348, 4, N'delightfully                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (349, 4, N'destructively                                                                                       ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (350, 4, N'differently                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (351, 4, N'powerfully                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (352, 4, N'circularly                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (353, 4, N'courageously                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (354, 4, N'dangerously                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (355, 4, N'enviously                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (356, 4, N'expectedly                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (357, 4, N'firmly                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (358, 4, N'forcefully                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (359, 4, N'gloriously                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (360, 4, N'growingly                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (361, 4, N'harmfully                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (362, 4, N'hatefully                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (363, 4, N'healthily                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (364, 4, N'hopefully                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (365, 4, N'imitatively                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (366, 4, N'impressively                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (367, 4, N'inclusively                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (368, 4, N'indicatively                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (369, 4, N'injuriously                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (370, 4, N'insultingly                                                                                         ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (371, 4, N'intentionally                                                                                       ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (372, 4, N'irritatingly                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (373, 4, N'leadingly                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (374, 4, N'livingly                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (375, 4, N'livingly                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (376, 4, N'livingly                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (377, 4, N'madly                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (378, 4, N'monotonously                                                                                        ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (379, 4, N'movingly                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (380, 4, N'nationwide                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (381, 4, N'quickly                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (382, 4, N'sadly                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (383, 4, N'securely                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (384, 4, N'speedily                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (385, 4, N'badly                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (386, 5, N'I                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (387, 5, N'you                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (388, 5, N'he                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (389, 5, N'she                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (390, 5, N'it                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (391, 5, N'we                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (392, 5, N'you                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (393, 5, N'they                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (394, 5, N'me                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (395, 5, N'him                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (396, 5, N'her                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (397, 5, N'us                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (398, 5, N'them                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (399, 5, N'my                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (400, 5, N'your                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (401, 5, N'his                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (402, 5, N'its                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (403, 5, N'our                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (404, 5, N'their                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (405, 5, N'mine                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (406, 5, N'yours                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (407, 5, N'his                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (408, 5, N'hers                                                                                                ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (409, 5, N'ours                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (410, 5, N'theirs                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (411, 5, N'myself                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (412, 5, N'yourself                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (413, 5, N'himself                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (414, 5, N'herself                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (415, 5, N'itself                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (416, 5, N'ourselfs                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (417, 5, N'yourselves                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (418, 5, N'themselves                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (419, 6, N'about                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (420, 6, N'against                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (421, 6, N'at                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (422, 6, N'beyond                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (423, 6, N'despite                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (424, 6, N'following                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (425, 6, N'including                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (426, 6, N'of                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (427, 6, N'out                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (428, 6, N'since                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (429, 6, N'under                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (430, 6, N'up to                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (431, 6, N'above                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (432, 6, N'along                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (433, 6, N'before                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (434, 6, N'but                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (435, 6, N'down                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (436, 6, N'for                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (437, 6, N'into                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (438, 6, N'off                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (439, 6, N'over                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (440, 6, N'throughout                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (441, 6, N'until                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (442, 6, N'with                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (443, 6, N'across                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (444, 6, N'among                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (445, 6, N'behind                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (446, 6, N'by                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (447, 6, N'during                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (448, 6, N'from                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (449, 6, N'like                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (450, 6, N'on                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (451, 6, N'past                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (452, 6, N'to                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (453, 6, N'up                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (454, 6, N'within                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (455, 6, N'after                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (456, 6, N'around                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (457, 6, N'between                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (458, 6, N'concerning                                                                                          ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (459, 6, N'except                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (460, 6, N'in                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (461, 6, N'near                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (462, 6, N'onto                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (463, 6, N'plus                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (464, 6, N'towards                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (465, 6, N'upon                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (466, 6, N'without                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (467, 7, N'for                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (468, 7, N'and                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (469, 7, N'nor                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (470, 7, N'but                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (471, 7, N'or                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (472, 7, N'yet                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (473, 7, N'so                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (474, 8, N'a                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (475, 8, N'an                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (476, 8, N'the                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (477, 8, N'my                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (478, 8, N'your                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (479, 8, N'his                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (480, 8, N'her                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (481, 8, N'its                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (482, 8, N'our                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (483, 8, N'their                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (484, 8, N'whose                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (485, 8, N'this                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (486, 8, N'that                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (487, 8, N'these                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (488, 8, N'those                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (489, 8, N'one                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (490, 8, N'two                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (491, 8, N'three                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (492, 8, N'four                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (493, 8, N'five                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (494, 8, N'six                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (495, 8, N'seven                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (496, 8, N'eight                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (497, 8, N'nine                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (498, 8, N'ten                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (499, 8, N'first                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (500, 8, N'second                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (501, 8, N'third                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (502, 8, N'fourth                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (503, 8, N'fifth                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (504, 8, N'seventh                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (505, 8, N'eighth                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (506, 8, N'nineth                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (507, 8, N'tenth                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (508, 8, N'a few                                                                                               ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (509, 8, N'another                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (510, 8, N'several                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (511, 8, N'much                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (512, 8, N'many                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (513, 8, N'a lot of                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (514, 8, N'any                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (515, 8, N'some                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (516, 8, N'very                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (517, 9, N'ah                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (518, 9, N'oh                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (519, 9, N'oof                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (520, 9, N'phew                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (521, 9, N'whew                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (522, 9, N'aha                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (523, 9, N'boo-yah                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (524, 9, N'ho-ho                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (525, 9, N'hurray                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (526, 9, N'rah                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (527, 9, N'ta-da                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (528, 9, N'phoar                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (529, 9, N'whee                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (530, 9, N'whoopee                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (531, 9, N'woo                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (532, 9, N'yay                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (533, 9, N'yee-haw                                                                                             ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (534, 9, N'yippee                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (535, 9, N'yo-ho-ho                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (536, 9, N'yoow                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (537, 9, N'eepgolly                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (538, 9, N'ha                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (539, 9, N'hey                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (540, 9, N'huh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (541, 9, N'now                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (542, 9, N'whoa                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (543, 9, N'wow                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (544, 9, N'yikes                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (545, 9, N'zoinks                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (546, 9, N'zowie                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (547, 9, N'hardy-har-har                                                                                       ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (548, 9, N'ooh-la-la                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (549, 9, N'ha-ha                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (550, 9, N'hehe                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (551, 9, N'mmmm                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (552, 9, N'mwah                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (553, 9, N'ooh-la-la                                                                                           ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (554, 9, N'yum                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (555, 9, N'mh-hmm                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (556, 9, N'uh-huh                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (557, 9, N'yep                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (558, 9, N'er                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (559, 9, N'uh-huh                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (560, 9, N'ummm                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (561, 9, N'ahem                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (562, 9, N'hist                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (563, 9, N'psst                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (564, 9, N'shh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (565, 9, N'achoo                                                                                               ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (566, 9, N'eh?                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (567, 9, N'ho-hum                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (568, 9, N'hup                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (569, 9, N'poof                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (570, 9, N'strreeek                                                                                            ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (571, 9, N'uhm                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (572, 9, N'ack                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (573, 9, N'bah                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (574, 9, N'ew                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (575, 9, N'gak                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (576, 9, N'lck                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (577, 9, N'ugh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (578, 9, N'yuck                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (579, 9, N'blah                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (580, 9, N'pff                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (581, 9, N'zzzz                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (582, 9, N'aw                                                                                                  ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (583, 9, N'feh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (584, 9, N'shucks                                                                                              ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (585, 9, N'arg                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (586, 9, N'gee                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (587, 9, N'hmph                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (588, 9, N'duh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (589, 9, N'ohh                                                                                                 ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (590, 9, N'pooh                                                                                                ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (591, 10, N'.                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (592, 10, N'?                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (593, 10, N'!                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (594, 10, N',                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (595, 10, N';                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (596, 10, N':                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (597, 10, N'-                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (598, 10, N'(                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (599, 10, N')                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (600, 10, N'[                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (601, 10, N']                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (602, 10, N'{                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (603, 10, N'}                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (605, 10, N'"                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (606, 10, N'%                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (607, 10, N'@                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (608, 10, N'#                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (609, 10, N'^                                                                                                   ')
GO
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (610, 10, N'&                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (611, 10, N'*                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (612, 10, N'+                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (613, 10, N'=                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (614, 10, N'_                                                                                                   ')
INSERT [dbo].[words] ([id], [word_type_id], [word]) VALUES (615, 10, N'\                                                                                                   ')
SET IDENTITY_INSERT [dbo].[words] OFF
GO
ALTER TABLE [dbo].[words]  WITH CHECK ADD  CONSTRAINT [FK_words_word_types] FOREIGN KEY([word_type_id])
REFERENCES [dbo].[word_types] ([id])
GO
ALTER TABLE [dbo].[words] CHECK CONSTRAINT [FK_words_word_types]
GO
/****** Object:  StoredProcedure [dbo].[sp_manage_sentences]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_manage_sentences] 
	-- Add the parameters for the stored procedure here
	@id INT = 0,
	@sentence NVARCHAR(MAX) = NULL,
	@operation NCHAR(15) = 'select'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF UPPER(TRIM(@operation)) = 'INSERT' AND TRIM(@sentence) IS NOT NULL
	BEGIN
		INSERT INTO [dbo].[sentences] (
			[sentence]
		) VALUES ( 
			TRIM(@sentence)
		)
		SET @id = SCOPE_IDENTITY()
	END

	IF UPPER(TRIM(@operation)) = 'UPDATE' AND @id > 0
	BEGIN
		UPDATE [dbo].[sentences] SET [sentence] = @sentence
		WHERE [id] = @id
	END

	IF UPPER(TRIM(@operation)) = 'DELETE' AND @id > 0
	BEGIN
		DELETE FROM [dbo].[sentences] WHERE [id] = @id
	END

	IF UPPER(TRIM(@operation)) = 'SELECT' OR UPPER(TRIM(@operation)) = 'UPDATE' OR UPPER(TRIM(@operation)) = 'INSERT'
	BEGIN
		SELECT 
			 [id]
			,[sentence]
		FROM [dbo].[sentences]
		WHERE [id] = CASE WHEN @id > 0 THEN @id ELSE [id] END
		ORDER BY 1 DESC
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_manage_word_types]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_manage_word_types] 
	-- Add the parameters for the stored procedure here
	 @id INT = 0
	,@word_type NCHAR(100) = NULL
	,@operation NCHAR(15) = 'select'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF UPPER(@operation) = 'INSERT' AND @word_type IS NOT NULL
	BEGIN
		INSERT INTO [dbo].[word_types] (
			[word_type]
		) VALUES (
			@word_type
		)
		
		--SET @id = SCOPE_IDENTITY()
	END
	
	IF UPPER(@operation) = 'UPDATE' AND @id > 0 AND @word_type IS NOT NULL
	BEGIN
		UPDATE [dbo].[word_types] SET
			[word_type] = @word_type		 
		WHERE [id] = @id 
	END

	IF UPPER(@operation) = 'DELETE' AND @id > 0
	BEGIN
		DELETE FROM [dbo].[word_types] WHERE [id] = @id 
	END

	IF UPPER(@operation) = 'SELECT' OR UPPER(@operation) = 'UPDATE' OR UPPER(@operation) = 'INSERT'
	BEGIN
		SELECT
			 [id]
			,[word_type]
		FROM [dbo].[word_types]
		WHERE [id] = CASE WHEN @id > 0 THEN @id ELSE [id] END 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_manage_words]    Script Date: 16/11/2022 12:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_manage_words]
	-- Add the parameters for the stored procedure here
	 @id INT = 0
	,@word_type_id INT = 0
	,@word NCHAR(100) = NULL
	,@operation NCHAR(15) = 'select'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF UPPER(TRIM(@operation)) = 'INSERT' AND @word IS NOT NULL AND @word_type_id > 0
	BEGIN
		INSERT INTO [dbo].[words] (
			 [word_type_id]
			,[word]
		) VALUES (
			 @word_type_id
			,@word
		)
		
		SET @id = SCOPE_IDENTITY()
		SET @word_type_id = 0
	END

	IF UPPER(TRIM(@operation)) = 'UPDATE' AND @id > 0 AND @word IS NOT NULL
	BEGIN
		UPDATE [dbo].[words] SET 
			 [word_type_id] = CASE WHEN @word_type_id > 0 THEN @word_type_id ELSE [word_type_id] END
			,[word] = @word
		FROM [dbo].[words]	
		WHERE [id] = @id

		SET @word_type_id = 0
	END

	IF UPPER(TRIM(@operation)) = 'DELETE' AND @id > 0
	BEGIN
		DELETE FROM [dbo].[words] WHERE [id] = @id 
	END
	
	IF UPPER(TRIM(@operation)) = 'SELECT' OR UPPER(TRIM(@operation)) = 'UPDATE' OR UPPER(TRIM(@operation)) = 'INSERT'
	BEGIN
		SELECT
			 [id]
			,[word_type_id]
			,[word]
		FROM [dbo].[words]
		WHERE [id] = CASE WHEN @id > 0 THEN @id ELSE [id] END
		AND [word_type_id] = CASE WHEN @word_type_id > 0 THEN @word_type_id ELSE [word_type_id] END
		ORDER BY [word] 
	END

END
GO
USE [master]
GO
ALTER DATABASE [sentencebuilder] SET  READ_WRITE 
GO

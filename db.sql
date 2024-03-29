USE [master]
GO
/****** Object:  Database [P0004]    Script Date: 5/31/2017 9:14:39 AM ******/
CREATE DATABASE [P0004]
GO
ALTER DATABASE [P0004] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P0004].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P0004] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P0004] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P0004] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P0004] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P0004] SET ARITHABORT OFF 
GO
ALTER DATABASE [P0004] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P0004] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P0004] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P0004] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P0004] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P0004] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P0004] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P0004] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P0004] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P0004] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P0004] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P0004] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P0004] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P0004] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P0004] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P0004] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P0004] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P0004] SET RECOVERY FULL 
GO
ALTER DATABASE [P0004] SET  MULTI_USER 
GO
ALTER DATABASE [P0004] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P0004] SET DB_CHAINING OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'P0004', N'ON'
GO
USE [P0004]
GO
/****** Object:  Table [dbo].[ArticleTBL]    Script Date: 5/31/2017 9:14:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleTBL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[content] [nvarchar](2000) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[image] [nvarchar](200) NULL,
 CONSTRAINT [PK_ArticleTBL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ArticleTBL] ON 

INSERT [dbo].[ArticleTBL] ([id], [title], [content], [author], [time], [image]) VALUES (2, N'Making security feeds smarter via machine learning', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'Benjamin Cher', CAST(N'2017-05-20 14:03:15.000' AS DateTime), N'/img/i1.jpg')
INSERT [dbo].[ArticleTBL] ([id], [title], [content], [author], [time], [image]) VALUES (3, N'Elevenia tawarkan layanan Mokado', N'Donec porttitor mattis est, quis luctus erat viverra ac. Suspendisse et mi lectus. Maecenas nunc neque, molestie vel odio quis, pretium gravida felis. Curabitur faucibus orci quis feugiat elementum. Nam sed lacus cursus, luctus enim sed, efficitur diam. Quisque pharetra consequat ligula, eu imperdiet quam dictum ut. Sed molestie lorem eleifend, dictum ex non, condimentum sapien. Sed quis egestas ante. Integer interdum sodales est, nec mattis leo laoreet sed. Pellentesque non elementum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;

Suspendisse ultrices, mauris ut maximus suscipit, ipsum tellus dictum nisl, vitae tempus lectus sem at arcu. Sed ex magna, blandit in tortor vel, consequat suscipit nulla. Proin eget dictum nisi. Cras at egestas lacus. Donec urna arcu, cursus vitae tellus vitae, laoreet interdum nisl. Vivamus porta magna ac erat iaculis, non vulputate ante posuere. Pellentesque vitae ullamcorper dolor. Aenean lacinia eros pharetra pellentesque porta. In hac habitasse platea dictumst. Pellentesque pellentesque lectus ac dapibus porttitor.

Suspendisse convallis diam convallis, lobortis erat vel, tempor dui. Morbi molestie orci sem. Curabitur turpis nibh, sodales ut arcu a, gravida varius velit. Aliquam vitae augue mauris. Nullam auctor ut purus eget malesuada. Ut nec metus ut lorem varius varius eu quis velit. In accumsan fringilla neque, pretium viverra metus imperdiet at.', N'Alexander II', CAST(N'2017-01-25 06:25:01.000' AS DateTime), N'/img/i1.jpg')
INSERT [dbo].[ArticleTBL] ([id], [title], [content], [author], [time], [image]) VALUES (4, N'Preventing bullshit from everywhere', N'Suspendisse erat odio, aliquet sit amet viverra imperdiet, sodales a nulla. Morbi sodales est nibh, sit amet molestie lacus eleifend eget. Praesent dapibus, magna ac posuere volutpat, nisi libero sagittis elit, ut vulputate ipsum lectus vel magna. Suspendisse ultricies, nulla ac ullamcorper consequat, nisi massa aliquet enim, in varius lectus metus eget elit. Morbi molestie et nibh id condimentum. Donec vel dui at erat tristique elementum. Fusce id feugiat erat. Donec sed tellus metus.

Ut sollicitudin facilisis orci, nec sodales ligula rutrum vel. Cras dictum tempus sapien quis posuere. Phasellus blandit, nibh eget commodo dignissim, metus orci dapibus massa, vitae efficitur metus augue sit amet mauris. Mauris consequat mattis maximus. In convallis auctor ultricies. Mauris enim elit, lobortis sit amet faucibus a, lobortis a sapien. Nam vitae arcu vel sapien consectetur porta. Vestibulum efficitur est vel justo consectetur, sed tincidunt urna eleifend. Nam euismod faucibus nisl at placerat.', N'Toet', CAST(N'2017-05-12 12:01:00.000' AS DateTime), N'/img/i1.jpg')
INSERT [dbo].[ArticleTBL] ([id], [title], [content], [author], [time], [image]) VALUES (5, N'Best in the worst', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', N'Mr. Nobody', CAST(N'2017-05-16 05:05:05.000' AS DateTime), N'/img/i1.jpg')
SET IDENTITY_INSERT [dbo].[ArticleTBL] OFF
USE [master]
GO
ALTER DATABASE [P0004] SET  READ_WRITE 
GO

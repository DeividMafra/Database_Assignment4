USE [master]
GO
/****** Object:  Database [INSURANCE_COMPANY]    Script Date: 2019-03-25 8:49:12 PM ******/
CREATE DATABASE [INSURANCE_COMPANY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INSURANCE_COMPANY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\INSURANCE_COMPANY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'INSURANCE_COMPANY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\INSURANCE_COMPANY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [INSURANCE_COMPANY] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [INSURANCE_COMPANY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ARITHABORT OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET  MULTI_USER 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [INSURANCE_COMPANY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [INSURANCE_COMPANY] SET QUERY_STORE = OFF
GO
USE [INSURANCE_COMPANY]
GO
/****** Object:  Table [dbo].[BENEFICIARY]    Script Date: 2019-03-25 8:49:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENEFICIARY](
	[beneficiary_id] [int] IDENTITY(1,1) NOT NULL,
	[beneficiary_last_name] [varchar](256) NOT NULL,
	[beneficiary_name] [varchar](256) NOT NULL,
	[beneficiary_middle_name] [varchar](256) NULL,
	[beneficiary_brith_day] [date] NOT NULL,
	[beneficiary_relation] [varchar](100) NOT NULL,
	[beneficiary_porcentage] [numeric](4, 2) NOT NULL,
	[policy_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [beneficiary_id_pk] PRIMARY KEY CLUSTERED 
(
	[beneficiary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENEFIT]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENEFIT](
	[benefit_id] [int] IDENTITY(1,1) NOT NULL,
	[benefit_name] [varchar](250) NOT NULL,
	[benefit_description] [varchar](3200) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [benefit_id_pk] PRIMARY KEY CLUSTERED 
(
	[benefit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[category_id] [varchar](3) NOT NULL,
	[category_name] [varchar](256) NOT NULL,
	[monthly_price] [numeric](18, 0) NOT NULL,
	[coverage] [decimal](14, 2) NOT NULL,
	[term] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [category_category_id_pk] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY_BENEFIT]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY_BENEFIT](
	[category_ben_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [varchar](3) NOT NULL,
	[benefit_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [category_ben_id_pk] PRIMARY KEY CLUSTERED 
(
	[category_ben_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUSE_OF_DEATH]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUSE_OF_DEATH](
	[cause_death_id] [int] IDENTITY(1,1) NOT NULL,
	[cause_death_description] [varchar](8000) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [cause_death_id_pk] PRIMARY KEY CLUSTERED 
(
	[cause_death_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[city_id] [int] NOT NULL,
	[city_name] [varchar](256) NOT NULL,
	[province_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [city_city_id_pk] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](256) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [country_country_id_pk] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[last_name] [varchar](256) NOT NULL,
	[first_name] [varchar](256) NOT NULL,
	[phone] [numeric](18, 0) NOT NULL,
	[email] [varchar](256) NULL,
	[address] [varchar](256) NULL,
	[zipcode] [varchar](9) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[city_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [customer_customer_id_pk] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](256) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [department_department_id_pk] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POLICY]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POLICY](
	[policy_id] [int] IDENTITY(1,1) NOT NULL,
	[issue_date] [date] NOT NULL,
	[expire_date] [date] NOT NULL,
	[previous_policy] [int] NULL,
	[staff_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[category_id] [varchar](3) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
	[cause_death_id] [int] NULL,
 CONSTRAINT [policy_policy_id_pk] PRIMARY KEY CLUSTERED 
(
	[policy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NOT NULL,
	[description] [varchar](8000) NOT NULL,
	[definition] [varchar](8000) NOT NULL,
	[limits] [varchar](8000) NOT NULL,
	[exclusions] [varchar](8000) NOT NULL,
	[general_condition] [varchar](8000) NOT NULL,
	[indenization_procedure] [varchar](8000) NOT NULL,
	[data_protection_advice] [varchar](8000) NOT NULL,
	[emergency_procedure] [varchar](8000) NOT NULL,
	[available] [bit] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [product_product_id_pk] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCE]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCE](
	[province_id] [int] NOT NULL,
	[province_name] [varchar](256) NOT NULL,
	[country_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [province_province_id_pk] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPONSOR]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPONSOR](
	[sponsor_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [varchar](256) NOT NULL,
	[email] [varchar](256) NULL,
	[phone] [int] NOT NULL,
	[sales_rep] [varchar](256) NULL,
	[address] [varchar](256) NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [sponsor_sponsor_id_pk] PRIMARY KEY CLUSTERED 
(
	[sponsor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STAFF]    Script Date: 2019-03-25 8:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STAFF](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[last_name] [varchar](256) NOT NULL,
	[first_name] [varchar](256) NOT NULL,
	[phone] [numeric](10, 0) NOT NULL,
	[email] [varchar](256) NULL,
	[address] [varchar](256) NOT NULL,
	[zipcode] [nvarchar](7) NOT NULL,
	[isemployee] [bit] NOT NULL,
	[hire_date] [date] NOT NULL,
	[department_id] [int] NOT NULL,
	[usr_create] [varchar](3) NOT NULL,
	[date_create] [date] NOT NULL,
	[usr_update] [varchar](3) NOT NULL,
	[date_update] [date] NOT NULL,
 CONSTRAINT [staff_staff_id_pk] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BENEFICIARY] ADD  CONSTRAINT [DF__BENEFICIA__date___3B40CD36]  DEFAULT (getdate()) FOR [date_create]
GO
ALTER TABLE [dbo].[BENEFICIARY] ADD  CONSTRAINT [DF__BENEFICIA__date___3C34F16F]  DEFAULT (getdate()) FOR [date_update]
GO
ALTER TABLE [dbo].[CAUSE_OF_DEATH] ADD  DEFAULT (getdate()) FOR [date_create]
GO
ALTER TABLE [dbo].[CAUSE_OF_DEATH] ADD  DEFAULT (getdate()) FOR [date_update]
GO
ALTER TABLE [dbo].[POLICY] ADD  DEFAULT (getdate()) FOR [issue_date]
GO
ALTER TABLE [dbo].[POLICY] ADD  DEFAULT (getdate()) FOR [date_create]
GO
ALTER TABLE [dbo].[POLICY] ADD  DEFAULT (getdate()) FOR [date_update]
GO
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF__STAFF__hire_date__5812160E]  DEFAULT (getdate()) FOR [hire_date]
GO
ALTER TABLE [dbo].[BENEFICIARY]  WITH CHECK ADD  CONSTRAINT [policy_id_fk] FOREIGN KEY([policy_id])
REFERENCES [dbo].[POLICY] ([policy_id])
GO
ALTER TABLE [dbo].[BENEFICIARY] CHECK CONSTRAINT [policy_id_fk]
GO
ALTER TABLE [dbo].[CATEGORY_BENEFIT]  WITH CHECK ADD  CONSTRAINT [benefit_catego_id_fk] FOREIGN KEY([benefit_id])
REFERENCES [dbo].[BENEFIT] ([benefit_id])
GO
ALTER TABLE [dbo].[CATEGORY_BENEFIT] CHECK CONSTRAINT [benefit_catego_id_fk]
GO
ALTER TABLE [dbo].[CATEGORY_BENEFIT]  WITH CHECK ADD  CONSTRAINT [category_catego_id_fk] FOREIGN KEY([category_id])
REFERENCES [dbo].[CATEGORY] ([category_id])
GO
ALTER TABLE [dbo].[CATEGORY_BENEFIT] CHECK CONSTRAINT [category_catego_id_fk]
GO
ALTER TABLE [dbo].[CITY]  WITH CHECK ADD  CONSTRAINT [city_province_id_fk] FOREIGN KEY([province_id])
REFERENCES [dbo].[PROVINCE] ([province_id])
GO
ALTER TABLE [dbo].[CITY] CHECK CONSTRAINT [city_province_id_fk]
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [customer_city_id_fk] FOREIGN KEY([city_id])
REFERENCES [dbo].[CITY] ([city_id])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [customer_city_id_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [cause_death_id_fk] FOREIGN KEY([cause_death_id])
REFERENCES [dbo].[CAUSE_OF_DEATH] ([cause_death_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [cause_death_id_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [policy_category_id_fk] FOREIGN KEY([category_id])
REFERENCES [dbo].[CATEGORY] ([category_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [policy_category_id_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [policy_customer_id_fk] FOREIGN KEY([customer_id])
REFERENCES [dbo].[CUSTOMER] ([customer_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [policy_customer_id_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [policy_previous_policy_fk] FOREIGN KEY([previous_policy])
REFERENCES [dbo].[POLICY] ([policy_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [policy_previous_policy_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [policy_product_id_fk] FOREIGN KEY([product_id])
REFERENCES [dbo].[PRODUCT] ([product_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [policy_product_id_fk]
GO
ALTER TABLE [dbo].[POLICY]  WITH CHECK ADD  CONSTRAINT [policy_staff_id_fk] FOREIGN KEY([staff_id])
REFERENCES [dbo].[STAFF] ([staff_id])
GO
ALTER TABLE [dbo].[POLICY] CHECK CONSTRAINT [policy_staff_id_fk]
GO
ALTER TABLE [dbo].[PROVINCE]  WITH CHECK ADD  CONSTRAINT [province_country_id_fk] FOREIGN KEY([country_id])
REFERENCES [dbo].[COUNTRY] ([country_id])
GO
ALTER TABLE [dbo].[PROVINCE] CHECK CONSTRAINT [province_country_id_fk]
GO
ALTER TABLE [dbo].[STAFF]  WITH CHECK ADD  CONSTRAINT [staff_department_id_fk] FOREIGN KEY([department_id])
REFERENCES [dbo].[DEPARTMENT] ([department_id])
GO
ALTER TABLE [dbo].[STAFF] CHECK CONSTRAINT [staff_department_id_fk]
GO
USE [master]
GO
ALTER DATABASE [INSURANCE_COMPANY] SET  READ_WRITE 
GO

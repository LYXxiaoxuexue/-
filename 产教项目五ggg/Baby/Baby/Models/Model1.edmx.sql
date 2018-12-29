
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/15/2018 09:56:48
-- Generated from EDMX file: F:\产教项目五ggg\Baby\Baby\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BabyDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AdministratorsADintegral]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ADintegral] DROP CONSTRAINT [FK_AdministratorsADintegral];
GO
IF OBJECT_ID(N'[dbo].[FK_AdministratorsAnnouncementform]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Announcementform] DROP CONSTRAINT [FK_AdministratorsAnnouncementform];
GO
IF OBJECT_ID(N'[dbo].[FK_AdministratorsKnowledgeType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[knowledgeType] DROP CONSTRAINT [FK_AdministratorsKnowledgeType];
GO
IF OBJECT_ID(N'[dbo].[FK_AdministratorsListenType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListenType] DROP CONSTRAINT [FK_AdministratorsListenType];
GO
IF OBJECT_ID(N'[dbo].[FK_AdministratorsMerchant]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Merchant] DROP CONSTRAINT [FK_AdministratorsMerchant];
GO
IF OBJECT_ID(N'[dbo].[FK_AdministratorsNews_content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[News_content] DROP CONSTRAINT [FK_AdministratorsNews_content];
GO
IF OBJECT_ID(N'[dbo].[FK_BabyInfoAlbum]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Album] DROP CONSTRAINT [FK_BabyInfoAlbum];
GO
IF OBJECT_ID(N'[dbo].[FK_BabyInfoGrowthrecord]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Growthrecord] DROP CONSTRAINT [FK_BabyInfoGrowthrecord];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistBrand]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Brand] DROP CONSTRAINT [FK_CommoditylistBrand];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistCollection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Collection] DROP CONSTRAINT [FK_CommoditylistCollection];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistCommoditypicture]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Commoditypicture] DROP CONSTRAINT [FK_CommoditylistCommoditypicture];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistFootprint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Footprint] DROP CONSTRAINT [FK_CommoditylistFootprint];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistShoppingCart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK_CommoditylistShoppingCart];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistspTypeDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[spTypeDetails] DROP CONSTRAINT [FK_CommoditylistspTypeDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_CommoditylistUserFeedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserFeedback] DROP CONSTRAINT [FK_CommoditylistUserFeedback];
GO
IF OBJECT_ID(N'[dbo].[FK_CommodityTypeCommoditylist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Commoditylist] DROP CONSTRAINT [FK_CommodityTypeCommoditylist];
GO
IF OBJECT_ID(N'[dbo].[FK_KnowledgeTypeKnowledge]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KnowledgeSet] DROP CONSTRAINT [FK_KnowledgeTypeKnowledge];
GO
IF OBJECT_ID(N'[dbo].[FK_ListenTypeListen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Listen] DROP CONSTRAINT [FK_ListenTypeListen];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantChat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[chat] DROP CONSTRAINT [FK_MerchantChat];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantCommodityconcern]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Commodityconcern] DROP CONSTRAINT [FK_MerchantCommodityconcern];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantMerchantFeedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantFeedback] DROP CONSTRAINT [FK_MerchantMerchantFeedback];
GO
IF OBJECT_ID(N'[dbo].[FK_News_contentNews_picture]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[News_picture] DROP CONSTRAINT [FK_News_contentNews_picture];
GO
IF OBJECT_ID(N'[dbo].[FK_Orderlist_Commoditylist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orderlist] DROP CONSTRAINT [FK_Orderlist_Commoditylist];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderlistEvaluation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluation] DROP CONSTRAINT [FK_OrderlistEvaluation];
GO
IF OBJECT_ID(N'[dbo].[FK_spTypeDetails_Commoditylist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[spTypeDetails] DROP CONSTRAINT [FK_spTypeDetails_Commoditylist];
GO
IF OBJECT_ID(N'[BabyDBModelStoreContainer].[FK_UserAddressOrder]', 'F') IS NOT NULL
    ALTER TABLE [BabyDBModelStoreContainer].[Order] DROP CONSTRAINT [FK_UserAddressOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoBabyInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BabyInfo] DROP CONSTRAINT [FK_UserInfoBabyInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoChat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[chat] DROP CONSTRAINT [FK_UserInfoChat];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoCollection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Collection] DROP CONSTRAINT [FK_UserInfoCollection];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoCommodityconcern]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Commodityconcern] DROP CONSTRAINT [FK_UserInfoCommodityconcern];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoFootprint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Footprint] DROP CONSTRAINT [FK_UserInfoFootprint];
GO
IF OBJECT_ID(N'[BabyDBModelStoreContainer].[FK_UserInfoOrder]', 'F') IS NOT NULL
    ALTER TABLE [BabyDBModelStoreContainer].[Order] DROP CONSTRAINT [FK_UserInfoOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoProblem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Problem] DROP CONSTRAINT [FK_UserInfoProblem];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoShoppingCart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK_UserInfoShoppingCart];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoUserAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserAddress] DROP CONSTRAINT [FK_UserInfoUserAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoUserFeedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserFeedback] DROP CONSTRAINT [FK_UserInfoUserFeedback];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoUserintegral]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Userintegral] DROP CONSTRAINT [FK_UserInfoUserintegral];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ADintegral]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ADintegral];
GO
IF OBJECT_ID(N'[dbo].[AdministratorsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdministratorsSet];
GO
IF OBJECT_ID(N'[dbo].[Album]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Album];
GO
IF OBJECT_ID(N'[dbo].[Announcementform]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Announcementform];
GO
IF OBJECT_ID(N'[dbo].[BabyInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BabyInfo];
GO
IF OBJECT_ID(N'[dbo].[Brand]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Brand];
GO
IF OBJECT_ID(N'[dbo].[chat]', 'U') IS NOT NULL
    DROP TABLE [dbo].[chat];
GO
IF OBJECT_ID(N'[dbo].[Collection]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Collection];
GO
IF OBJECT_ID(N'[dbo].[Commodityconcern]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Commodityconcern];
GO
IF OBJECT_ID(N'[dbo].[Commoditylist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Commoditylist];
GO
IF OBJECT_ID(N'[dbo].[Commoditypicture]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Commoditypicture];
GO
IF OBJECT_ID(N'[dbo].[CommodityType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommodityType];
GO
IF OBJECT_ID(N'[dbo].[Evaluation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Evaluation];
GO
IF OBJECT_ID(N'[dbo].[Footprint]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Footprint];
GO
IF OBJECT_ID(N'[dbo].[Growthrecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Growthrecord];
GO
IF OBJECT_ID(N'[dbo].[KnowledgeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KnowledgeSet];
GO
IF OBJECT_ID(N'[dbo].[knowledgeType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[knowledgeType];
GO
IF OBJECT_ID(N'[dbo].[Listen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Listen];
GO
IF OBJECT_ID(N'[dbo].[ListenType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ListenType];
GO
IF OBJECT_ID(N'[dbo].[Merchant]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Merchant];
GO
IF OBJECT_ID(N'[dbo].[MerchantFeedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MerchantFeedback];
GO
IF OBJECT_ID(N'[dbo].[News_content]', 'U') IS NOT NULL
    DROP TABLE [dbo].[News_content];
GO
IF OBJECT_ID(N'[dbo].[News_picture]', 'U') IS NOT NULL
    DROP TABLE [dbo].[News_picture];
GO
IF OBJECT_ID(N'[dbo].[Orderlist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orderlist];
GO
IF OBJECT_ID(N'[dbo].[Problem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Problem];
GO
IF OBJECT_ID(N'[dbo].[Sensitivewords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sensitivewords];
GO
IF OBJECT_ID(N'[dbo].[ShoppingCart]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShoppingCart];
GO
IF OBJECT_ID(N'[dbo].[specificationType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[specificationType];
GO
IF OBJECT_ID(N'[dbo].[spTypeDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[spTypeDetails];
GO
IF OBJECT_ID(N'[dbo].[UserAddress]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserAddress];
GO
IF OBJECT_ID(N'[dbo].[UserFeedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserFeedback];
GO
IF OBJECT_ID(N'[dbo].[UserInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserInfo];
GO
IF OBJECT_ID(N'[dbo].[Userintegral]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Userintegral];
GO
IF OBJECT_ID(N'[BabyDBModelStoreContainer].[Order]', 'U') IS NOT NULL
    DROP TABLE [BabyDBModelStoreContainer].[Order];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ADintegral'
CREATE TABLE [dbo].[ADintegral] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aintegral] float  NULL,
    [Acontent] nvarchar(max)  NULL,
    [Acreatetime] datetime  NOT NULL,
    [AIsdelete] bit  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'AdministratorsSet'
CREATE TABLE [dbo].[AdministratorsSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Sex] nvarchar(max)  NOT NULL,
    [Acreatetime] datetime  NOT NULL,
    [AIsdelete] bit  NOT NULL,
    [Pwd] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Headimg] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Album'
CREATE TABLE [dbo].[Album] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Acontent] nvarchar(max)  NULL,
    [Aurl] nvarchar(max)  NULL,
    [Atime] datetime  NOT NULL,
    [Arange] bit  NOT NULL,
    [Aadress] nvarchar(max)  NULL,
    [AIsdelete] bit  NOT NULL,
    [BabyInfoID] int  NOT NULL
);
GO

-- Creating table 'Announcementform'
CREATE TABLE [dbo].[Announcementform] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Atitle] nvarchar(max)  NOT NULL,
    [Acontent] nvarchar(max)  NOT NULL,
    [Acreatetime] datetime  NOT NULL,
    [AIsdelete] bit  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'BabyInfo'
CREATE TABLE [dbo].[BabyInfo] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Bname] nvarchar(max)  NOT NULL,
    [BLittle] nvarchar(max)  NULL,
    [BSex] nvarchar(max)  NULL,
    [BBirthday] datetime  NULL,
    [BQRcode] nvarchar(max)  NULL,
    [BHeadimg] nvarchar(max)  NOT NULL,
    [Bconstellation] nvarchar(max)  NOT NULL,
    [BBirthtime] datetime  NULL,
    [Bheight] float  NULL,
    [BWidth] float  NULL,
    [BHeadcircumference] float  NULL,
    [Bcreatetime] datetime  NOT NULL,
    [BIsdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Brand'
CREATE TABLE [dbo].[Brand] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [BrandTitle] nvarchar(max)  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'chat'
CREATE TABLE [dbo].[chat] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ccontent] nvarchar(max)  NULL,
    [CpictureUrl] nvarchar(max)  NULL,
    [Ctime] datetime  NULL,
    [Cvideo] nvarchar(max)  NULL,
    [MerchantID] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Collection'
CREATE TABLE [dbo].[Collection] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ccreatetime] datetime  NOT NULL,
    [CIsdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'Commodityconcern'
CREATE TABLE [dbo].[Commodityconcern] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ccreatetime] datetime  NOT NULL,
    [CIsdelete] bit  NOT NULL,
    [MerchantID] int  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Commoditylist'
CREATE TABLE [dbo].[Commoditylist] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Tradename] nvarchar(max)  NOT NULL,
    [ProductBrief] nvarchar(max)  NOT NULL,
    [Displaylevel] int  NOT NULL,
    [Originalprice] float  NULL,
    [Currentprice] float  NOT NULL,
    [Number] int  NOT NULL,
    [Courierfee] float  NULL,
    [Discount] float  NULL,
    [state] smallint  NOT NULL,
    [Ccreatetime] datetime  NOT NULL,
    [CIsdelete] bit  NOT NULL,
    [CommodityTypeID] int  NOT NULL
);
GO

-- Creating table 'Commoditypicture'
CREATE TABLE [dbo].[Commoditypicture] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PicContend] nvarchar(max)  NULL,
    [pictureUrl] nvarchar(max)  NULL,
    [createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'CommodityType'
CREATE TABLE [dbo].[CommodityType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ctitle] nvarchar(max)  NOT NULL,
    [TypeID] nvarchar(max)  NOT NULL,
    [Ccreatetime] datetime  NOT NULL,
    [CIsdelete] bit  NOT NULL
);
GO

-- Creating table 'Evaluation'
CREATE TABLE [dbo].[Evaluation] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Econtent] nvarchar(max)  NULL,
    [Eimgurl] nvarchar(max)  NULL,
    [EPraise] int  NULL,
    [EtypeID] int  NOT NULL,
    [Ecreatetime] datetime  NOT NULL,
    [EIsdelete] bit  NOT NULL,
    [OrderlistID] int  NOT NULL
);
GO

-- Creating table 'Footprint'
CREATE TABLE [dbo].[Footprint] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Fcreatetime] datetime  NOT NULL,
    [FIsdelete] bit  NOT NULL,
    [CommoditylistID] int  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Growthrecord'
CREATE TABLE [dbo].[Growthrecord] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Gheight] float  NOT NULL,
    [Gwidth] float  NOT NULL,
    [GHeadcircumference] float  NOT NULL,
    [Gweight] float  NOT NULL,
    [Gcreatetime] datetime  NOT NULL,
    [GIsdelete] bit  NOT NULL,
    [BabyInfoID] int  NOT NULL
);
GO

-- Creating table 'KnowledgeSet'
CREATE TABLE [dbo].[KnowledgeSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Subheading] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Imgurl] nvarchar(max)  NULL,
    [Click] int  NOT NULL,
    [Browsevolume] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [KnowledgeTypeID] int  NOT NULL
);
GO

-- Creating table 'knowledgeType'
CREATE TABLE [dbo].[knowledgeType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'Listen'
CREATE TABLE [dbo].[Listen] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ListenName] nvarchar(max)  NOT NULL,
    [MusicUrl] nvarchar(max)  NOT NULL,
    [Click] int  NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [ListenTypeID] int  NOT NULL
);
GO

-- Creating table 'ListenType'
CREATE TABLE [dbo].[ListenType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [title] nvarchar(max)  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'Merchant'
CREATE TABLE [dbo].[Merchant] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Mname] nvarchar(max)  NOT NULL,
    [Mheadimg] nvarchar(max)  NOT NULL,
    [Mrealname] nvarchar(max)  NOT NULL,
    [MPwd] nvarchar(max)  NOT NULL,
    [MSex] nvarchar(max)  NOT NULL,
    [MAge] int  NOT NULL,
    [Maddress] nvarchar(max)  NOT NULL,
    [Mlevel] nvarchar(max)  NOT NULL,
    [Mphone] nvarchar(max)  NOT NULL,
    [MIDnum] nvarchar(max)  NOT NULL,
    [Mbusiness] nvarchar(max)  NOT NULL,
    [MShopphotos] nvarchar(max)  NOT NULL,
    [MEmail] nvarchar(max)  NOT NULL,
    [Mdescribe] nvarchar(max)  NOT NULL,
    [Mcreatetime] datetime  NOT NULL,
    [MIsdelete] int  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'MerchantFeedback'
CREATE TABLE [dbo].[MerchantFeedback] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Fcontent] nvarchar(max)  NOT NULL,
    [Fimgurl] nvarchar(max)  NULL,
    [Finformation] nvarchar(max)  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [MerchantID] int  NOT NULL
);
GO

-- Creating table 'News_content'
CREATE TABLE [dbo].[News_content] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Picture] nvarchar(max)  NOT NULL,
    [Already] bit  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [AdministratorsID] int  NOT NULL
);
GO

-- Creating table 'News_picture'
CREATE TABLE [dbo].[News_picture] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [NewDescribe] nvarchar(max)  NULL,
    [NewpictureUrl] nvarchar(max)  NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [NewscontentID] int  NOT NULL
);
GO

-- Creating table 'Orderlist'
CREATE TABLE [dbo].[Orderlist] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [OrderId] nvarchar(max)  NOT NULL,
    [Quantity] int  NOT NULL,
    [UnitPrice] float  NOT NULL,
    [state] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [Order_OrderId] nvarchar(max)  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'Problem'
CREATE TABLE [dbo].[Problem] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Questions] nvarchar(max)  NOT NULL,
    [Usertime] datetime  NOT NULL,
    [answers] nvarchar(max)  NULL,
    [time] datetime  NOT NULL,
    [state] int  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Sensitivewords'
CREATE TABLE [dbo].[Sensitivewords] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [SProhibit] nvarchar(max)  NOT NULL,
    [Sreplace] nvarchar(max)  NOT NULL,
    [Screatetime] datetime  NOT NULL,
    [SIsdelete] bit  NOT NULL
);
GO

-- Creating table 'ShoppingCart'
CREATE TABLE [dbo].[ShoppingCart] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Quantity] int  NOT NULL,
    [State] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'specificationType'
CREATE TABLE [dbo].[specificationType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Details] nvarchar(max)  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL
);
GO

-- Creating table 'spTypeDetails'
CREATE TABLE [dbo].[spTypeDetails] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [specificationTypeID] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'UserAddress'
CREATE TABLE [dbo].[UserAddress] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Default] bit  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'UserFeedback'
CREATE TABLE [dbo].[UserFeedback] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Fcontent] nvarchar(max)  NOT NULL,
    [Fimgurl] nvarchar(max)  NULL,
    [Finformation] nvarchar(max)  NOT NULL,
    [Fcreatetime] datetime  NOT NULL,
    [FIsdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL,
    [CommoditylistID] int  NOT NULL
);
GO

-- Creating table 'UserInfo'
CREATE TABLE [dbo].[UserInfo] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [UOpenid] nvarchar(max)  NOT NULL,
    [UNickname] nvarchar(max)  NOT NULL,
    [UPhone] nvarchar(max)  NOT NULL,
    [UPwd] nvarchar(max)  NOT NULL,
    [UHeadimg] nvarchar(max)  NOT NULL,
    [UAge] int  NULL,
    [USex] nvarchar(max)  NULL,
    [UBirthday] datetime  NULL,
    [Uarea] nvarchar(max)  NULL,
    [USignature] nvarchar(max)  NULL,
    [URealname] nvarchar(max)  NOT NULL,
    [Ulevel] nvarchar(max)  NOT NULL,
    [Uidentification] nvarchar(max)  NOT NULL,
    [UEmail] nvarchar(max)  NULL,
    [UCreatetime] datetime  NOT NULL,
    [UIsdelete] bit  NOT NULL
);
GO

-- Creating table 'Userintegral'
CREATE TABLE [dbo].[Userintegral] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Uintegral] float  NOT NULL,
    [CountMoney] float  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Isdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'Order'
CREATE TABLE [dbo].[Order] (
    [OrderId] nvarchar(max)  NOT NULL,
    [OPriceTotal] float  NOT NULL,
    [Onum] int  NOT NULL,
    [Ocreatetime] datetime  NOT NULL,
    [OIsdelete] bit  NOT NULL,
    [UserInfoID] int  NOT NULL,
    [UserAddressID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'ADintegral'
ALTER TABLE [dbo].[ADintegral]
ADD CONSTRAINT [PK_ADintegral]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'AdministratorsSet'
ALTER TABLE [dbo].[AdministratorsSet]
ADD CONSTRAINT [PK_AdministratorsSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Album'
ALTER TABLE [dbo].[Album]
ADD CONSTRAINT [PK_Album]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Announcementform'
ALTER TABLE [dbo].[Announcementform]
ADD CONSTRAINT [PK_Announcementform]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'BabyInfo'
ALTER TABLE [dbo].[BabyInfo]
ADD CONSTRAINT [PK_BabyInfo]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Brand'
ALTER TABLE [dbo].[Brand]
ADD CONSTRAINT [PK_Brand]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'chat'
ALTER TABLE [dbo].[chat]
ADD CONSTRAINT [PK_chat]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Collection'
ALTER TABLE [dbo].[Collection]
ADD CONSTRAINT [PK_Collection]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Commodityconcern'
ALTER TABLE [dbo].[Commodityconcern]
ADD CONSTRAINT [PK_Commodityconcern]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Commoditylist'
ALTER TABLE [dbo].[Commoditylist]
ADD CONSTRAINT [PK_Commoditylist]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Commoditypicture'
ALTER TABLE [dbo].[Commoditypicture]
ADD CONSTRAINT [PK_Commoditypicture]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CommodityType'
ALTER TABLE [dbo].[CommodityType]
ADD CONSTRAINT [PK_CommodityType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Evaluation'
ALTER TABLE [dbo].[Evaluation]
ADD CONSTRAINT [PK_Evaluation]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Footprint'
ALTER TABLE [dbo].[Footprint]
ADD CONSTRAINT [PK_Footprint]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Growthrecord'
ALTER TABLE [dbo].[Growthrecord]
ADD CONSTRAINT [PK_Growthrecord]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'KnowledgeSet'
ALTER TABLE [dbo].[KnowledgeSet]
ADD CONSTRAINT [PK_KnowledgeSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'knowledgeType'
ALTER TABLE [dbo].[knowledgeType]
ADD CONSTRAINT [PK_knowledgeType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Listen'
ALTER TABLE [dbo].[Listen]
ADD CONSTRAINT [PK_Listen]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ListenType'
ALTER TABLE [dbo].[ListenType]
ADD CONSTRAINT [PK_ListenType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Merchant'
ALTER TABLE [dbo].[Merchant]
ADD CONSTRAINT [PK_Merchant]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'MerchantFeedback'
ALTER TABLE [dbo].[MerchantFeedback]
ADD CONSTRAINT [PK_MerchantFeedback]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'News_content'
ALTER TABLE [dbo].[News_content]
ADD CONSTRAINT [PK_News_content]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'News_picture'
ALTER TABLE [dbo].[News_picture]
ADD CONSTRAINT [PK_News_picture]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Orderlist'
ALTER TABLE [dbo].[Orderlist]
ADD CONSTRAINT [PK_Orderlist]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Problem'
ALTER TABLE [dbo].[Problem]
ADD CONSTRAINT [PK_Problem]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Sensitivewords'
ALTER TABLE [dbo].[Sensitivewords]
ADD CONSTRAINT [PK_Sensitivewords]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ShoppingCart'
ALTER TABLE [dbo].[ShoppingCart]
ADD CONSTRAINT [PK_ShoppingCart]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'specificationType'
ALTER TABLE [dbo].[specificationType]
ADD CONSTRAINT [PK_specificationType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'spTypeDetails'
ALTER TABLE [dbo].[spTypeDetails]
ADD CONSTRAINT [PK_spTypeDetails]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UserAddress'
ALTER TABLE [dbo].[UserAddress]
ADD CONSTRAINT [PK_UserAddress]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UserFeedback'
ALTER TABLE [dbo].[UserFeedback]
ADD CONSTRAINT [PK_UserFeedback]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UserInfo'
ALTER TABLE [dbo].[UserInfo]
ADD CONSTRAINT [PK_UserInfo]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Userintegral'
ALTER TABLE [dbo].[Userintegral]
ADD CONSTRAINT [PK_Userintegral]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [OrderId], [OPriceTotal], [Onum], [Ocreatetime], [OIsdelete], [UserInfoID], [UserAddressID] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [PK_Order]
    PRIMARY KEY CLUSTERED ([OrderId], [OPriceTotal], [Onum], [Ocreatetime], [OIsdelete], [UserInfoID], [UserAddressID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AdministratorsID] in table 'ADintegral'
ALTER TABLE [dbo].[ADintegral]
ADD CONSTRAINT [FK_AdministratorsADintegral]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsADintegral'
CREATE INDEX [IX_FK_AdministratorsADintegral]
ON [dbo].[ADintegral]
    ([AdministratorsID]);
GO

-- Creating foreign key on [AdministratorsID] in table 'Announcementform'
ALTER TABLE [dbo].[Announcementform]
ADD CONSTRAINT [FK_AdministratorsAnnouncementform]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsAnnouncementform'
CREATE INDEX [IX_FK_AdministratorsAnnouncementform]
ON [dbo].[Announcementform]
    ([AdministratorsID]);
GO

-- Creating foreign key on [AdministratorsID] in table 'knowledgeType'
ALTER TABLE [dbo].[knowledgeType]
ADD CONSTRAINT [FK_AdministratorsKnowledgeType]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsKnowledgeType'
CREATE INDEX [IX_FK_AdministratorsKnowledgeType]
ON [dbo].[knowledgeType]
    ([AdministratorsID]);
GO

-- Creating foreign key on [AdministratorsID] in table 'ListenType'
ALTER TABLE [dbo].[ListenType]
ADD CONSTRAINT [FK_AdministratorsListenType]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsListenType'
CREATE INDEX [IX_FK_AdministratorsListenType]
ON [dbo].[ListenType]
    ([AdministratorsID]);
GO

-- Creating foreign key on [AdministratorsID] in table 'Merchant'
ALTER TABLE [dbo].[Merchant]
ADD CONSTRAINT [FK_AdministratorsMerchant]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsMerchant'
CREATE INDEX [IX_FK_AdministratorsMerchant]
ON [dbo].[Merchant]
    ([AdministratorsID]);
GO

-- Creating foreign key on [AdministratorsID] in table 'News_content'
ALTER TABLE [dbo].[News_content]
ADD CONSTRAINT [FK_AdministratorsNews_content]
    FOREIGN KEY ([AdministratorsID])
    REFERENCES [dbo].[AdministratorsSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsNews_content'
CREATE INDEX [IX_FK_AdministratorsNews_content]
ON [dbo].[News_content]
    ([AdministratorsID]);
GO

-- Creating foreign key on [BabyInfoID] in table 'Album'
ALTER TABLE [dbo].[Album]
ADD CONSTRAINT [FK_BabyInfoAlbum]
    FOREIGN KEY ([BabyInfoID])
    REFERENCES [dbo].[BabyInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BabyInfoAlbum'
CREATE INDEX [IX_FK_BabyInfoAlbum]
ON [dbo].[Album]
    ([BabyInfoID]);
GO

-- Creating foreign key on [BabyInfoID] in table 'Growthrecord'
ALTER TABLE [dbo].[Growthrecord]
ADD CONSTRAINT [FK_BabyInfoGrowthrecord]
    FOREIGN KEY ([BabyInfoID])
    REFERENCES [dbo].[BabyInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BabyInfoGrowthrecord'
CREATE INDEX [IX_FK_BabyInfoGrowthrecord]
ON [dbo].[Growthrecord]
    ([BabyInfoID]);
GO

-- Creating foreign key on [UserInfoID] in table 'BabyInfo'
ALTER TABLE [dbo].[BabyInfo]
ADD CONSTRAINT [FK_UserInfoBabyInfo]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoBabyInfo'
CREATE INDEX [IX_FK_UserInfoBabyInfo]
ON [dbo].[BabyInfo]
    ([UserInfoID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'Brand'
ALTER TABLE [dbo].[Brand]
ADD CONSTRAINT [FK_CommoditylistBrand]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistBrand'
CREATE INDEX [IX_FK_CommoditylistBrand]
ON [dbo].[Brand]
    ([CommoditylistID]);
GO

-- Creating foreign key on [MerchantID] in table 'chat'
ALTER TABLE [dbo].[chat]
ADD CONSTRAINT [FK_MerchantChat]
    FOREIGN KEY ([MerchantID])
    REFERENCES [dbo].[Merchant]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantChat'
CREATE INDEX [IX_FK_MerchantChat]
ON [dbo].[chat]
    ([MerchantID]);
GO

-- Creating foreign key on [UserInfoID] in table 'chat'
ALTER TABLE [dbo].[chat]
ADD CONSTRAINT [FK_UserInfoChat]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoChat'
CREATE INDEX [IX_FK_UserInfoChat]
ON [dbo].[chat]
    ([UserInfoID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'Collection'
ALTER TABLE [dbo].[Collection]
ADD CONSTRAINT [FK_CommoditylistCollection]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistCollection'
CREATE INDEX [IX_FK_CommoditylistCollection]
ON [dbo].[Collection]
    ([CommoditylistID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Collection'
ALTER TABLE [dbo].[Collection]
ADD CONSTRAINT [FK_UserInfoCollection]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoCollection'
CREATE INDEX [IX_FK_UserInfoCollection]
ON [dbo].[Collection]
    ([UserInfoID]);
GO

-- Creating foreign key on [MerchantID] in table 'Commodityconcern'
ALTER TABLE [dbo].[Commodityconcern]
ADD CONSTRAINT [FK_MerchantCommodityconcern]
    FOREIGN KEY ([MerchantID])
    REFERENCES [dbo].[Merchant]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantCommodityconcern'
CREATE INDEX [IX_FK_MerchantCommodityconcern]
ON [dbo].[Commodityconcern]
    ([MerchantID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Commodityconcern'
ALTER TABLE [dbo].[Commodityconcern]
ADD CONSTRAINT [FK_UserInfoCommodityconcern]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoCommodityconcern'
CREATE INDEX [IX_FK_UserInfoCommodityconcern]
ON [dbo].[Commodityconcern]
    ([UserInfoID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'Commoditypicture'
ALTER TABLE [dbo].[Commoditypicture]
ADD CONSTRAINT [FK_CommoditylistCommoditypicture]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistCommoditypicture'
CREATE INDEX [IX_FK_CommoditylistCommoditypicture]
ON [dbo].[Commoditypicture]
    ([CommoditylistID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'Footprint'
ALTER TABLE [dbo].[Footprint]
ADD CONSTRAINT [FK_CommoditylistFootprint]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistFootprint'
CREATE INDEX [IX_FK_CommoditylistFootprint]
ON [dbo].[Footprint]
    ([CommoditylistID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'ShoppingCart'
ALTER TABLE [dbo].[ShoppingCart]
ADD CONSTRAINT [FK_CommoditylistShoppingCart]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistShoppingCart'
CREATE INDEX [IX_FK_CommoditylistShoppingCart]
ON [dbo].[ShoppingCart]
    ([CommoditylistID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'UserFeedback'
ALTER TABLE [dbo].[UserFeedback]
ADD CONSTRAINT [FK_CommoditylistUserFeedback]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistUserFeedback'
CREATE INDEX [IX_FK_CommoditylistUserFeedback]
ON [dbo].[UserFeedback]
    ([CommoditylistID]);
GO

-- Creating foreign key on [CommodityTypeID] in table 'Commoditylist'
ALTER TABLE [dbo].[Commoditylist]
ADD CONSTRAINT [FK_CommodityTypeCommoditylist]
    FOREIGN KEY ([CommodityTypeID])
    REFERENCES [dbo].[CommodityType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommodityTypeCommoditylist'
CREATE INDEX [IX_FK_CommodityTypeCommoditylist]
ON [dbo].[Commoditylist]
    ([CommodityTypeID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'Orderlist'
ALTER TABLE [dbo].[Orderlist]
ADD CONSTRAINT [FK_Orderlist_Commoditylist]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orderlist_Commoditylist'
CREATE INDEX [IX_FK_Orderlist_Commoditylist]
ON [dbo].[Orderlist]
    ([CommoditylistID]);
GO

-- Creating foreign key on [CommoditylistID] in table 'spTypeDetails'
ALTER TABLE [dbo].[spTypeDetails]
ADD CONSTRAINT [FK_spTypeDetails_Commoditylist]
    FOREIGN KEY ([CommoditylistID])
    REFERENCES [dbo].[Commoditylist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_spTypeDetails_Commoditylist'
CREATE INDEX [IX_FK_spTypeDetails_Commoditylist]
ON [dbo].[spTypeDetails]
    ([CommoditylistID]);
GO

-- Creating foreign key on [OrderlistID] in table 'Evaluation'
ALTER TABLE [dbo].[Evaluation]
ADD CONSTRAINT [FK_OrderlistEvaluation]
    FOREIGN KEY ([OrderlistID])
    REFERENCES [dbo].[Orderlist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderlistEvaluation'
CREATE INDEX [IX_FK_OrderlistEvaluation]
ON [dbo].[Evaluation]
    ([OrderlistID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Footprint'
ALTER TABLE [dbo].[Footprint]
ADD CONSTRAINT [FK_UserInfoFootprint]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoFootprint'
CREATE INDEX [IX_FK_UserInfoFootprint]
ON [dbo].[Footprint]
    ([UserInfoID]);
GO

-- Creating foreign key on [KnowledgeTypeID] in table 'KnowledgeSet'
ALTER TABLE [dbo].[KnowledgeSet]
ADD CONSTRAINT [FK_KnowledgeTypeKnowledge]
    FOREIGN KEY ([KnowledgeTypeID])
    REFERENCES [dbo].[knowledgeType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KnowledgeTypeKnowledge'
CREATE INDEX [IX_FK_KnowledgeTypeKnowledge]
ON [dbo].[KnowledgeSet]
    ([KnowledgeTypeID]);
GO

-- Creating foreign key on [ListenTypeID] in table 'Listen'
ALTER TABLE [dbo].[Listen]
ADD CONSTRAINT [FK_ListenTypeListen]
    FOREIGN KEY ([ListenTypeID])
    REFERENCES [dbo].[ListenType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ListenTypeListen'
CREATE INDEX [IX_FK_ListenTypeListen]
ON [dbo].[Listen]
    ([ListenTypeID]);
GO

-- Creating foreign key on [MerchantID] in table 'MerchantFeedback'
ALTER TABLE [dbo].[MerchantFeedback]
ADD CONSTRAINT [FK_MerchantMerchantFeedback]
    FOREIGN KEY ([MerchantID])
    REFERENCES [dbo].[Merchant]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantMerchantFeedback'
CREATE INDEX [IX_FK_MerchantMerchantFeedback]
ON [dbo].[MerchantFeedback]
    ([MerchantID]);
GO

-- Creating foreign key on [NewscontentID] in table 'News_picture'
ALTER TABLE [dbo].[News_picture]
ADD CONSTRAINT [FK_News_contentNews_picture]
    FOREIGN KEY ([NewscontentID])
    REFERENCES [dbo].[News_content]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_News_contentNews_picture'
CREATE INDEX [IX_FK_News_contentNews_picture]
ON [dbo].[News_picture]
    ([NewscontentID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Problem'
ALTER TABLE [dbo].[Problem]
ADD CONSTRAINT [FK_UserInfoProblem]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoProblem'
CREATE INDEX [IX_FK_UserInfoProblem]
ON [dbo].[Problem]
    ([UserInfoID]);
GO

-- Creating foreign key on [UserInfoID] in table 'ShoppingCart'
ALTER TABLE [dbo].[ShoppingCart]
ADD CONSTRAINT [FK_UserInfoShoppingCart]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoShoppingCart'
CREATE INDEX [IX_FK_UserInfoShoppingCart]
ON [dbo].[ShoppingCart]
    ([UserInfoID]);
GO

-- Creating foreign key on [specificationTypeID] in table 'spTypeDetails'
ALTER TABLE [dbo].[spTypeDetails]
ADD CONSTRAINT [FK_CommoditylistspTypeDetails]
    FOREIGN KEY ([specificationTypeID])
    REFERENCES [dbo].[specificationType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommoditylistspTypeDetails'
CREATE INDEX [IX_FK_CommoditylistspTypeDetails]
ON [dbo].[spTypeDetails]
    ([specificationTypeID]);
GO

-- Creating foreign key on [UserAddressID] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_UserAddressOrder]
    FOREIGN KEY ([UserAddressID])
    REFERENCES [dbo].[UserAddress]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAddressOrder'
CREATE INDEX [IX_FK_UserAddressOrder]
ON [dbo].[Order]
    ([UserAddressID]);
GO

-- Creating foreign key on [UserInfoID] in table 'UserAddress'
ALTER TABLE [dbo].[UserAddress]
ADD CONSTRAINT [FK_UserInfoUserAddress]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoUserAddress'
CREATE INDEX [IX_FK_UserInfoUserAddress]
ON [dbo].[UserAddress]
    ([UserInfoID]);
GO

-- Creating foreign key on [UserInfoID] in table 'UserFeedback'
ALTER TABLE [dbo].[UserFeedback]
ADD CONSTRAINT [FK_UserInfoUserFeedback]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoUserFeedback'
CREATE INDEX [IX_FK_UserInfoUserFeedback]
ON [dbo].[UserFeedback]
    ([UserInfoID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_UserInfoOrder]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoOrder'
CREATE INDEX [IX_FK_UserInfoOrder]
ON [dbo].[Order]
    ([UserInfoID]);
GO

-- Creating foreign key on [UserInfoID] in table 'Userintegral'
ALTER TABLE [dbo].[Userintegral]
ADD CONSTRAINT [FK_UserInfoUserintegral]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoUserintegral'
CREATE INDEX [IX_FK_UserInfoUserintegral]
ON [dbo].[Userintegral]
    ([UserInfoID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

----------------New Schema-------------------
--DROP TABLE [TestResult]
--DROP TABLE [Role]
--DROP TABLE [ExperienceLevel]
--DROP TABLE [HireeRole]
--DROP TABLE [User]
--DROP TABLE [HireeUserRole]
--DROP TABLE [UserRole]
--DROP TABLE [TestCategory]
--DROP TABLE [QuestionType]
--DROP TABLE [Question]
--DROP TABLE [Option]
--DROP TABLE [QuestionOption]
--DROP TABLE [Test]
--DROP TABLE [TestDetail]
--DROP TABLE [NotificationType]
--DROP TABLE [Notification]

--CREATE DATABASE HRMS

--USE HRMS

--------------------------------------------------------
GO
CREATE TABLE [TestResult] 
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(100) NOT NULL
)
GO
INSERT INTO TestResult VALUES ('Pending');
INSERT INTO TestResult VALUES ('Passed');
INSERT INTO TestResult VALUES ('Failed');
GO

----------------------------------------------------------------------------
CREATE TABLE [Role]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(200) NOT NULL
)
GO
INSERT INTO [Role] VALUES ('Administrator');
INSERT INTO [Role] VALUES ('HR');
INSERT INTO [Role] VALUES ('Employee');
INSERT INTO [Role] VALUES ('Hiree');
GO

-------------------------------------------------------------------------
CREATE TABLE [ExperienceLevel]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(200) NOT NULL,
)
GO
INSERT INTO [ExperienceLevel] VALUES ('Fresher');
INSERT INTO [ExperienceLevel] VALUES ('Intermediate');
INSERT INTO [ExperienceLevel] VALUES ('Experienced');
GO

-----------------------------------------------------------------------------
CREATE TABLE [Skill]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NOT NULL
)
GO
INSERT INTO [Skill] VALUES ('Full Stack');
INSERT INTO [Skill] VALUES ('.Net');
INSERT INTO [Skill] VALUES ('SAP');
GO

--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [User]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NOT NULL,
[Email] NVARCHAR(300) UNIQUE  NOT NULL,
[MobileNumber] NVARCHAR(30) NOT NULL,
[PasswordHash] VARBINARY(MAX) NOT NULL,
[PasswordSalt] VARBINARY(MAX) NOT NULL,
[CreatedDate] DATETIME DEFAULT GETDATE(),
[UpdatedDate] DATETIME NULL,
[IsApproved] BIT DEFAULT 0,
[IsActive] BIT DEFAULT 0
)
GO

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Hire [ExperienceLevelID, TotalExperience, Company, Designation, Teams] 
CREATE TABLE [UserProfile]
(
[UserID] INT NOT NULL,
[ExperienceLevelID] INT NULL,
[TotalExperience] FLOAT NULL,
[Company] NVARCHAR(300) NULL,
[Designation] NVARCHAR(100) NULL
)
GO



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [UserSkill]
(
[UserID] INT NOT NULL,
[SkillID] INT NOT NULL
)
--[UserID.User.ID] [SkillID.Skill.ID]
GO

-------------------------------------------------------------------
CREATE TABLE [UserRole]
(
[UserID] INT NOT NULL,
[RoleID] INT NOT NULL
)
--[UserID.User.ID] [RoleID.Role.ID]
GO

----------------------------------------------------------
CREATE TABLE [TestCategory]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NOT NULL
)
GO

------------------------------------------------------------
CREATE TABLE [QuestionType]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NOT NULL
)
GO

INSERT INTO [QuestionType] VALUES ('Analytical');
INSERT INTO [QuestionType] VALUES ('Reasoning');
INSERT INTO [QuestionType] VALUES ('Quantitative');
INSERT INTO [QuestionType] VALUES ('Technical - Generic');
INSERT INTO [QuestionType] VALUES ('Technical - Specific');

GO

------------------------------------
CREATE TABLE [Question]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(MAX) NOT NULL,
[TestCategoryID] INT NOT NULL,
[QuestionTypeID] INT NULL,
[ExperienceLevelID] INT NULL,
[IsActive] BIT ,
[CreatedDate] DATETIME DEFAULT GETDATE(),
[UpdatedDate] DATETIME NULL
)
--[TestCategoryID.TestCategory.ID] [QuestionTypeID.QuestionType.ID] [ExperienceLevelID.ExperienceLevel.ID]
GO

--------------------------------------------
CREATE  TABLE [Option]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(MAX) NOT NULL,
[QuestionID] INT NOT NULL
)
--[QuestionID.Question.ID]
GO

--------------------------------------------------------
CREATE TABLE [QuestionOption]
(
[QuestionID] INT NOT NULL,
[OptionID] INT NOT NULL
)
--[QuestionID.Question.ID] [OptionID.Option.ID]
GO

----------------------------------------------------
CREATE TABLE [Test]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NULL,
[UserID] INT NOT NULL,
[StartTime] DATETIME NULL,
[EndTime] DATETIME NULL,
[CreatedByID] INT NOT NULL,
[CreatedDate] DATETIME DEFAULT GETDATE(),
[UpdatedDate] DATETIME NULL
)
--[UserID.User.ID] [CreatedByID.User.ID]
GO

--------------------------------------------------------------------
CREATE TABLE [TestDetail] 
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[TestID] INT NOT NULL,
[TestCategoryID] INT NOT NULL,
[TimeOut] FLOAT DEFAULT 0 NOT NULL,
[StartTime] DATETIME NULL,
[EndTime] DATETIME NULL,
[Score] FLOAT DEFAULT 0 NULL,
[TestResultID] INT DEFAULT 1 NOT NULL,
[CreatedDate] DATETIME DEFAULT GETDATE(),
[UpdatedDate] DATETIME NULL
)
--[TestID.Test.ID] [TestCategoryID.TestCategory.ID] [TestResultID.TestResult.ID]
GO

---------------------------------------------------------------------------
CREATE TABLE [TestDetailQuestionOption]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[TestDetailID] INT NOT NULL,
[QuestionID] INT NOT NULL,
[OptionID] INT DEFAULT 0
)
--[TestDetailID.TestDetail.ID] [QuestionID.Question.ID] [OptionID.Option.ID]
--------------------------------------------------------------------------
CREATE TABLE [NotificationType]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(300) NOT NULL
)

INSERT INTO NotificationType VALUES ('New User Added');
INSERT INTO NotificationType VALUES ('New Test Report Ready');

--------------------------------------------------------------------------
CREATE TABLE [Notification]
(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[NotificationTypeID] INT NOT NULL,
[UserID] INT NOT NULL
)
--[NotificationTypeID.Notification.ID] [ UserID.User.ID]

-------------------------------------------FOREGIN KEYS

--[UserProfile]
ALTER TABLE [UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_UserProfile_User] FOREIGN KEY([UserID]) REFERENCES [User]([ID])
GO
ALTER TABLE [UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_UserProfile_ExperienceLevel] FOREIGN KEY([ExperienceLevelID]) REFERENCES [ExperienceLevel]([ID])
GO

--UserSkill
--[UserID.User.ID] [SkillID.Skill.ID]
ALTER TABLE [UserSkill]  WITH NOCHECK ADD  CONSTRAINT [FK_UserSkill_Skill] FOREIGN KEY([SkillID]) REFERENCES [Skill]([ID])
GO
ALTER TABLE [UserSkill]  WITH NOCHECK ADD  CONSTRAINT [FK_UserSkill_User] FOREIGN KEY([UserID]) REFERENCES [User]([ID])
GO

--UserRole
--[UserID.User.ID] [RoleID.Role.ID]
ALTER TABLE [UserRole] WITH NOCHECK ADD CONSTRAINT [FK_UserRole_User] FOREIGN KEY ([UserID]) REFERENCES [User]([ID])
GO
ALTER TABLE [UserRole] WITH NOCHECK ADD CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleID]) REFERENCES [Role]([ID])
GO

--Question
--[TestCategoryID.TestCategory.ID] [QuestionTypeID.QuestionType.ID] [ExperienceLevelID.ExperienceLevel.ID]
ALTER TABLE [Question] WITH NOCHECK ADD CONSTRAINT [FK_Question_TestCategory] FOREIGN KEY ([TestCategoryID]) REFERENCES [TestCategory]([ID])
GO
ALTER TABLE [Question] WITH NOCHECK ADD CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY ([QuestionTypeID]) REFERENCES [QuestionType]([ID])
GO
ALTER TABLE [Question] WITH NOCHECK ADD CONSTRAINT [FK_Question_ExperienceLevel] FOREIGN KEY ([ExperienceLevelID]) REFERENCES [ExperienceLevel]([ID])
GO

--Option
--[QuestionID.Question.ID]
ALTER TABLE [Option] WITH NOCHECK ADD CONSTRAINT [FK_Option_Question] FOREIGN KEY ([QuestionID]) REFERENCES [Question]([ID])
GO

--QuestionOption
--[QuestionID.Question.ID] [OptionID.Option.ID]
ALTER TABLE [QuestionOption] WITH NOCHECK ADD CONSTRAINT [FK_QuestionOption_Question] FOREIGN KEY ([QuestionID]) REFERENCES [Question]([ID])
GO
ALTER TABLE [QuestionOption] WITH NOCHECK ADD CONSTRAINT [FK_QuestionOption_Option] FOREIGN KEY ([OptionID]) REFERENCES [Option]([ID])
GO

--Test
--[UserID.User.ID]  [CreatedByID.User.ID]
ALTER TABLE [Test] WITH NOCHECK ADD CONSTRAINT [FK_Test_User] FOREIGN KEY ([UserID]) REFERENCES [User]([ID]) 
ALTER TABLE [Test] WITH NOCHECK ADD CONSTRAINT [FK_Test_CreatedBy_User] FOREIGN KEY ([CreatedByID]) REFERENCES [User]([ID]) 

GO

--TestDetail
--[TestID.Test.ID] [TestCategoryID.TestCategory.ID]  [TestResultID.TestResult.ID]
ALTER TABLE [TestDetail] WITH NOCHECK ADD CONSTRAINT [FK_TestDetail_Test] FOREIGN KEY ([TestID]) REFERENCES [Test]([ID]) 
GO
ALTER TABLE [TestDetail] WITH NOCHECK ADD CONSTRAINT [FK_TestDetail_TestCategory] FOREIGN KEY ([TestCategoryID]) REFERENCES [TestCategory]([ID]) 
GO
ALTER TABLE [TestDetail] WITH NOCHECK ADD CONSTRAINT [FK_TestDetail_TestResult] FOREIGN KEY ([TestResultID]) REFERENCES [TestResult]([ID]) 
GO

--TestDetailQuestionOption
--[TestDetailID.TestDetail.ID] [QuestionID.Question.ID] [OptionID.Option.ID]
ALTER TABLE [TestDetailQuestionOption] WITH NOCHECK ADD CONSTRAINT [FK_TestDetailQuestionOption_TestDetail] FOREIGN KEY ([TestDetailID]) REFERENCES [TestDetail]([ID]) 
GO
ALTER TABLE [TestDetailQuestionOption] WITH NOCHECK ADD CONSTRAINT [FK_TestDetailQuestionOption_Question] FOREIGN KEY ([QuestionID]) REFERENCES [Question]([ID]) 
GO
ALTER TABLE [TestDetailQuestionOption] WITH NOCHECK ADD CONSTRAINT [FK_TestDetailQuestionOption_Option] FOREIGN KEY ([OptionID]) REFERENCES [Option]([ID]) 
GO

--Notification
--[NotificationTypeID.Notification.ID] [ UserID.User.ID]
ALTER TABLE [Notification] WITH NOCHECK ADD CONSTRAINT [FK_Notifiction_NotificationType] FOREIGN KEY (NotificationTypeID) REFERENCES [Notification]([ID])
GO
ALTER TABLE [Notification] WITH NOCHECK ADD CONSTRAINT [FK_Notifiction_User] FOREIGN KEY (UserID) REFERENCES [User](ID)
GO

---------------------------------SetupData

------------------------------Lookup Selects------------------




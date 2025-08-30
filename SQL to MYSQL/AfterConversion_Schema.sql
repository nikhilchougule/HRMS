
/* SQLINES DEMO *** atabase [HRMS]    Script Date: 12-06-2025 20:31:55 ******/
CREATE DATABASE `HRMS`;

USE `HRMS`;
 
/* SQLINES DEMO *** able [dbo].[ExperienceLevel]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES FOR EVALUATION USE ONLY (14 DAYS)
CREATE TABLE `ExperienceLevel`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(200) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Notification]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Notification`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`NotificationTypeID` int NOT NULL,
	`UserID` int NOT NULL,
	`CreatedDate` datetime(3) NULL DEFAULT now(3),
	`IsActive` Tinyint NULL DEFAULT 0,
	`URL` nvarchar(200) NULL,
	`Message` Longtext NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
) ;
/* SQLINES DEMO *** able [dbo].[NotificationType]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `NotificationType`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Option]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Option`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` Longtext NOT NULL,
	`QuestionID` int NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
) ;
/* SQLINES DEMO *** able [dbo].[Question]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Question`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` Longtext NOT NULL,
	`TestCategoryID` int NOT NULL,
	`QuestionTypeID` int NULL,
	`ExperienceLevelID` int NULL,
	`IsActive` Tinyint NULL,
	`CreatedDate` datetime(3) NULL DEFAULT now(3),
	`UpdatedDate` datetime(3) NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
) ;
/* SQLINES DEMO *** able [dbo].[QuestionOption]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `QuestionOption`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`QuestionID` int NOT NULL,
	`OptionID` int NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[QuestionType]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `QuestionType`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Role]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Role`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(200) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Skill]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Skill`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Status]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Status`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[Test]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `Test`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NULL,
	`UserID` int NOT NULL,
	`StartTime` datetime(3) NULL,
	`EndTime` datetime(3) NULL,
	`CreatedByID` int NULL,
	`StatusID` int NOT NULL,
	`CreatedDate` datetime(3) NULL DEFAULT now(3),
	`UpdatedDate` datetime(3) NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[TestCategory]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `TestCategory`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[TestDetail]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `TestDetail`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`TestID` int NOT NULL,
	`TestCategoryID` int NOT NULL,
	`TimeOut` Double NOT NULL DEFAULT 0,
	`StartTime` datetime(3) NULL,
	`EndTime` datetime(3) NULL,
	`Score` Double NULL DEFAULT 0,
	`TestResultID` int NOT NULL DEFAULT 1,
	`CreatedDate` datetime(3) NULL DEFAULT now(3),
	`UpdatedDate` datetime(3) NULL,
	`QuestionsCount` int NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[TestDetailQuestionOption]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `TestDetailQuestionOption`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`TestDetailID` int NOT NULL,
	`QuestionID` int NOT NULL,
	`OptionID` int NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[TestResult]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `TestResult`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(100) NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[User]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `User`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`Name` nvarchar(300) NOT NULL,
	`Email` nvarchar(300) NOT NULL,
	`MobileNumber` nvarchar(30) NOT NULL,
	`PasswordHash` Longblob NOT NULL,
	`PasswordSalt` Longblob NOT NULL,
	`CreatedDate` datetime(3) NULL DEFAULT now(3),
	`UpdatedDate` datetime(3) NULL,
	`IsApproved` Tinyint NULL DEFAULT 0,
	`IsActive` Tinyint NULL DEFAULT 0,
PRIMARY KEY 
(
	`ID` ASC
) ,
UNIQUE 
(
	`Email` ASC
) 
) ;
/* SQLINES DEMO *** able [dbo].[UserProfile]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `UserProfile`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`UserID` int NOT NULL,
	`ExperienceLevelID` int NULL,
	`TotalExperience` Double NULL,
	`Company` nvarchar(300) NULL,
	`Designation` nvarchar(100) NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[UserRole]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `UserRole`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`UserID` int NOT NULL,
	`RoleID` int NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* SQLINES DEMO *** able [dbo].[UserSkill]    Script Date: 12-06-2025 20:31:56 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE `UserSkill`(
	`ID` int AUTO_INCREMENT NOT NULL,
	`UserID` int NOT NULL,
	`SkillID` int NOT NULL,
PRIMARY KEY 
(
	`ID` ASC
) 
);
/* Moved to CREATE TABLE
ALTER TABLE `Notification` ADD  DEFAULT (now(3)) FOR `CreatedDate`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `Notification` ADD  DEFAULT ((0)) FOR `IsActive`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `Question` ADD  DEFAULT (now(3)) FOR `CreatedDate`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `Test` ADD  DEFAULT (now(3)) FOR `CreatedDate`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `TestDetail` ADD  DEFAULT ((0)) FOR `TimeOut`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `TestDetail` ADD  DEFAULT ((0)) FOR `Score`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `TestDetail` ADD  DEFAULT ((1)) FOR `TestResultID`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `TestDetail` ADD  DEFAULT (now(3)) FOR `CreatedDate`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `User` ADD  DEFAULT (now(3)) FOR `CreatedDate`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `User` ADD  DEFAULT ((0)) FOR `IsApproved`
GO */
/* Moved to CREATE TABLE
ALTER TABLE `User` ADD  DEFAULT ((0)) FOR `IsActive`
GO */
ALTER TABLE `Notification` ADD  CONSTRAINT `FK_Notifiction_NotificationType` FOREIGN KEY(`NotificationTypeID`)
REFERENCES `NotificationType` (`ID`);
 
/* ALTER TABLE `Notification` CHECK CONSTRAINT `FK_Notifiction_NotificationType`; */
 
ALTER TABLE `Notification` ADD  CONSTRAINT `FK_Notifiction_User` FOREIGN KEY(`UserID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `Notification` CHECK CONSTRAINT `FK_Notifiction_User`; */
 
ALTER TABLE `Option` ADD  CONSTRAINT `FK_Option_Question` FOREIGN KEY(`QuestionID`)
REFERENCES `Question` (`ID`);
 
/* ALTER TABLE `Option` CHECK CONSTRAINT `FK_Option_Question`; */
 
ALTER TABLE `Question` ADD  CONSTRAINT `FK_Question_ExperienceLevel` FOREIGN KEY(`ExperienceLevelID`)
REFERENCES `ExperienceLevel` (`ID`);
 
/* ALTER TABLE `Question` CHECK CONSTRAINT `FK_Question_ExperienceLevel`; */
 
ALTER TABLE `Question` ADD  CONSTRAINT `FK_Question_QuestionType` FOREIGN KEY(`QuestionTypeID`)
REFERENCES `QuestionType` (`ID`);
 
/* ALTER TABLE `Question` CHECK CONSTRAINT `FK_Question_QuestionType`; */
 
ALTER TABLE `Question` ADD  CONSTRAINT `FK_Question_TestCategory` FOREIGN KEY(`TestCategoryID`)
REFERENCES `TestCategory` (`ID`);
 
/* ALTER TABLE `Question` CHECK CONSTRAINT `FK_Question_TestCategory`; */
 
ALTER TABLE `QuestionOption` ADD  CONSTRAINT `FK_QuestionOption_Option` FOREIGN KEY(`OptionID`)
REFERENCES `Option` (`ID`);
 
/* ALTER TABLE `QuestionOption` CHECK CONSTRAINT `FK_QuestionOption_Option`; */
 
ALTER TABLE `QuestionOption` ADD  CONSTRAINT `FK_QuestionOption_Question` FOREIGN KEY(`QuestionID`)
REFERENCES `Question` (`ID`);
 
/* ALTER TABLE `QuestionOption` CHECK CONSTRAINT `FK_QuestionOption_Question`; */
 
ALTER TABLE `Test` ADD  CONSTRAINT `FK_Test_CreatedBy_User` FOREIGN KEY(`CreatedByID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `Test` CHECK CONSTRAINT `FK_Test_CreatedBy_User`; */
 
ALTER TABLE `Test` ADD  CONSTRAINT `FK_Test_Status` FOREIGN KEY(`StatusID`)
REFERENCES `Status` (`ID`);
 
/* ALTER TABLE `Test` CHECK CONSTRAINT `FK_Test_Status`; */
 
ALTER TABLE `Test` ADD  CONSTRAINT `FK_Test_User` FOREIGN KEY(`UserID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `Test` CHECK CONSTRAINT `FK_Test_User`; */
 
ALTER TABLE `TestDetail` ADD  CONSTRAINT `FK_TestDetail_Test` FOREIGN KEY(`TestID`)
REFERENCES `Test` (`ID`);
 
/* ALTER TABLE `TestDetail` CHECK CONSTRAINT `FK_TestDetail_Test`; */
 
ALTER TABLE `TestDetail` ADD  CONSTRAINT `FK_TestDetail_TestCategory` FOREIGN KEY(`TestCategoryID`)
REFERENCES `TestCategory` (`ID`);
 
/* ALTER TABLE `TestDetail` CHECK CONSTRAINT `FK_TestDetail_TestCategory`; */
 
ALTER TABLE `TestDetail` ADD  CONSTRAINT `FK_TestDetail_TestResult` FOREIGN KEY(`TestResultID`)
REFERENCES `TestResult` (`ID`);
 
/* ALTER TABLE `TestDetail` CHECK CONSTRAINT `FK_TestDetail_TestResult`; */
 
ALTER TABLE `TestDetailQuestionOption` ADD  CONSTRAINT `FK_TestDetailQuestionOption_Option` FOREIGN KEY(`OptionID`)
REFERENCES `Option` (`ID`);
 
/* ALTER TABLE `TestDetailQuestionOption` CHECK CONSTRAINT `FK_TestDetailQuestionOption_Option`; */
 
ALTER TABLE `TestDetailQuestionOption` ADD  CONSTRAINT `FK_TestDetailQuestionOption_Question` FOREIGN KEY(`QuestionID`)
REFERENCES `Question` (`ID`);
 
/* ALTER TABLE `TestDetailQuestionOption` CHECK CONSTRAINT `FK_TestDetailQuestionOption_Question`; */
 
ALTER TABLE `TestDetailQuestionOption` ADD  CONSTRAINT `FK_TestDetailQuestionOption_TestDetail` FOREIGN KEY(`TestDetailID`)
REFERENCES `TestDetail` (`ID`);
 
/* ALTER TABLE `TestDetailQuestionOption` CHECK CONSTRAINT `FK_TestDetailQuestionOption_TestDetail`; */
 
ALTER TABLE `UserProfile` ADD  CONSTRAINT `FK_UserProfile_ExperienceLevel` FOREIGN KEY(`ExperienceLevelID`)
REFERENCES `ExperienceLevel` (`ID`);
 
/* ALTER TABLE `UserProfile` CHECK CONSTRAINT `FK_UserProfile_ExperienceLevel`; */
 
ALTER TABLE `UserProfile` ADD  CONSTRAINT `FK_UserProfile_User` FOREIGN KEY(`UserID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `UserProfile` CHECK CONSTRAINT `FK_UserProfile_User`; */
 
ALTER TABLE `UserRole` ADD  CONSTRAINT `FK_UserRole_Role` FOREIGN KEY(`RoleID`)
REFERENCES `Role` (`ID`);
 
/* ALTER TABLE `UserRole` CHECK CONSTRAINT `FK_UserRole_Role`; */
 
ALTER TABLE `UserRole` ADD  CONSTRAINT `FK_UserRole_User` FOREIGN KEY(`UserID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `UserRole` CHECK CONSTRAINT `FK_UserRole_User`; */
 
ALTER TABLE `UserSkill` ADD  CONSTRAINT `FK_UserSkill_Skill` FOREIGN KEY(`SkillID`)
REFERENCES `Skill` (`ID`);
 
/* ALTER TABLE `UserSkill` CHECK CONSTRAINT `FK_UserSkill_Skill`; */
 
ALTER TABLE `UserSkill` ADD  CONSTRAINT `FK_UserSkill_User` FOREIGN KEY(`UserID`)
REFERENCES `User` (`ID`);
 
/* ALTER TABLE `UserSkill` CHECK CONSTRAINT `FK_UserSkill_User`; */
 


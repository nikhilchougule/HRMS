USE [HRMS]
GO

/****** Object:  View [dbo].[vw_UsersByRole]    Script Date: 19-02-2025 16:01:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER   VIEW [dbo].[vw_UsersByRole]

AS 

	  SELECT 
	  [User].[Name], 
	  [User].[Email], 
	  [User].[MobileNumber], 
	  [User].[IsActive], 
	  [User].[IsApproved], 
	  [UserProfile].[Company],
	  [UserProfile].[Designation],
	  [UserProfile].[TotalExperience],
	  [User].[CreatedDate], 
	  [User].[UpdatedDate] ,
	  [Role].[Name] AS [Role],
	  [ExperienceLevel].[Name] AS [ExperienceLevel]
	  --[Skill].[Name] AS [Skill]
	  FROM [User] 
	  LEFT JOIN [UserRole] ON [UserRole].UserID = [User].[ID] 
	  LEFT JOIN [Role] ON [Role].[ID] = [UserRole].[RoleID]
	  LEFT JOIN [UserProfile] ON [UserProfile].[UserID] = [User].[ID]
	  LEFT JOIN [ExperienceLevel] ON [ExperienceLevel].[ID] = [UserProfile].[ExperienceLevelID]
	  --LEFT JOIN [UserSkill] ON [UserSkill].[UserID] = [User].[ID]
	  --LEFT JOIN [Skill] ON [Skill].[ID] = [UserSkill].[SkillID]

GO



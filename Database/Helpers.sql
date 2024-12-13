--USE HRMS

--Further Design
--Question-ExperienceLevel 1-Many
--Question-Skill 1-Many

truncate table [User]
truncate table [UserRole]
delete from [UserRole]
delete from [User]

--update [User] Set IsApproved=1
--update [User] Set IsActive=1

--DBCCINDENT 
SELECT * FROM [Skill]
SELECT * FROM [User] ORDER BY CreatedDate DESC
SELECT * FROM [UserRole]
SELECT * FROM TestCategory
SELECT * FROM Test
SELECT * FROM TestDetail
SELECT * FROM TestDetailQuestionOption
SELECT * FROM TestResult

SELECT * FROM [Madiba_Onboarding].[dbo].TestCategory
SELECT * FROM [Madiba_Onboarding].[dbo].TestMaster ORDER BY CreatedDate DESC
SELECT * FROM [Madiba_Onboarding].[dbo].TestDetails
SELECT * FROM [Madiba_Onboarding].[dbo].TestMasterTestCategories




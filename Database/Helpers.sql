USE HRMS

SELECT * FROM ExperienceLevel
SELECT * FROM UserProfile
SELECT * FROM [Role]

select * from [User]

truncate table [User]

delete from [User]
delete from [UserRole]

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

select * from [UserRole]
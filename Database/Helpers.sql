--USE HRMS

--Further Design
--Question-ExperienceLevel 1-Many
--Question-Skill 1-Many

truncate table [User]
truncate table [UserRole]

delete from [UserProfile]
delete from [UserSkill]
delete from [Notification]
delete from [UserRole]
delete from [User]
delete from [HRMS].dbo.TestDetailQuestionOption
delete from [HRMS].dbo.TestDetail
delete from [HRMS].dbo.Test

--update [User] Set IsApproved=1
--update [User] Set IsActive=1

--DBCCINDENT 
SELECT * FROM [Skill]
SELECT * FROM [User] ORDER BY CreatedDate DESC
SELECT * FROM [Role]
SELECT * FROM [UserRole]
SELECT * FROM TestCategory
SELECT * FROM Test
SELECT * FROM TestDetail
SELECT * FROM TestDetailQuestionOption
SELECT * FROM TestResult

select * from ExperienceLevel

--New Users

select * from UserProfile

update [User] SET Email='admin@hotmail.com' IsActive=1, IsApproved=1

---Create --Update Users
select * from [UserProfile]
select * from [ExperienceLevel]

select * from [User]
select * from [UserProfile]
select * from [UserSkill]
select * from [UserRole]

select * from [User] 
select * from [Role]
select * from [UserRole]
select * from [UserProfile]

--delete from [UserProfile]
--delete from [UserRole]
--delete from [UserSkill]
--delete from [User]

select * from Test
select * from TestDetail
select * from TestResult

SELECT * FROM Test 

SELECT [User].ID AS UserID, [User].[Name], [Test].ID AS TestID, [Test].[Name], [TestResult].[Name], [Test].[CreatedDate] FROM [Test] LEFT JOIN [User] ON [Test].UserID = [User].[ID] LEFT JOIN [TestResult] ON [TestResult].ID = [Test].TestResultID

--------------------------------Aptitude Tests---------------------------------
select * from [Test]
select * from [TestDetail]
select * from [TestDetailQuestionOption]

--Adding Test--
--UserID, TestCategoryID, TimeOut
--Test.CreatedDate, Test.CreatedByID, Test.StatusID, 

select * from [TestCategory]

ALTER TABLE Test ALTER COLUMN CreatedByID int NULL

select * from [Status]

select * from [UserProfile]

select * from [User] Order by CreatedDate DESC
select * from [UserRole]
select * from [Role]

select * from [Status]
select * from TestResult

update Test set StatusID=1


In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence. \r\n That which cannot be corrected

select * from TestDetail
select * from TestDetailQuestionOption
select * from QuestionOption
select * from Question
select * from [Option]

select * from TestResult
select * from Status
select * from NotificationType
select * from [Notification]
select * from [User]
--delete from TestDetailQuestionOption
--delete from TestDetail
--delete from Test
--delete from [UserProfile]
--delete from [UserRole]
--delete from [UserSkill]
--delete from [User]


  select * from [User] order by ID desc
  select * from [UserRole] order by ID desc
  select * from [Role]

  select * from Notification
  select * from NotificationType

  delete from Notification

  select * from [UserProfile] order by ID desc
  select * from [UserSkill]order by ID desc
  select * from [Skill] 
  select * from [UserRole] order by ID desc
  select * from [Role]

  select * from [Notification]
  select * from TestDetailQuestionOption
  select * from TestDetail
  select * from Test

  select * from TestCategory
  select * from Question
  delete from [Notification]

  delete from TestDetailQuestionOption Where TestDetailID IN (select  ID From TestDetail Where TestID IN (Select ID From Test Where UserID = 36 ) )
  delete from TestDetail Where TestID IN (Select ID From Test Where UserID = 36)
  delete from Test Where UserID = 36
  
  delete from TestDetailQuestionOption
  delete from TestDetail
  delete from Test
  
  delete from UserRole
  delete from UserSkill
  delete from UserProfile
  delete from [User]

  update Test set StatusID=1

  update [User] Set IsActive=1, IsApproved=1



  delete from [HRMS].dbo.TestDetailQuestionOption
  DBCC CHECKIDENT ('[HRMS].dbo.TestDetailQuestionOption', RESEED, 0);
  delete from [HRMS].dbo.TestDetail
    DBCC CHECKIDENT ('[HRMS].dbo.TestDetail', RESEED, 0);
  delete from [HRMS].dbo.Test
    DBCC CHECKIDENT ('[HRMS].dbo.Test', RESEED, 0);
  delete from [HRMS].dbo.QuestionOption
    DBCC CHECKIDENT ('[HRMS].dbo.QuestionOption', RESEED, 0);
  delete from [HRMS].dbo.[Option]
    DBCC CHECKIDENT ('[HRMS].dbo.[Option]', RESEED, 0);
  delete from [HRMS].dbo.Question
    DBCC CHECKIDENT ('[HRMS].dbo.Question', RESEED, 0);
  delete from [HRMS].dbo.TestCategory
    DBCC CHECKIDENT ('[HRMS].dbo.TestCategory', RESEED, 0);

	select * from [HRMS].dbo.TestCategory
	select * from [MADIBA_ONBOARDING].dbo.TestCategory


	--Populate Question Options from MADIBA DB

	--select * from Questions
	--select * from [HRMS].dbo.Question

	--select * from [Options]
	--select * from [HRMS].dbo.[Option]

	--select * from [Questions_Lnk_Answers]
	--select * from [QuestionOption]

	--TestCategory Populate
	select * from TestCategory
	SELECT [Name] from [MADIBA_ONBOARDING].dbo.TestCategory

	SET IDENTITY_INSERT [HRMS].dbo.TestCategory ON
	GO
	INSERT INTO [HRMS].dbo.TestCategory (Id, Name)  SELECT Id, [Name] from [MADIBA_ONBOARDING].dbo.TestCategory
	GO
	SET IDENTITY_INSERT [HRMS].dbo.TestCategory OFF
	GO

	--Questions Populate
	select * from MADIBA_ONBOARDING.dbo.Questions
	select * from [HRMS].dbo.Question

	--SET IDENTITY_INSERT [HRMS].dbo.Question ON
	--GO

	--INSERT INTO [HRMS].dbo.Question 
	--(
	--ID,
	--[Name], 
	--TestCategoryID, 
	--QuestionTypeID, 
	--ExperienceLevelID, 
	--IsActive)
	--SELECT 
	--Questions.Id,
	--Questions.[Question],
	--TestCategory.ID,
	--1,
	--1,
	--1
	--FROM MADIBA_ONBOARDING.dbo.Questions
	--INNER JOIN TestCategory ON TestCategory.ID = Questions.TestCategoryId

	--GO
	--SET IDENTITY_INSERT [HRMS].dbo.Question OFF
	--GO

	--Options Poulate
	select * from MADIBA_ONBOARDING.dbo.[Options]
	select * from [HRMS].dbo.[Option]

	--SET IDENTITY_INSERT [HRMS].dbo.[Option] ON
	--GO

	--INSERT INTO  [HRMS].dbo.[Option] 
	--(ID,
	--[Name], 
	--QuestionID
	--)
	--SELECT
	--[Options].Id,
	--[Options].[Option],
	--Questions.Id
	--FROM
	--[Options]
	--INNER JOIN Questions ON Questions.Id = [Options].QuestionId

	--SET IDENTITY_INSERT [HRMS].dbo.[Option] OFf
	--GO


	select * from [MADIBA_ONBOARDING].dbo.[Questions_Lnk_Answers]
	select * from [QuestionOption]
	

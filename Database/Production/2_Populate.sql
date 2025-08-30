USE [HRMS]
GO

INSERT INTO TestResult VALUES ('Passed');
INSERT INTO TestResult VALUES ('Failed');
INSERT INTO TestResult VALUES ('Not Attempted');

INSERT INTO [Status] VALUES ('Pending');
INSERT INTO [Status] VALUES ('In Progress');
INSERT INTO [Status] VALUES ('Completed');

INSERT INTO [Role] VALUES ('Administrator');
INSERT INTO [Role] VALUES ('HR');
INSERT INTO [Role] VALUES ('Employee');
INSERT INTO [Role] VALUES ('Applicant');
INSERT INTO [Role] VALUES ('No Role Assigned');

INSERT INTO Skill VALUES ('SAP FICO')
INSERT INTO Skill VALUES ('SAP ABAP')
INSERT INTO Skill VALUES ('SAP BASIS')
INSERT INTO Skill VALUES ('SAP BW')
INSERT INTO Skill VALUES ('SAP BPC')
INSERT INTO Skill VALUES ('SAP PP/QM')
INSERT INTO Skill VALUES ('SAP SD/OTC')
INSERT INTO Skill VALUES ('SAP MM')
INSERT INTO Skill VALUES ('Share Point Developer')
INSERT INTO Skill VALUES ('Power BI Developer')
INSERT INTO Skill VALUES ('Tableau Report Developer')
INSERT INTO Skill VALUES ('Power App Developer')
INSERT INTO Skill VALUES ('Dot Net Developer')
INSERT INTO Skill VALUES ('iOS Developer')
INSERT INTO Skill VALUES ('UI/UX Developer')
INSERT INTO Skill VALUES ('Full Stack Developer')
INSERT INTO Skill VALUES ('Sales Force Developer')
INSERT INTO Skill VALUES ('QA Automation')
INSERT INTO Skill VALUES ('Android Developer')
INSERT INTO Skill VALUES ('PHP Developer')
INSERT INTO Skill VALUES ('System Administrator')
INSERT INTO Skill VALUES ('Accounts/Finance Manager')
INSERT INTO Skill VALUES ('Accounts Executive')
INSERT INTO Skill VALUES ('HR/Admin')
INSERT INTO Skill VALUES ('Fresher')

INSERT INTO NotificationType VALUES ('New User Added');
INSERT INTO NotificationType VALUES ('New Test Report Ready');
INSERT INTO NotificationType VALUES ('New Applicant Added');
INSERT INTO NotificationType VALUES ('Applicant Started Test');
INSERT INTO NotificationType VALUES ('Applicant Completed Test');

GO
SET IDENTITY_INSERT [dbo].[ExperienceLevel] ON 
GO
INSERT [dbo].[ExperienceLevel] ([ID], [Name]) VALUES (1, N'Fresher')
GO
INSERT [dbo].[ExperienceLevel] ([ID], [Name]) VALUES (2, N'Intermediate')
GO
INSERT [dbo].[ExperienceLevel] ([ID], [Name]) VALUES (3, N'Experienced')
GO
SET IDENTITY_INSERT [dbo].[ExperienceLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionType] ON 
GO
INSERT [dbo].[QuestionType] ([ID], [Name]) VALUES (1, N'Analytical')
GO
INSERT [dbo].[QuestionType] ([ID], [Name]) VALUES (2, N'Reasoning')
GO
INSERT [dbo].[QuestionType] ([ID], [Name]) VALUES (3, N'Quantitative')
GO
INSERT [dbo].[QuestionType] ([ID], [Name]) VALUES (4, N'Technical - Generic')
GO
INSERT [dbo].[QuestionType] ([ID], [Name]) VALUES (5, N'Technical - Specific')
GO
SET IDENTITY_INSERT [dbo].[QuestionType] OFF
GO
SET IDENTITY_INSERT [dbo].[TestCategory] ON 
GO
INSERT [dbo].[TestCategory] ([ID], [Name]) VALUES (1, N'General Aptitude')
GO
INSERT [dbo].[TestCategory] ([ID], [Name]) VALUES (2, N'SAP FICO')
GO
INSERT [dbo].[TestCategory] ([ID], [Name]) VALUES (3, N'General Finance')
GO
INSERT [dbo].[TestCategory] ([ID], [Name]) VALUES (4, N'SAP MM')
GO
INSERT [dbo].[TestCategory] ([ID], [Name]) VALUES (5, N'SAP SD')
GO
SET IDENTITY_INSERT [dbo].[TestCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (1, N'A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (2, N'Fate smiles ...... those who untiringly grapple with stark realities of life.', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (3, N'Which of phrases given below each sentence should replace the phrase to make the grammatically correct ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (4, N'How much time will it take for an amount of Rs. 450 to yield Rs. 81 as interest at 4.5% per annum of simple interest ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (5, N'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20% ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (6, N'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (7, N'What decimal of an hour is a second ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (8, N'In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence. <br/> That which cannot be corrected', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (9, N'A man has Rs.480 in the denominations of one-rupee notes, five-rupee notes and ten-rupee notes. The number of notes of each denomination is equal. What is the total number of notes that he has ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (10, N'A boat can travel with a speed of 13 km/hr in still water. If the speed of the stream is 4 km/hr, find the time taken by the boat to go 68 km downstream.', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (11, N'39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (12, N'There is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. <br/> Choose the proper sequence. <br/> Since the beginning of history

<br/> P :	have managed to catch
<br/> Q :	the Eskimos and Red Indians
<br/> R :	by a very difficulty method
<br/> S :	a few specimens of this aquatic animal

<br/><br/> The Proper sequence should be:', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (13, N'A man purchased a cow for Rs. 3000 and sold it the same day for Rs. 3600, allowing the buyer a credit of 2 years. If the rate of interest be 10% per annum, then the man has a gain of :', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (14, N'Find the Odd Man Out <br/> 3, 5, 11, 14, 17, 21', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (15, N'Which one of the following is not a prime number ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (16, N'Even if it rains I shall come means ......', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (17, N'In how many different ways can the letters of the word OPTICAL be arranged so that the vowels always come together ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (18, N'How many times in a day, the hands of a clock are straight ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (19, N'A father said to his son, "I was as old as you are at the present at the time of your birth". If the father''s age is 38 years now, the son''s age five years back was :', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (20, N'The workers are hell bent at getting what is due to them.', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (21, N' The length of G/L account number should be mentioned in', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (22, N' The G/L account becomes a complete G/L account', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (23, N' If we are using the same chart of account in more than one company code', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (24, N' The appearance of the company code segment of a G/L account is based on', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (25, N' The appearance of an account master data is based on', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (26, N' Creation of duplicate accounts in A/P can be prevented by using', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (27, N' Which of the following statements are true, when you are considering the major controls of document types', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (28, N' Which of the following statements are true', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (29, N' By mentioning the baseline date, cash discount periods, and cash discount percentage rate in payment terms, system will calculate', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (30, N' R/3 system contains', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (31, N' All data and programs are contained in', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (32, N' Fiscal year can be', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (33, N' Fiscal year which is a calendar year can have', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (34, N' Shortened fiscal year can have', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (35, N' Company code can have', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (36, N' Postings in a company code are done in G/L account of', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (37, N' Retained earnings account is', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (38, N' Which of the following statements is true', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (39, N'State which of the following is true in relation to SAP features', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (40, N' Posting in a G/L account is controlled by', 2, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (41, N'Which type of balance should a Cash Account or Bank Account have?
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (42, N'What is the accounting entry when I pay Rent by Cash?
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (43, N'Which of these is a Subledger Account?', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (44, N'Can I charge Depreciation on Land?
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (45, N'Which financial statement shows the position of a company at a particular point in time
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (46, N'What type of Account is Deferred Revenue
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (47, N'What is rule for Personal accounts
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (48, N'What is rule for Real accounts
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (49, N'What is rule for Nominal accounts
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (50, N'What type of balance should a Prepaid Insurance account have?
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (51, N'What type of balance should a Expense Provision account have
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (52, N'What is the accounting entry for Salary received in advance?
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (53, N'Which is not an example of a GL account
', 3, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (61, N'A plant is assigned to which entity ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (62, N'At which level physical inventory is carried out in Inventory Management ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (63, N'Which of the following does not apply to Purchase Orders?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (64, N'Which of the following is an Account Assignment Category ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (65, N'Which of the following is not an Item Category ? ', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (66, N'In Source list which of the following can not be a source of supply ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (67, N'Between which of the following stocks movement is possible ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (68, N'The stocks that did not belong to company and these are being kept at some particular location is known as?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (69, N'Which of the following is known as an invitation that is sent to vendors to submit indicating pricing and their terms and conditions?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (70, N'Which of the following Stock types can not be counted through physical inventory ?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (71, N'Which MRP procedures is not available in MM-CBP (Consumption Based Planning)?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (72, N'Which is the top most level of the organizational levels of the Enterprise Structure in R/3?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (73, N'Is it possible that you can use scales in Quotation?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (74, N'What is not stock transfer type in SAP', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (75, N'What is the last step in Procurement cycle?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (76, N'Can a material be used after flagging it for deletion', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (77, N'If you have a multi-lineitem PO, can you release the PO item by item?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (78, N'What is not a stock valuation methods?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (79, N'Can you manually generate a Purchase Requisition referencing a Purchase Order or a Scheduling Agreement?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (80, N'Can you add custom fields to POs and RFQs?', 4, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (85, N'Sales Area is a combination of', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (86, N'Division is assigned to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (87, N'Item Category Determination Parameters are', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (88, N'Material type FERT stands for', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (89, N'Number range assignment of sales document is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (90, N'How is Pricing Procedure determined', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (91, N'The relationship between company code and sales organization is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (92, N'T-code for creating delivery document is ', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (93, N'When a consignment order is created the delivery is done to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (94, N'Select the correct option for Header Conditions', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (95, N'If a pricing condition is set as ''Statistical'' in the pricing procedure, then', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (96, N'Shipping Point Determination is based on', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (97, N'SD is closely integrated with', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (98, N'Delivery creation requires a mandatory', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (99, N'T-code for displaying quotation is ', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (100, N'T-code for creation of customer master is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (101, N'T-code for creating Customer Material Info Record (CMIR) is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (102, N'The term OTC stands for?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (103, N'Types of scheduling in SAP', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (104, N'Billing document is an integration of', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (105, N'Relationship between Credit Control Area and Company Code is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (106, N'Parameters used for account determination are', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (107, N'T-code to cancel goods issue is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (108, N'Cancellation billing type for invoice type F1 is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (109, N'How is a material extended to a new view', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (110, N'T-code to manually confirm the production order operations is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (112, N'The output for handling units can be previewed through t-code', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (113, N'In partner determination, partner types are assigned to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (114, N'Table for handling unit item is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (115, N'Condition tables are maintained under', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (116, N'Accounting entry for PGI is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (117, N'In text determination, text ids are defined under', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (118, N'Movement type for schedule line category ''CN'' is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (119, N'A condition is a header or item condition is set in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (120, N'Picking status is set to B when', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (121, N'Availability check in the sales order is carried out at', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (122, N'Conversion of UOM in materal master is set in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (123, N'T-code to test Idoc is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (124, N'How is Pricing Procedure determined', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (125, N'Automatic Delivery config is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (126, N'Access Sequence in Pricing is assigned to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (127, N'Table for Invoice header data is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (128, N'T-code to change the field status for customer master is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (129, N'The table for delivery item data is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (130, N'Company code data for customer can be fetched from the table', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (131, N'T-code to reverse goods issue is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (132, N'Material Type VERP stands for', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (133, N'The error "No Pricing Procedure could be determined" while creating a sales order is an error due to missing', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (134, N'Number range assignment for customer master is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (135, N'Configuration for carrying out pricing at the item level is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (136, N'Is it possible to allocate different sales organizations within a similar company code?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (137, N'How can you define Cross-company Stock Transfer?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (138, N'T-code to maintain customer material info record', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (139, N'Proforma billing type', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (140, N'T-code for creating inbound delivery from PO', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (141, N'T-code for account determination', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (142, N'The error "No Pricing Procedure could be determined" while creating a sales order is an error due to missing', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (143, N'Number range assignment for customer master is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (144, N'Configuration for carrying out pricing at the item level is done in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (145, N'The error "Delivery has not been completely picked/put away" occurs due to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (146, N'Type of billing for an order is configured at', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (147, N'Ownweship of Consignment stock belongs to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (148, N'Changed T-code for customer master creation in S/4 Hana', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (149, N'Item Category Group in material master for third party sales is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (150, N'T-code for creating outbound delivery from PO', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (151, N'How to copy the text from customer master to sales documents', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (152, N'Condition records for billing output are maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (153, N'Condition records for HU output are maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (154, N'UOM conversion in material master is maintained under Additional data in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (155, N'Options for mass change of material master are', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (156, N'How can you define Cross-company Stock Transfer?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (157, N'Sales Order to Invoice copy control is maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (158, N'Delivery to Invoice copy control is maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (159, N'Table for Customer Material Info Record', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (160, N'Is it possible to allocate different sales organizations within a similar company code?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (161, N'How can you define Cross-company Stock Transfer?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (162, N'Sales Order to Invoice copy control is maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (163, N'Delivery to Invoice copy control is maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (164, N'Where can partner profiles be maintained for idoc', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (165, N'Table for Customer Material Info Record', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (166, N'Header table for handling unit', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (167, N'Which function is used to check the ablity to deliver the customer’s desired product on his desired timeline', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (168, N'Item Category Group in material master for third party sales is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (169, N'Table to display credit limit for customer', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (170, N'Where are partner functions stored?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (171, N'Invoice Reference Number is related to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (172, N'If a condition type is set as statistical in pricing procedure it means', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (173, N'Effects of billing in SAP SD', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (174, N'Types of pre sales activities in SAP', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (175, N'Copy control can be set at which of the following levels?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (176, N'What are the different activities under consignment stock?', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (177, N'BOM usage for sales BOM is', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (178, N'Condition records for billing output are maintained in', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (179, N'Changed T-code for customer master creation in S/4 Hana', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (180, N'Rebate Management in S/4 Hana is changed to', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (181, N'Credit Management in S/4 Hana is moved under', 5, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Option] ON 
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (1, N'3.6', 1)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (2, N'7.2', 1)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (3, N'8.4', 1)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (4, N'10', 1)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (5, N'with', 2)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (6, N'over', 2)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (7, N'on', 2)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (8, N'round', 2)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (9, N'You dont need to come unless you want to', 3)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (10, N'You come only when you want to', 3)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (11, N'You come unless you dont want to', 3)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (12, N'No Correction Required', 3)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (13, N'3.5', 4)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (14, N'4', 4)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (15, N'4.5', 4)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (16, N'5', 4)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (17, N'3', 5)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (18, N'4', 5)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (19, N'5', 5)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (20, N'6', 5)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (21, N'4', 6)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (22, N'8', 6)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (23, N'10', 6)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (24, N'None of these', 6)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (25, N'0.0025', 7)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (26, N'0.0256', 7)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (27, N'0.00027', 7)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (28, N'0.000126', 7)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (29, N'Unintelligible', 8)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (30, N'Indelible', 8)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (31, N'Illegible', 8)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (32, N'Incorrigible', 8)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (33, N'45', 9)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (34, N'60', 9)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (35, N'75', 9)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (36, N'90', 9)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (37, N'2 Hours', 10)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (38, N'3 Hours', 10)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (39, N'4 Hours', 10)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (40, N'5 Hours', 10)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (41, N'10', 11)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (42, N'13', 11)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (43, N'14', 11)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (44, N'15', 11)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (45, N'QRPS', 12)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (46, N'SQPR', 12)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (47, N'SQRP', 12)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (48, N'QPSR', 12)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (49, N'0 %', 13)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (50, N'5 %', 13)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (51, N'7.5 %', 13)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (52, N'10 %', 13)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (53, N'21', 14)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (54, N'17', 14)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (55, N'14', 14)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (56, N'3', 14)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (57, N'31', 15)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (58, N'61', 15)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (59, N'71', 15)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (60, N'91', 15)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (61, N'if I come it will not rain', 16)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (62, N'if it rains I shall not come', 16)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (63, N'I will certainly come whether it rains or not', 16)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (64, N'whenever there is rain I shall come', 16)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (65, N'120', 17)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (66, N'720', 17)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (67, N'4320', 17)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (68, N'2160', 17)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (69, N'22', 18)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (70, N'24', 18)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (71, N'44', 18)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (72, N'48', 18)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (73, N'14 Years', 19)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (74, N'19 Years', 19)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (75, N'33 Years', 19)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (76, N'38 Years', 19)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (77, N'hell bent on getting', 20)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (78, N'hell bent for getting', 20)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (79, N'hell bent upon getting', 20)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (80, N'No improvement', 20)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (81, N'G/L account groups', 21)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (82, N'G/L account', 21)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (83, N'Chart of accounts', 21)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (84, N'None of the above', 21)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (85, N'if we have added the company code segment to chart of account segment', 22)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (86, N'if we have created both company code segment and chart of account segment centrally', 22)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (87, N'if we have created chart of account', 22)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (88, N' if we have copied the chart of account segment from other company code', 22)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (89, N'the company code segments are same in all company codes', 23)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (90, N' the account name and account number is the same in all company codes', 23)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (91, N'the currency in company code segment in all company codes is the same', 23)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (92, N'the group account number is different in all company codes', 23)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (93, N'account group entered in the chart of account segment', 24)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (94, N'group account number entered in chart of account segment', 24)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (95, N'assignment of group chart of account in chart of account', 24)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (96, N'none of the above', 24)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (97, N'account number', 25)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (98, N' field status', 25)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (99, N'chart of account', 25)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (100, N'none of the above', 25)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (101, N' the match code before creating the new account', 26)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (102, N' sensitive dual control', 26)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (103, N'none of the above', 26)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (104, N'the account types allowed for postings', 27)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (105, N'posting keys', 27)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (106, N'none of the above', 27)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (107, N'posting keys are defined at client level', 28)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (108, N'account types allow line item postings based on the posting key', 28)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (109, N'field status definition ‘suppressed’ and ‘required’ can be combined', 28)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (110, N' due date of the invoice and cash discount', 29)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (111, N'due date only', 29)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (112, N'cash discount only', 29)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (113, N'none of the above', 29)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (114, N'data base server only', 30)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (115, N'application server only', 30)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (116, N'presentation server only', 30)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (117, N'all of the above', 30)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (118, N'application server', 31)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (119, N'Presentation server', 31)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (120, N'none of the above', 31)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (121, N'year dependent', 32)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (122, N' year independent', 32)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (123, N' both year dependent and year independent', 32)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (124, N'12 normal periods', 33)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (125, N'less than 12 normal periods', 33)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (126, N'more than 12 normal periods', 33)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (127, N'12 periods', 34)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (128, N'more than 12 periods', 34)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (129, N'less than 12 periods', 34)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (130, N'should have less than 12 periods', 34)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (131, N'two local currencies', 35)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (132, N' any no. of local currencies', 35)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (133, N'one local currency only', 35)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (134, N'none of the above', 35)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (135, N'consolidation chart of accounts', 36)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (136, N'operative chart of accounts', 36)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (137, N'country chart of accounts', 36)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (138, N'all of the above', 36)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (139, N'specific to company code', 37)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (140, N'specific to client', 37)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (141, N'specific to chart of accounts', 37)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (142, N'none of the above', 37)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (143, N'company can use indirect exchange rate only', 38)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (144, N'company use direct exchange rate only', 38)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (145, N'company can use both direct and indirect exchange rates', 38)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (146, N' business areas are company code specific', 39)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (147, N'business areas are assigned to company codes', 39)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (148, N'business areas are used for reporting across company codes', 39)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (149, N'none of the above', 39)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (150, N'account group of the G/L account', 40)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (151, N'field status group in the chart of accounts segment', 40)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (152, N'field status group in the company code segment', 40)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (153, N'all of the above', 40)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (264, N'Debit', 41)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (265, N'Credit', 41)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (266, N'Both', 41)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (267, N'Dr. Cash  and Cr. Rent', 42)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (268, N'Dr. Owner and Cr. Cash', 42)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (269, N'Dr. Rent and Cr. Cash', 42)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (270, N'Stock', 43)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (271, N'Customer', 43)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (273, N'Bank', 43)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (275, N'Yes', 44)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (276, N'No', 44)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (277, N'Sometimes', 44)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (278, N'Trial Balance', 45)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (279, N' Balance Sheet', 45)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (280, N'Profit & Loss Account', 45)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (281, N'Asset', 46)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (282, N'Income', 46)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (283, N'Liability', 46)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (284, N'Expense', 46)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (285, N'Debit what comes In and Credit what goes Out', 47)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (286, N'Debit Income and Credit Expense', 47)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (287, N'Debit Receiver and Credit Giver', 47)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (288, N'Debit what comes In and Credit what goes Out', 48)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (289, N'Debit Income and Credit Expense', 48)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (290, N'Debit Receiver and Credit Giver', 48)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (291, N'Debit what comes In and Credit what goes Out', 49)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (292, N'Debit Income and Credit Expense', 49)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (293, N'Debit Receiver and Credit Giver', 49)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (294, N'Debit Expense and Credit Income', 49)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (295, N'Credit', 50)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (296, N'Debit', 50)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (297, N'Neither', 50)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (298, N'Both', 50)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (299, N'Debit', 51)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (300, N'Credit', 51)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (301, N'Both', 51)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (302, N'Dr. Salary and Cr. Advance', 52)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (303, N'Dr. Cash and Cr. Salary', 52)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (304, N'Dr. Cash and Cr. Salary Advance', 52)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (305, N'Dr. Salary and Cr. Cash', 52)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (306, N'Furniture and Fixture', 53)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (307, N'Accumulated Profits', 53)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (308, N'Loan from Bank', 53)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (309, N'Contingent Liability', 53)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (310, N'Company code', 61)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (311, N'Storage Location', 61)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (312, N'G/L Account', 61)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (313, N'Warehouse', 61)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (314, N'Material level', 62)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (315, N'Material/Stock type level', 62)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (316, N'Material/Plant/Stock type Level', 62)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (317, N'Material/Plant/Storage Location/Stock Type Level', 62)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (318, N'Vendor mandatory in PO header', 63)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (319, N'All materials must be of same material group', 63)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (320, N'Discount and surchages can be maintained in header', 63)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (321, N'Discount and surchage can be maintained at line item level', 63)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (322, N'Material Group', 64)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (323, N'Purchase Requisition', 64)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (324, N'Sales Order', 64)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (325, N'G/L Account', 64)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (326, N'Consignment', 65)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (327, N'Service', 65)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (328, N'Cost Center', 65)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (329, N'Subcontracting', 65)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (330, N'Vendor', 66)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (331, N'Contract', 66)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (332, N'Scheduling Agreement', 66)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (333, N'Quotation', 66)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (334, N'Unrestricted', 67)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (335, N'Quality', 67)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (336, N'Blocked', 67)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (337, N'All of the above', 67)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (338, N'Internal Stock', 68)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (339, N'External Stock', 68)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (340, N'Special Stock', 68)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (341, N'All of the above', 68)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (342, N'Purchase Order', 69)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (343, N'Sales Order', 69)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (344, N'Request for Quotation', 69)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (345, N'Outline Agreement', 69)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (346, N'Unrestricted user stock', 70)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (347, N'Block Stock', 70)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (348, N'Quality inspection Stock', 70)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (349, N'In-transit stock', 70)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (350, N'Reorder point procedure (VM)', 71)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (351, N'Forecast-based planning (VV)', 71)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (352, N'Time-Phased materials planning (PD)', 71)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (353, N'Consumption based planning (CB)', 71)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (354, N'Plant', 72)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (355, N'Client', 72)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (356, N'Company Code', 72)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (357, N'Purchasing Org', 72)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (358, N'Yes', 73)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (359, N'No', 73)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (360, N'Inter company', 74)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (361, N'Intra company', 74)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (362, N'Intra Plant', 74)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (363, N'Inter Client', 74)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (364, N'Purchase Order', 75)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (365, N'Goods Receipt', 75)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (366, N'Invoice Verification', 75)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (367, N'Vendor Payment', 75)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (368, N'Yes', 76)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (369, N'No', 76)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (370, N'Yes', 77)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (371, N'No', 77)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (372, N'LIFO', 78)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (373, N'FIFO', 78)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (374, N'Lowest Value Method', 78)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (375, N'Highest Value Method', 78)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (376, N'Yes', 79)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (377, N'No', 79)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (378, N'Yes', 80)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (379, N'No', 80)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (380, N'Sales Org - Company Code - Division', 85)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (381, N'Sales Org - Division - Plant', 85)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (382, N'Sales Org - Distribution Channel - Division', 85)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (383, N'Sales Org - Distribution Channel - Storage Location', 85)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (384, N'Sales Organization', 86)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (385, N'Company Code', 86)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (386, N'Division', 86)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (387, N'Plant', 86)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (388, N'Sales Doc Type + Item Category Group', 87)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (389, N'Sales Doc Type + Item Category Group + Higher Level Item Category Group + Item Usage', 87)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (390, N'Sales Org + Sales Doc Type + Item Category Group', 87)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (391, N'Sales Doc Type + Item Category Group + Item Usage + Higher Level Item Category', 87)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (392, N'Semi-finished goods', 88)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (393, N'Finished Goods', 88)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (394, N'Packaging Materials', 88)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (395, N'Raw Materials', 88)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (396, N'Item Category Configuration', 89)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (397, N'Schedule Line Category Configuration', 89)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (398, N'Sales Org configuration', 89)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (399, N'Sales Document Configuration', 89)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (400, N'Sales Org + Customer Pricing Procedure + Document Pricing Procedure', 90)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (401, N'Sales Area + Customer Pricing Procedure + Document Pricing Procedure', 90)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (402, N'Sales Document Type + Item Category', 90)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (403, N'Standard Price in Material Master + Sales Area', 90)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (404, N'Many to one', 91)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (405, N'Many to Many', 91)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (406, N'One to One', 91)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (407, N'One to Many', 91)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (408, N'VA01N', 92)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (409, N'VF01N', 92)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (410, N'VL01N', 92)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (411, N'VD01N', 92)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (412, N'The end customer', 93)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (413, N'A different plant', 93)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (414, N'Special consignment stock', 93)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (415, N'Storage Location', 93)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (416, N'They are applicable to the whole document', 94)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (417, N'They have to be entered only in Header Condition Screen', 94)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (418, N'They have no access sequence', 94)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (419, N'All of the above', 94)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (420, N'The amount will be added to the base price', 95)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (421, N'The amount will be deducted from the base price', 95)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (422, N'The amount will not be considered in the calculation of the Net Price', 95)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (423, N'The amount will be added to the cost price', 95)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (424, N'Shipping Conditions + Loading Group + Plant', 96)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (425, N'Shipping Conditions + Sales Org. + Plant', 96)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (426, N'Shipping Conditions + Transportation Group + Plant', 96)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (427, N'Shipping Conditions + Loading Group + Sales Area', 96)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (428, N'MM', 97)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (429, N'FI', 97)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (430, N'PP', 97)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (431, N'All of the above', 97)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (432, N'Sales Org', 98)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (433, N'Distribution Channel', 98)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (434, N'Shipping Point ', 98)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (435, N'None of the above', 98)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (436, N'VA21', 99)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (437, N'VA22', 99)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (438, N'VA23', 99)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (439, N'All of the above', 99)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (440, N'XD01', 100)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (441, N'VAP1', 100)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (442, N'VA01', 100)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (443, N'VL01N', 100)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (444, N'VD01', 101)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (445, N'VD51', 101)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (446, N'VF01', 101)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (447, N'VA01', 101)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (448, N'Over To Controlling', 102)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (449, N'Off Time Clearance', 102)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (450, N'Order to Cash', 102)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (451, N'None of the above', 102)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (452, N'Backward Scheduling', 103)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (453, N'Forward Scheduling', 103)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (454, N'All of the above', 103)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (455, N'None of the above', 103)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (456, N'SD-MM', 104)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (457, N'SD-FICO', 104)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (458, N'SD-PP', 104)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (459, N'All ove the above', 104)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (460, N'Many to one', 105)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (461, N'Many to Many', 105)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (462, N'One to Many', 105)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (463, N'One to One', 105)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (464, N'Customer Account Assignment Group', 106)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (465, N'Material Account Assignment Group', 106)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (466, N'Chart Of Account', 106)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (467, N'All of the above', 106)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (468, N'VL10', 107)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (469, N'VL09', 107)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (470, N'VL51', 107)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (471, N'VL02', 107)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (472, N'S1', 108)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (473, N'S2', 108)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (474, N'S3', 108)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (475, N'F2', 108)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (476, N'MM02 Extend', 109)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (477, N'MM01 Create', 109)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (478, N'MM01 Extend', 109)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (479, N'MM02 Change', 109)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (480, N'CO08', 110)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (481, N'CO02', 110)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (482, N'CO11N', 110)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (483, N'CO01', 110)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (484, N'VL02', 112)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (485, N'VL03', 112)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (486, N'VL09', 112)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (487, N'VL74', 112)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (488, N'Partner Function', 113)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (489, N'Partner Determination Procedure', 113)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (490, N'Account Groups', 113)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (491, N'All of the above', 113)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (492, N'VBEP', 114)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (493, N'VEPO', 114)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (494, N'LIKP', 114)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (495, N'VBAP', 114)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (496, N'Condition Type', 115)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (497, N'Pricing Procedure', 115)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (498, N'Access Sequence', 115)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (499, N'Field Catalog', 115)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (500, N'Cost Of Goods Sold Dr to Inventory', 116)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (501, N'Sales A/c Dr to customer A/c', 116)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (502, N'Inventory Dr to Cost of Goods Sold', 116)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (503, N'Customer A/c Dr. to Sales A/c', 116)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (504, N'Text Procedure', 117)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (505, N'Access Sequence', 117)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (506, N'Text Function', 117)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (507, N'Text Types', 117)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (508, N'501', 118)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (509, N'561', 118)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (510, N'601', 118)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (511, N'610', 118)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (512, N'Pricing Procedure config', 119)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (513, N'Condition Type Config', 119)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (514, N'VK11', 119)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (515, N'Access Sequence Config', 119)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (516, N'Picking is not carried out', 120)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (517, N'Picking is completed', 120)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (518, N'Picking is partially carried out', 120)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (519, N'PGI is carried out', 120)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (520, N'Header Level', 121)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (521, N'Item Level', 121)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (522, N'Both Header & Item Level', 121)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (523, N'None of the above', 121)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (524, N'Basic Data 1 View', 122)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (525, N'Sales Org 1 View', 122)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (526, N'MRP 1 View', 122)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (527, N'Additional Data', 122)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (528, N'WE19', 123)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (529, N'WE16', 123)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (530, N'WE15', 123)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (531, N'WE20', 123)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (532, N'Sales Org + Customer Pricing Procedure + Document Pricing Procedure', 124)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (533, N'Sales Area + Customer Pricing Procedure + Document Pricing Procedure', 124)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (534, N'Sales Document Type + Item Category', 124)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (535, N'Standard Price in Material Master + Sales Area', 124)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (536, N'Delivery Doc Config', 125)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (537, N'Item Category Config', 125)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (538, N'Sales Document Config', 125)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (539, N'Schedule Lines Config', 125)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (540, N'Pricing Procedure ', 126)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (541, N'Condition Type', 126)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (542, N'Condition Table', 126)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (543, N'None of the above', 126)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (544, N'VBAK', 127)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (545, N'LIKP', 127)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (546, N'VBRK', 127)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (547, N'KNA1', 127)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (548, N'OVKK', 128)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (549, N'OBYC', 128)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (550, N'OVT0', 128)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (551, N'None of the above', 128)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (552, N'VBAP', 129)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (553, N'VBEP', 129)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (554, N'LIKP', 129)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (555, N'LIPS', 129)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (556, N'KNA1', 130)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (557, N'KNVV', 130)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (558, N'KNC1', 130)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (559, N'KNB1', 130)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (560, N'VL02N', 131)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (561, N'VL01N', 131)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (562, N'VL09N', 131)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (563, N'VA02', 131)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (564, N'Packaging Material', 132)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (565, N'Semi-Finished Goods', 132)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (566, N'Raw Materials', 132)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (567, N'Finished Goods', 132)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (568, N'Pricing Procedure Determination', 133)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (569, N'Condition Type', 133)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (570, N'Access Sequence', 133)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (571, N'All of the above', 133)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (572, N'Sales Org Config', 134)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (573, N'Company Code Config', 134)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (574, N'Account Group Config', 134)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (575, N'None of the above', 134)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (576, N'Item Category Configuration', 135)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (577, N'Sales Order Config', 135)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (578, N'Item Category Group Config', 135)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (579, N'All of the above', 135)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (580, N'Yes', 136)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (581, N'No', 136)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (582, N'None of the above', 136)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (583, N'All of the above', 136)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (584, N'Stock from plant of one company code to a plant of another company code', 137)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (585, N'Stock from plant of one company code to another plant of same company code', 137)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (586, N'Stock from one plant to another of the same company code', 137)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (587, N'None of the above', 137)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (588, N'VD51', 138)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (589, N'VD01', 138)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (590, N'XD51', 138)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (591, N'XD01', 138)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (592, N'F5/F8', 139)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (593, N'F2', 139)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (594, N'G2', 139)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (595, N'L2', 139)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (596, N'VL01N', 140)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (597, N'VL01', 140)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (598, N'VL10B', 140)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (599, N'VL31N', 140)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (600, N'VKOA', 141)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (601, N'XD01', 141)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (602, N'XK01', 141)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (603, N'VK13', 141)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (604, N'Pricing Procedure Determination', 142)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (605, N'Condition Type', 142)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (606, N'Access Sequence', 142)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (607, N'Condition Record', 142)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (608, N'Sales Org Config', 143)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (609, N'Company Code Config', 143)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (610, N'Account Group Config', 143)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (611, N'Partner Determination Config', 143)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (612, N'Item Category Configuration', 144)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (613, N'Sales Order Config', 144)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (614, N'Item Category Group Config', 144)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (615, N'Gen. Item Category Group Config', 144)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (616, N'Batch not created', 145)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (617, N'Picked qty not equal to delivery quantity', 145)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (618, N'Delivery block is applied in the order', 145)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (619, N'Packing is not completed', 145)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (620, N'Sales order config', 146)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (621, N'Delivery Document Config', 146)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (622, N'Invoice Document Config', 146)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (623, N'Item Category Config', 146)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (625, N'Consignee', 147)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (626, N'Consigner', 147)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (627, N'End Customer', 147)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (628, N'All of the Above', 147)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (629, N'XD01', 148)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (630, N'BP01', 148)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (631, N'BP', 148)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (632, N'XD02', 148)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (633, N'NORM', 149)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (634, N'BANC', 149)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (635, N'BARC', 149)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (636, N'BANS', 149)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (637, N'VL01N', 150)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (638, N'VL01', 150)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (639, N'VL10B', 150)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (640, N'VL31N', 150)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (641, N'VOTXN', 151)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (642, N'VOPAN', 151)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (643, N'VOK0', 151)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (644, N'VATXN', 151)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (645, N'VV11', 152)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (646, N'VV33', 152)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (647, N'VV22', 152)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (648, N'VK11', 152)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (649, N'NAST', 153)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (650, N'NACE', 153)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (651, N'NACR', 153)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (652, N'WE16', 153)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (653, N'Descriptions', 154)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (654, N'Document Data', 154)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (655, N'Addition EANs', 154)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (656, N'Unit Of Measure Tab', 154)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (657, N'LSMW', 155)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (658, N'MM17', 155)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (659, N'MASS', 155)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (660, N'All of the above', 155)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (661, N'Stock from plant of one company code to a plant of another company code', 156)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (662, N'Stock from plant of one company code to another plant of same company code', 156)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (663, N'Stock from one plant to another of the same company code', 156)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (664, N'None of the above', 156)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (665, N'VTFA', 157)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (666, N'VTAA', 157)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (667, N'VTLL', 157)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (668, N'VTFL', 157)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (669, N'VTFL', 158)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (670, N'VTFA', 158)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (671, N'VTAA', 158)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (672, N'VTLF', 158)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (673, N'KNMT', 159)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (674, N'KNVV', 159)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (675, N'KNA1', 159)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (676, N'KNB1', 159)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (677, N'Yes', 160)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (678, N'No', 160)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (679, N'None of the above', 160)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (680, N'All of the above', 160)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (681, N'Stock from plant of one company code to another plant of same company code', 161)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (682, N'Stock from plant of one company code to another plant of same company code', 161)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (683, N'Stock from one plant to another of the same company code', 161)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (684, N'None of the above', 161)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (685, N'VTFA', 162)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (686, N'VTAA', 162)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (687, N'VTLL', 162)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (688, N'VTFL', 162)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (689, N'VTFL', 163)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (690, N'VTFA', 163)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (691, N'VTAA', 163)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (692, N'VTLF', 163)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (693, N'WE20', 164)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (694, N'WE16', 164)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (695, N'WE19', 164)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (696, N'NACE', 164)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (697, N'KNMT', 165)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (698, N'KNVV', 165)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (699, N'KNB1', 165)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (700, N'KNA1', 165)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (701, N'VEKP', 166)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (702, N'VEPO', 166)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (703, N'VBFA', 166)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (704, N'VERP', 166)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (705, N'ATP Check', 167)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (706, N'MRP', 167)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (707, N'Batch Management', 167)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (708, N'Schedule Lines', 167)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (709, N'BANS', 168)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (710, N'NORM', 168)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (711, N'BANC', 168)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (712, N'BARC', 168)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (713, N'KNKK', 169)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (714, N'KNVV', 169)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (715, N'KNB1', 169)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (716, N'KNA1', 169)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (717, N'Sales area view of the customer master record', 170)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (718, N'General view of the customer master record', 170)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (719, N'Company code view of the customer master record', 170)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (720, N'Customer-material info record', 170)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (721, N'E-Invoicing(India)', 171)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (722, N'Sales Order', 171)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (723, N'Delivery', 171)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (724, N'Quotation', 171)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (725, N'The condition will not be considered in net price calculations', 172)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (726, N'The condition will be considered as discount', 172)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (727, N'The condition will be considered as base for discount', 172)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (728, N'The condition will be printed in the output', 172)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (729, N'Stock will be updated in the system', 173)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (730, N'Inventory account will be updated', 173)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (731, N'Cost of goods sold account updated & document flow will be updated', 173)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (732, N'All of the above', 173)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (733, N'Inquiry & Quotation', 174)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (734, N'Sales Order', 174)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (735, N'Delivery & Billing', 174)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (736, N'None of the above', 174)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (737, N'Header ', 175)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (738, N'Item', 175)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (739, N'Schedule Lines', 175)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (740, N'All of the above', 175)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (741, N'Stock is fill up at warehouse', 176)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (742, N'Stock issued from the warehouse', 176)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (743, N'Stock return from the customer to manufacturer', 176)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (744, N'All of the above', 176)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (745, N'1', 177)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (746, N'2', 177)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (747, N'5', 177)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (748, N'4', 177)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (749, N'VV12', 178)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (750, N'VV11', 178)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (751, N'VV33', 178)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (752, N'VV22', 178)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (753, N'XD02', 179)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (754, N'XD01', 179)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (755, N'BP01', 179)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (756, N'BP', 179)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (757, N'Credit Management', 180)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (758, N'Settlement Management', 180)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (759, N'Settlement Credit', 180)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (760, N'None of the above', 180)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (761, N'SD', 181)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (762, N'FI', 181)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (763, N'CO', 181)
GO
INSERT [dbo].[Option] ([ID], [Name], [QuestionID]) VALUES (764, N'FSCM', 181)
GO
SET IDENTITY_INSERT [dbo].[Option] OFF

SET IDENTITY_INSERT [dbo].[QuestionOption] ON 
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1, 1, 2)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (2, 2, 7)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (3, 3, 9)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (4, 4, 14)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (5, 5, 19)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (6, 6, 21)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (7, 7, 27)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (8, 8, 32)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (9, 9, 36)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (10, 10, 39)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (11, 11, 42)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (12, 12, 48)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (13, 13, 49)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (14, 14, 55)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (15, 15, 60)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (16, 16, 63)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (17, 17, 66)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (18, 18, 71)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (19, 19, 73)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (20, 20, 79)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (21, 21, 83)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (22, 22, 85)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (23, 23, 90)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (24, 24, 93)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (25, 25, 100)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (26, 26, 101)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (27, 27, 104)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (28, 28, 107)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (29, 29, 110)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (30, 30, 117)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (31, 31, 118)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (32, 32, 123)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (33, 33, 124)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (34, 34, 130)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (35, 35, 133)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (36, 36, 136)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (37, 37, 141)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (38, 38, 145)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (39, 39, 148)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (40, 40, 152)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (41, 41, 264)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (42, 42, 269)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (43, 43, 271)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (44, 44, 276)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (45, 45, 279)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (46, 46, 283)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (47, 47, 287)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (48, 48, 288)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (49, 49, 294)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (50, 50, 296)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (51, 51, 300)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (52, 52, 304)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (53, 53, 309)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (54, 61, 310)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (55, 62, 317)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (56, 63, 319)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (57, 64, 324)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (58, 65, 328)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (59, 66, 333)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (60, 67, 337)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (61, 68, 340)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (62, 69, 344)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (63, 70, 349)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (64, 71, 353)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (65, 72, 355)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (66, 73, 359)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (67, 74, 363)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (68, 75, 366)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (69, 76, 368)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (70, 77, 371)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (71, 78, 375)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (72, 79, 377)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (73, 80, 378)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (74, 85, 382)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (75, 86, 384)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (76, 87, 391)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (77, 88, 393)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (78, 89, 399)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (79, 90, 401)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (80, 91, 407)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (81, 92, 410)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (82, 93, 414)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (83, 94, 419)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (84, 95, 422)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (85, 96, 426)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (86, 97, 428)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (87, 98, 435)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (88, 99, 437)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (89, 100, 443)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (90, 101, 444)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (91, 102, 450)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (92, 103, 454)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (93, 104, 456)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (94, 105, 462)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (95, 106, 467)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (96, 107, 469)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (97, 108, 472)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (98, 109, 478)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (99, 110, 482)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (100, 112, 487)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (101, 113, 488)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (102, 114, 493)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (103, 115, 498)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (104, 116, 500)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (105, 117, 507)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (106, 118, 510)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (107, 119, 513)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (108, 120, 518)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (109, 121, 521)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (110, 122, 527)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (111, 123, 528)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (112, 124, 533)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (113, 125, 538)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (114, 126, 541)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (115, 127, 546)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (116, 128, 550)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (117, 129, 555)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (118, 130, 559)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (119, 131, 562)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (120, 132, 564)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (121, 133, 568)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (122, 134, 574)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (123, 135, 576)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (124, 136, 580)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (125, 137, 584)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (126, 138, 588)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (127, 139, 592)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (128, 140, 599)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (129, 141, 600)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (130, 142, 604)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (131, 143, 610)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (132, 144, 612)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (133, 145, 617)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (134, 146, 620)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (135, 147, 626)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (136, 148, 631)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (137, 149, 636)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (138, 150, 639)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (139, 151, 641)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (140, 152, 646)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (141, 153, 651)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (142, 154, 656)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (143, 155, 660)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (144, 156, 661)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (145, 157, 665)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (146, 158, 669)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (147, 159, 673)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (148, 160, 677)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (149, 161, 681)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (150, 162, 685)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (151, 163, 689)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (152, 164, 693)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (153, 165, 697)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (154, 166, 701)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (155, 167, 705)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (156, 168, 709)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (157, 169, 713)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (158, 170, 717)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (159, 171, 721)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (160, 172, 725)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (161, 173, 732)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (162, 174, 733)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (163, 175, 740)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (164, 176, 744)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (165, 177, 747)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (166, 178, 751)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (167, 179, 756)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (168, 180, 758)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (169, 181, 764)
GO
SET IDENTITY_INSERT [dbo].[QuestionOption] OFF
GO

--Setup User
--Pass Qeros123
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([ID], [Name], [Email], [MobileNumber], [PasswordHash], [PasswordSalt], [CreatedDate], [UpdatedDate], [IsApproved], [IsActive]) VALUES (1, N'System Account', N'system.account@qeros.com', N'+918408065630', 0x6B9D0CDE5F8F4204C1917D8B215D358C993A21CE052A5E57AA1A49E345EE5638C3FDC075278C00FD80F60BCD8E4D64DB2B25BBE5331ACE5374B046AAFD396E4D, 0x9CDFC67435E010E24F38D8807FFFA14E12DE028C7C112785A1625D170B51A6EB84AAC3DD5ABC50B3D3DE7F6D9518141A4CA0592B60184A908240C9743DC68A645B454CA80BAF49A003B291E9482198C173993D6BFC54A134C0BF184766DB6DE4B2D1DDDEB7198A734DA3E402A4592292A2E0D1C4A40AB6096E2EF22C23D70E6A, CAST(N'2025-06-16T19:58:36.633' AS DateTime), NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO

--Setup User Role
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID]) VALUES (1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO

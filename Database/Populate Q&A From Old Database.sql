

USE [HRMS]
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
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (8, N'In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence. \r\n That which cannot be corrected', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (9, N'A man has Rs.480 in the denominations of one-rupee notes, five-rupee notes and ten-rupee notes. The number of notes of each denomination is equal. What is the total number of notes that he has ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (10, N'A boat can travel with a speed of 13 km/hr in still water. If the speed of the stream is 4 km/hr, find the time taken by the boat to go 68 km downstream.', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (11, N'39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work ?', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (12, N'There is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence. \r\n Since the beginning of history

\r\n P :	have managed to catch
\r\n Q :	the Eskimos and Red Indians
\r\n R :	by a very difficulty method
\r\n S :	a few specimens of this aquatic animal

\r\n\r\n The Proper sequence should be:', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (13, N'A man purchased a cow for Rs. 3000 and sold it the same day for Rs. 3600, allowing the buyer a credit of 2 years. If the rate of interest be 10% per annum, then the man has a gain of :', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
GO
INSERT [dbo].[Question] ([ID], [Name], [TestCategoryID], [QuestionTypeID], [ExperienceLevelID], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (14, N'Find the Odd Man Out \r\n 3, 5, 11, 14, 17, 21', 1, 1, 1, 1, CAST(N'2025-04-15T10:55:09.157' AS DateTime), NULL)
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
GO
SET IDENTITY_INSERT [dbo].[QuestionOption] ON 
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (652, 1, 1)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (653, 1, 2)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (654, 1, 3)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (655, 1, 4)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (656, 2, 5)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (657, 2, 6)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (658, 2, 7)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (659, 2, 8)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (660, 3, 9)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (661, 3, 10)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (662, 3, 11)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (663, 3, 12)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (664, 4, 13)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (665, 4, 14)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (666, 4, 15)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (667, 4, 16)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (668, 5, 17)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (669, 5, 18)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (670, 5, 19)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (671, 5, 20)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (672, 6, 21)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (673, 6, 22)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (674, 6, 23)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (675, 6, 24)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (676, 7, 25)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (677, 7, 26)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (678, 7, 27)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (679, 7, 28)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (680, 8, 29)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (681, 8, 30)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (682, 8, 31)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (683, 8, 32)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (684, 9, 33)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (685, 9, 34)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (686, 9, 35)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (687, 9, 36)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (688, 10, 37)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (689, 10, 38)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (690, 10, 39)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (691, 10, 40)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (692, 11, 41)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (693, 11, 42)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (694, 11, 43)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (695, 11, 44)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (696, 12, 45)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (697, 12, 46)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (698, 12, 47)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (699, 12, 48)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (700, 13, 49)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (701, 13, 50)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (702, 13, 51)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (703, 13, 52)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (704, 14, 53)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (705, 14, 54)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (706, 14, 55)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (707, 14, 56)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (708, 15, 57)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (709, 15, 58)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (710, 15, 59)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (711, 15, 60)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (712, 16, 61)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (713, 16, 62)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (714, 16, 63)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (715, 16, 64)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (716, 17, 65)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (717, 17, 66)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (718, 17, 67)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (719, 17, 68)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (720, 18, 69)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (721, 18, 70)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (722, 18, 71)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (723, 18, 72)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (724, 19, 73)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (725, 19, 74)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (726, 19, 75)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (727, 19, 76)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (728, 20, 77)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (729, 20, 78)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (730, 20, 79)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (731, 20, 80)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (732, 21, 81)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (733, 21, 82)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (734, 21, 83)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (735, 21, 84)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (736, 22, 85)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (737, 22, 86)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (738, 22, 87)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (739, 22, 88)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (740, 23, 89)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (741, 23, 90)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (742, 23, 91)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (743, 23, 92)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (744, 24, 93)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (745, 24, 94)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (746, 24, 95)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (747, 24, 96)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (748, 25, 97)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (749, 25, 98)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (750, 25, 99)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (751, 25, 100)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (752, 26, 101)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (753, 26, 102)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (754, 26, 103)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (755, 27, 104)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (756, 27, 105)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (757, 27, 106)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (758, 28, 107)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (759, 28, 108)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (760, 28, 109)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (761, 29, 110)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (762, 29, 111)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (763, 29, 112)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (764, 29, 113)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (765, 30, 114)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (766, 30, 115)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (767, 30, 116)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (768, 30, 117)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (769, 31, 118)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (770, 31, 119)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (771, 31, 120)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (772, 32, 121)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (773, 32, 122)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (774, 32, 123)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (775, 33, 124)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (776, 33, 125)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (777, 33, 126)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (778, 34, 127)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (779, 34, 128)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (780, 34, 129)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (781, 34, 130)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (782, 35, 131)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (783, 35, 132)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (784, 35, 133)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (785, 35, 134)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (786, 36, 135)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (787, 36, 136)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (788, 36, 137)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (789, 36, 138)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (790, 37, 139)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (791, 37, 140)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (792, 37, 141)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (793, 37, 142)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (794, 38, 143)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (795, 38, 144)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (796, 38, 145)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (797, 39, 146)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (798, 39, 147)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (799, 39, 148)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (800, 39, 149)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (801, 40, 150)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (802, 40, 151)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (803, 40, 152)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (804, 40, 153)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (805, 41, 264)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (806, 41, 265)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (807, 41, 266)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (808, 42, 267)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (809, 42, 268)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (810, 42, 269)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (811, 43, 270)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (812, 43, 271)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (813, 43, 273)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (814, 44, 275)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (815, 44, 276)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (816, 44, 277)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (817, 45, 278)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (818, 45, 279)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (819, 45, 280)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (820, 46, 281)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (821, 46, 282)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (822, 46, 283)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (823, 46, 284)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (824, 47, 285)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (825, 47, 286)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (826, 47, 287)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (827, 48, 288)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (828, 48, 289)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (829, 48, 290)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (830, 49, 291)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (831, 49, 292)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (832, 49, 293)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (833, 49, 294)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (834, 50, 295)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (835, 50, 296)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (836, 50, 297)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (837, 50, 298)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (838, 51, 299)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (839, 51, 300)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (840, 51, 301)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (841, 52, 302)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (842, 52, 303)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (843, 52, 304)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (844, 52, 305)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (845, 53, 306)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (846, 53, 307)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (847, 53, 308)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (848, 53, 309)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (849, 61, 310)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (850, 61, 311)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (851, 61, 312)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (852, 61, 313)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (853, 62, 314)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (854, 62, 315)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (855, 62, 316)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (856, 62, 317)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (857, 63, 318)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (858, 63, 319)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (859, 63, 320)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (860, 63, 321)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (861, 64, 322)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (862, 64, 323)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (863, 64, 324)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (864, 64, 325)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (865, 65, 326)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (866, 65, 327)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (867, 65, 328)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (868, 65, 329)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (869, 66, 330)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (870, 66, 331)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (871, 66, 332)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (872, 66, 333)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (873, 67, 334)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (874, 67, 335)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (875, 67, 336)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (876, 67, 337)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (877, 68, 338)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (878, 68, 339)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (879, 68, 340)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (880, 68, 341)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (881, 69, 342)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (882, 69, 343)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (883, 69, 344)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (884, 69, 345)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (885, 70, 346)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (886, 70, 347)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (887, 70, 348)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (888, 70, 349)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (889, 71, 350)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (890, 71, 351)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (891, 71, 352)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (892, 71, 353)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (893, 72, 354)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (894, 72, 355)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (895, 72, 356)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (896, 72, 357)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (897, 73, 358)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (898, 73, 359)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (899, 74, 360)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (900, 74, 361)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (901, 74, 362)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (902, 74, 363)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (903, 75, 364)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (904, 75, 365)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (905, 75, 366)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (906, 75, 367)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (907, 76, 368)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (908, 76, 369)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (909, 77, 370)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (910, 77, 371)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (911, 78, 372)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (912, 78, 373)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (913, 78, 374)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (914, 78, 375)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (915, 79, 376)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (916, 79, 377)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (917, 80, 378)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (918, 80, 379)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (919, 85, 380)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (920, 85, 381)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (921, 85, 382)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (922, 85, 383)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (923, 86, 384)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (924, 86, 385)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (925, 86, 386)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (926, 86, 387)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (927, 87, 388)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (928, 87, 389)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (929, 87, 390)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (930, 87, 391)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (931, 88, 392)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (932, 88, 393)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (933, 88, 394)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (934, 88, 395)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (935, 89, 396)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (936, 89, 397)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (937, 89, 398)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (938, 89, 399)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (939, 90, 400)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (940, 90, 401)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (941, 90, 402)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (942, 90, 403)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (943, 91, 404)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (944, 91, 405)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (945, 91, 406)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (946, 91, 407)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (947, 92, 408)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (948, 92, 409)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (949, 92, 410)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (950, 92, 411)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (951, 93, 412)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (952, 93, 413)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (953, 93, 414)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (954, 93, 415)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (955, 94, 416)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (956, 94, 417)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (957, 94, 418)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (958, 94, 419)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (959, 95, 420)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (960, 95, 421)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (961, 95, 422)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (962, 95, 423)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (963, 96, 424)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (964, 96, 425)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (965, 96, 426)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (966, 96, 427)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (967, 97, 428)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (968, 97, 429)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (969, 97, 430)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (970, 97, 431)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (971, 98, 432)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (972, 98, 433)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (973, 98, 434)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (974, 98, 435)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (975, 99, 436)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (976, 99, 437)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (977, 99, 438)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (978, 99, 439)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (979, 100, 440)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (980, 100, 441)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (981, 100, 442)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (982, 100, 443)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (983, 101, 444)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (984, 101, 445)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (985, 101, 446)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (986, 101, 447)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (987, 102, 448)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (988, 102, 449)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (989, 102, 450)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (990, 102, 451)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (991, 103, 452)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (992, 103, 453)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (993, 103, 454)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (994, 103, 455)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (995, 104, 456)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (996, 104, 457)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (997, 104, 458)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (998, 104, 459)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (999, 105, 460)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1000, 105, 461)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1001, 105, 462)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1002, 105, 463)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1003, 106, 464)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1004, 106, 465)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1005, 106, 466)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1006, 106, 467)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1007, 107, 468)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1008, 107, 469)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1009, 107, 470)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1010, 107, 471)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1011, 108, 472)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1012, 108, 473)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1013, 108, 474)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1014, 108, 475)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1015, 109, 476)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1016, 109, 477)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1017, 109, 478)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1018, 109, 479)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1019, 110, 480)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1020, 110, 481)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1021, 110, 482)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1022, 110, 483)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1023, 112, 484)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1024, 112, 485)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1025, 112, 486)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1026, 112, 487)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1027, 113, 488)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1028, 113, 489)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1029, 113, 490)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1030, 113, 491)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1031, 114, 492)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1032, 114, 493)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1033, 114, 494)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1034, 114, 495)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1035, 115, 496)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1036, 115, 497)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1037, 115, 498)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1038, 115, 499)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1039, 116, 500)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1040, 116, 501)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1041, 116, 502)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1042, 116, 503)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1043, 117, 504)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1044, 117, 505)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1045, 117, 506)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1046, 117, 507)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1047, 118, 508)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1048, 118, 509)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1049, 118, 510)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1050, 118, 511)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1051, 119, 512)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1052, 119, 513)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1053, 119, 514)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1054, 119, 515)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1055, 120, 516)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1056, 120, 517)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1057, 120, 518)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1058, 120, 519)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1059, 121, 520)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1060, 121, 521)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1061, 121, 522)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1062, 121, 523)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1063, 122, 524)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1064, 122, 525)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1065, 122, 526)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1066, 122, 527)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1067, 123, 528)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1068, 123, 529)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1069, 123, 530)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1070, 123, 531)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1071, 124, 532)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1072, 124, 533)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1073, 124, 534)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1074, 124, 535)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1075, 125, 536)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1076, 125, 537)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1077, 125, 538)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1078, 125, 539)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1079, 126, 540)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1080, 126, 541)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1081, 126, 542)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1082, 126, 543)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1083, 127, 544)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1084, 127, 545)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1085, 127, 546)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1086, 127, 547)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1087, 128, 548)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1088, 128, 549)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1089, 128, 550)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1090, 128, 551)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1091, 129, 552)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1092, 129, 553)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1093, 129, 554)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1094, 129, 555)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1095, 130, 556)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1096, 130, 557)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1097, 130, 558)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1098, 130, 559)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1099, 131, 560)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1100, 131, 561)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1101, 131, 562)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1102, 131, 563)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1103, 132, 564)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1104, 132, 565)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1105, 132, 566)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1106, 132, 567)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1107, 133, 568)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1108, 133, 569)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1109, 133, 570)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1110, 133, 571)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1111, 134, 572)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1112, 134, 573)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1113, 134, 574)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1114, 134, 575)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1115, 135, 576)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1116, 135, 577)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1117, 135, 578)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1118, 135, 579)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1119, 136, 580)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1120, 136, 581)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1121, 136, 582)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1122, 136, 583)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1123, 137, 584)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1124, 137, 585)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1125, 137, 586)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1126, 137, 587)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1127, 138, 588)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1128, 138, 589)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1129, 138, 590)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1130, 138, 591)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1131, 139, 592)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1132, 139, 593)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1133, 139, 594)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1134, 139, 595)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1135, 140, 596)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1136, 140, 597)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1137, 140, 598)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1138, 140, 599)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1139, 141, 600)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1140, 141, 601)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1141, 141, 602)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1142, 141, 603)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1143, 142, 604)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1144, 142, 605)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1145, 142, 606)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1146, 142, 607)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1147, 143, 608)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1148, 143, 609)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1149, 143, 610)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1150, 143, 611)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1151, 144, 612)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1152, 144, 613)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1153, 144, 614)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1154, 144, 615)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1155, 145, 616)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1156, 145, 617)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1157, 145, 618)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1158, 145, 619)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1159, 146, 620)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1160, 146, 621)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1161, 146, 622)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1162, 146, 623)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1163, 147, 625)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1164, 147, 626)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1165, 147, 627)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1166, 147, 628)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1167, 148, 629)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1168, 148, 630)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1169, 148, 631)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1170, 148, 632)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1171, 149, 633)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1172, 149, 634)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1173, 149, 635)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1174, 149, 636)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1175, 150, 637)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1176, 150, 638)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1177, 150, 639)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1178, 150, 640)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1179, 151, 641)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1180, 151, 642)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1181, 151, 643)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1182, 151, 644)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1183, 152, 645)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1184, 152, 646)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1185, 152, 647)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1186, 152, 648)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1187, 153, 649)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1188, 153, 650)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1189, 153, 651)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1190, 153, 652)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1191, 154, 653)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1192, 154, 654)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1193, 154, 655)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1194, 154, 656)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1195, 155, 657)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1196, 155, 658)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1197, 155, 659)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1198, 155, 660)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1199, 156, 661)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1200, 156, 662)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1201, 156, 663)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1202, 156, 664)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1203, 157, 665)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1204, 157, 666)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1205, 157, 667)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1206, 157, 668)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1207, 158, 669)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1208, 158, 670)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1209, 158, 671)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1210, 158, 672)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1211, 159, 673)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1212, 159, 674)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1213, 159, 675)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1214, 159, 676)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1215, 160, 677)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1216, 160, 678)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1217, 160, 679)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1218, 160, 680)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1219, 161, 681)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1220, 161, 682)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1221, 161, 683)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1222, 161, 684)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1223, 162, 685)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1224, 162, 686)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1225, 162, 687)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1226, 162, 688)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1227, 163, 689)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1228, 163, 690)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1229, 163, 691)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1230, 163, 692)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1231, 164, 693)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1232, 164, 694)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1233, 164, 695)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1234, 164, 696)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1235, 165, 697)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1236, 165, 698)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1237, 165, 699)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1238, 165, 700)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1239, 166, 701)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1240, 166, 702)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1241, 166, 703)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1242, 166, 704)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1243, 167, 705)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1244, 167, 706)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1245, 167, 707)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1246, 167, 708)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1247, 168, 709)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1248, 168, 710)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1249, 168, 711)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1250, 168, 712)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1251, 169, 713)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1252, 169, 714)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1253, 169, 715)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1254, 169, 716)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1255, 170, 717)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1256, 170, 718)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1257, 170, 719)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1258, 170, 720)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1259, 171, 721)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1260, 171, 722)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1261, 171, 723)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1262, 171, 724)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1263, 172, 725)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1264, 172, 726)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1265, 172, 727)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1266, 172, 728)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1267, 173, 729)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1268, 173, 730)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1269, 173, 731)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1270, 173, 732)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1271, 174, 733)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1272, 174, 734)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1273, 174, 735)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1274, 174, 736)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1275, 175, 737)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1276, 175, 738)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1277, 175, 739)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1278, 175, 740)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1279, 176, 741)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1280, 176, 742)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1281, 176, 743)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1282, 176, 744)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1283, 177, 745)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1284, 177, 746)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1285, 177, 747)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1286, 177, 748)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1287, 178, 749)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1288, 178, 750)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1289, 178, 751)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1290, 178, 752)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1291, 179, 753)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1292, 179, 754)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1293, 179, 755)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1294, 179, 756)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1295, 180, 757)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1296, 180, 758)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1297, 180, 759)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1298, 180, 760)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1299, 181, 761)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1300, 181, 762)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1301, 181, 763)
GO
INSERT [dbo].[QuestionOption] ([ID], [QuestionID], [OptionID]) VALUES (1302, 181, 764)
GO
SET IDENTITY_INSERT [dbo].[QuestionOption] OFF
GO

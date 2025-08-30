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

INSERT INTO [ExperienceLevel] VALUES ('Fresher');
INSERT INTO [ExperienceLevel] VALUES ('Intermediate');
INSERT INTO [ExperienceLevel] VALUES ('Experienced');

INSERT INTO Skill VALUES ('SAP FICO')
INSERT INTO Skill VALUES ('AP ABAP')
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

INSERT INTO [QuestionType] VALUES ('Analytical');
INSERT INTO [QuestionType] VALUES ('Reasoning');
INSERT INTO [QuestionType] VALUES ('Quantitative');
INSERT INTO [QuestionType] VALUES ('Technical - Generic');
INSERT INTO [QuestionType] VALUES ('Technical - Specific');

INSERT INTO NotificationType VALUES ('New User Added');
INSERT INTO NotificationType VALUES ('New Test Report Ready');
INSERT INTO NotificationType VALUES ('New Applicant Added');
INSERT INTO NotificationType VALUES ('Applicant Started Test');
INSERT INTO NotificationType VALUES ('Applicant Completed Test');

INSERT INTO TestCategory VALUES ('General Aptitude');
INSERT INTO TestCategory VALUES ('SAP FICO');
INSERT INTO TestCategory VALUES ('General Finance');
INSERT INTO TestCategory VALUES ('SAP MM');
INSERT INTO TestCategory VALUES ('SAP SD');

--USE [HRMS]
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([ID], [Name], [Email], [MobileNumber], [PasswordHash], [PasswordSalt], [CreatedDate], [UpdatedDate], [IsApproved], [IsActive]) VALUES (1, N'Nikhil Amar Chougule', N'nikhil.chougule@qeros.com', N'8408065630', 0x54F9BC26B74BBC163C8791D758B4B8990AE430B880839AA57C80043F88447A3D5AF08E22440C80ECEA285664D8FFAD5C7B75F5434572E9FEFC498DE7C4914FC1, 0xBD1B939FAE35EE5EB4F02167CEF4C2AAF44010570C30B4B26BEF5EF4B46E85FD541CAC31126874116488FC1A45F294C3BA3B86EDEEE1FB02DB3D8989F835FD7857844C090BE2D80EF736756A45F29F0FF186D67BCF93CC04B8BB92E492A3D1CA77EC2DD57073449B9F6B4C916BB9EA7C36935852B87E09119E8FE9BA2D3F813B, CAST(N'2025-03-11T16:28:37.850' AS DateTime), NULL, 1, 1)
GO
INSERT [dbo].[User] ([ID], [Name], [Email], [MobileNumber], [PasswordHash], [PasswordSalt], [CreatedDate], [UpdatedDate], [IsApproved], [IsActive]) VALUES (2, N'Trupti Jagdale', N'tsj1@ntrs.com', N'9561648600', 0x84776A22B7A53B233967530B03592922DA81DBAF119CD6C666DB6F5EBE2B4BD837EF2911601C7AE57D21F81BFE1B9D27B8DDCF8426599879329265A6AD401957, 0x7F06D12317C1663A53F2C0ED85CC19F1D30528F66C299C11A762F88897FBBB8FF128F4DF9B0B688B93525419D0D3AFD2FFF2B5244DC415F8527C4E28998FC78E9A58D8ADC6A8835EA651AC1ED518671AE54D5A1BBEC2CB2C3E0078399A3D65600E8F1DCD599DCCD89CE2DB4645B0C1EB2226E2F0ED0D103087C0F8C1E49410C1, CAST(N'2025-03-11T16:29:03.083' AS DateTime), NULL, 1, 1)
GO
INSERT [dbo].[User] ([ID], [Name], [Email], [MobileNumber], [PasswordHash], [PasswordSalt], [CreatedDate], [UpdatedDate], [IsApproved], [IsActive]) VALUES (3, N'Dipti Jagdale', N'dsj1@ntrs.com', N'9999999999', 0xA821E9687149E337637B7CB7CCA4D0B1F46568A87D438960134BD9A743031B87543855E29288D9026CBDB0BACA928BD331595894E49B93BCCE5F73952A939155, 0xF35924E4CF592B854BA6F8AFCF7B747F50F858691BC352969454DC30A1F1A2B9648141C52AC5BA532983AFFAC18F3162F55C485424723F1CF81F39C743DD5B7358115D694B86BAEC63FCA8AACE03D5FF3836A8916E3A04D8F47035E2E1CB17611B7382A6177D31AD4EBDED9162AEE3FBB21814D95CB3967D818349CA43330FF6, CAST(N'2025-03-11T16:29:35.780' AS DateTime), NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 
GO
INSERT [dbo].[UserProfile] ([ID], [UserID], [ExperienceLevelID], [TotalExperience], [Company], [Designation]) VALUES (1, 1, 2, 10, N'Qeros Software Consulting Pvt Ltd', N'Senior Consultant Level II')
GO
INSERT [dbo].[UserProfile] ([ID], [UserID], [ExperienceLevelID], [TotalExperience], [Company], [Designation]) VALUES (2, 2, 1, 4, N'Northern Trust', N'Senior Consultant')
GO
INSERT [dbo].[UserProfile] ([ID], [UserID], [ExperienceLevelID], [TotalExperience], [Company], [Designation]) VALUES (3, 3, 3, 20, N'CNHE', N'CEO')
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID]) VALUES (2, 2, 4)
GO
INSERT [dbo].[UserRole] ([ID], [UserID], [RoleID]) VALUES (3, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[UserSkill] ON 
GO
INSERT [dbo].[UserSkill] ([ID], [UserID], [SkillID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[UserSkill] ([ID], [UserID], [SkillID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[UserSkill] ([ID], [UserID], [SkillID]) VALUES (3, 2, 3)
GO
INSERT [dbo].[UserSkill] ([ID], [UserID], [SkillID]) VALUES (4, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[UserSkill] OFF
GO


INSERT INTO Question VALUES ('SAP SD Question 1', 1, 5, 1, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('SAP SD Question 2', 1, 5, 1, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('.Net Question 1', 2, 5, 2, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('.Net Question 2', 2, 5, 2, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('General Question 1', 4, 1, 1, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('General Question 2', 4, 2, 2, 1, GETDATE(), NULL)
INSERT INTO Question VALUES ('General Question 3', 4, 3, 3, 1, GETDATE(), NULL)

INSERT INTO [Option] VALUES ('Question 1 Option 1', 1)
INSERT INTO [Option] VALUES ('Question 1 Option 2', 1)
INSERT INTO [Option] VALUES ('Question 1 Option 3', 1)
INSERT INTO [Option] VALUES ('Question 1 Option 4', 1)

INSERT INTO [Option] VALUES ('Question 2 Option 1', 2)
INSERT INTO [Option] VALUES ('Question 2 Option 2', 2)
INSERT INTO [Option] VALUES ('Question 2 Option 3', 2)
INSERT INTO [Option] VALUES ('Question 2 Option 4', 2)

INSERT INTO [Option] VALUES ('Question 3 Option 1', 3)
INSERT INTO [Option] VALUES ('Question 3 Option 2', 3)
INSERT INTO [Option] VALUES ('Question 3 Option 3', 3)
INSERT INTO [Option] VALUES ('Question 3 Option 4', 3)

INSERT INTO [Option] VALUES ('Question 4 Option 1', 4)
INSERT INTO [Option] VALUES ('Question 4 Option 2', 4)
INSERT INTO [Option] VALUES ('Question 4 Option 3', 4)
INSERT INTO [Option] VALUES ('Question 4 Option 4', 4)

INSERT INTO [Option] VALUES ('Question 5 Option 1', 5)
INSERT INTO [Option] VALUES ('Question 5 Option 2', 5)
INSERT INTO [Option] VALUES ('Question 5 Option 3', 5)
INSERT INTO [Option] VALUES ('Question 5 Option 4', 5)

INSERT INTO [Option] VALUES ('Question 6 Option 1', 6)
INSERT INTO [Option] VALUES ('Question 6 Option 2', 6)
INSERT INTO [Option] VALUES ('Question 6 Option 3', 6)
INSERT INTO [Option] VALUES ('Question 6 Option 4', 6)

INSERT INTO [Option] VALUES ('Question 7 Option 1', 7)
INSERT INTO [Option] VALUES ('Question 7 Option 2', 7)
INSERT INTO [Option] VALUES ('Question 7 Option 3', 7)
INSERT INTO [Option] VALUES ('Question 7 Option 4', 7)

INSERT INTO QuestionOption VALUES (1, 4)
INSERT INTO QuestionOption VALUES (2, 6)
INSERT INTO QuestionOption VALUES (3, 9)
INSERT INTO QuestionOption VALUES (4, 14)
INSERT INTO QuestionOption VALUES (5, 20)
INSERT INTO QuestionOption VALUES (6, 21)
INSERT INTO QuestionOption VALUES (7, 27)


INSERT INTO Test VALUES ('App Test', 1, GETDATE(), GETDATE(), 2, 1, GETDATE(), NULL)
INSERT INTO Test VALUES ('App Test 1', 2, GETDATE(), GETDATE(), 2, 2, GETDATE(), NULL)
INSERT INTO Test VALUES ('App Test 2', 2, GETDATE(), GETDATE(), 2, 3, GETDATE(), NULL)
INSERT INTO Test VALUES ('App Test 1', 3, GETDATE(), GETDATE(), 2, 2, GETDATE(), NULL)
INSERT INTO Test VALUES ('App Test 2', 3, GETDATE(), GETDATE(), 2, 3, GETDATE(), NULL)


using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.ViewModel.AptitudeTest;
using HRMS.ViewModel.Common;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Implementation
{
    public class AptitudeTestRepository : IAptitudeTestRepository
    {
        private readonly HRMSDBContext _context;

        public AptitudeTestRepository(HRMSDBContext context)
        {
            _context = context;
        }

        public string AddAptitudeTest(TestViewModel testViewModel)
        {
            int applicantId = _context.Users
                .Where(x => x.Name == testViewModel.ApplicantName)
                .Select(x => x.Id)
                .FirstOrDefault();

            Test test = new Test
            {
                Name = testViewModel.Name,
                CreatedDate = DateTime.Now,
                CreatedById = testViewModel.CreatedByID == 0 ? (int?)null : testViewModel.CreatedByID,
                StatusId = 1,
                UserId = applicantId
            };

            _context.Add(test);
            _context.SaveChanges();

            foreach (var testDetailItem in testViewModel.TestDetail!)
            {
                int testCategoryID = _context.TestCategories
                .Where(x => x.Name == testDetailItem.TestCategory.Name)
                .Select(x => x.Id)
                .FirstOrDefault();

                TestDetail testDetail = new TestDetail
                {
                    TestId = test.Id,
                    TestCategoryId = testCategoryID,
                    TimeOut = testDetailItem.TimeOut,
                    QuestionsCount = testDetailItem.QuestionsCount,
                    TestResultId = 3,
                    CreatedDate = DateTime.Now
                };

                _context.Add(testDetail);
                _context.SaveChanges();

                var questionsList = new List<int>();
                // Replace this line:
                //questionsList = _context.Questions.Where(x => x.TestCategoryId == testCategoryID).Select(x => x.Id).ToList();

                // With this:
                questionsList = _context.Questions
                    .Where(x => x.TestCategoryId == testCategoryID)
                    .Select(x => x.Id)
                    .Take(testDetailItem.QuestionsCount)
                    .ToList();

                foreach (var questionItem in questionsList)
                {
                    TestDetailQuestionOption testDetailQuestionOption = new TestDetailQuestionOption();

                    testDetailQuestionOption = new TestDetailQuestionOption
                    {
                        TestDetailId = testDetail.Id,
                        QuestionId = questionItem,
                        OptionId = null
                    };
                    _context.Add(testDetailQuestionOption);
                    _context.SaveChanges();
                }
            }

            return "Test Created Successfully";
        }

        string IAptitudeTestRepository.DeleteAptitudeTest(int aptitudeTestID)
        {
            int testID = _context.Tests.Where(x => x.Id == aptitudeTestID).Select(x => x.Id).FirstOrDefault();
            var testDetailIDs = _context.TestDetails.Where(x => x.TestId == testID).Select(x => x.Id).ToList();
            var testDetailQuestionOptionIDs = _context.TestDetailQuestionOptions.Where(x => testDetailIDs.Contains(x.TestDetailId)).Select(x => x.Id).ToList();

            testDetailQuestionOptionIDs.ForEach(x => _context.TestDetailQuestionOptions.Remove(_context.TestDetailQuestionOptions.Find(x)!));
            testDetailIDs.ForEach(x => _context.TestDetails.Remove(_context.TestDetails.Find(x)!));
            _context.Tests.Remove(_context.Tests.Find(testID)!);
            _context.SaveChanges();

            string result = "return message";

            return result;
        }

        List<AptitudeTestViewModel> IAptitudeTestRepository.GetAllAptitudeTests()
        {
            List<AptitudeTestViewModel> aptitudeTests = new List<AptitudeTestViewModel>();

            List<Test> testsModel = new List<Test>();
            testsModel = _context.Tests.Include(x => x.Status).Include(x => x.User).ThenInclude(x => x.UserProfiles).Include(x => x.User.UserRoles).ThenInclude(x => x.Role).Include(x => x.TestDetails).ThenInclude(x => x.TestCategory).ToList();

            aptitudeTests = testsModel.Select(x => new AptitudeTestViewModel
            {
                ID = x.Id,
                User = new UserViewModel
                {
                    ID = x.User.Id,
                    Name = x.User.Name,
                    MobileNumber = x.User.MobileNumber ?? string.Empty,
                    UserProfile = new UserProfileViewModel
                    {
                        ID = x.User.UserProfiles.Select(x => x.Id).FirstOrDefault(),
                        Company = x.User.UserProfiles.Select(x => x.Company).FirstOrDefault(),
                    },
                    Role = x.User.UserRoles.Select(x => x.Role.Name).FirstOrDefault() ?? "No Role Assigned"
                },

                Test = new TestViewModel
                {
                    ID = x.Id,
                    UserID = x.UserId,
                    Name = x.Name,
                    CreatedDate = x.CreatedDate ?? DateTime.MinValue,
                    UpdatedDate = x.UpdatedDate ?? DateTime.MinValue,
                    CreatedByID = x.CreatedById,
                    Status = new StatusViewModel
                    {
                        ID = x.Status.Id,
                        Name = x.Status.Name
                    }
                }
            }).Where(x => x.User.Role == "Applicant").OrderByDescending(x => x.Test.CreatedDate).ToList();

            return aptitudeTests;
        }

        List<TestViewModel> IAptitudeTestRepository.GetApplicantAptitudeTests(int applicantID)
        {
            var applicantTests = new List<Test>();
            List<TestViewModel> applicantTestsViewModel = new List<TestViewModel>();

            applicantTests = _context.Tests.Include(x => x.TestDetails).ThenInclude(x => x.TestCategory).Where(x => x.UserId == applicantID && x.StatusId == 1).OrderByDescending(x => x.CreatedDate).ToList();

            applicantTestsViewModel = applicantTests.Select(x => new TestViewModel
            {
                ID = x.Id,
                Name = x.Name,
                TotalTestTimeout = CalculateTotalTimeOut(x.Id),
                CreatedDate = (DateTime)x.CreatedDate!,
                TestDetail = x.TestDetails.Select(td => new TestDetailViewModel
                {
                    ID = td.Id,
                    TestCategory = new TestCategoryViewModel
                    {
                        ID = td.TestCategory.Id,
                        Name = td.TestCategory.Name
                    },
                    TimeOut = td.TimeOut,
                    QuestionsCount = td.QuestionsCount,
                }).ToList()
            }).ToList();

            return applicantTestsViewModel;
        }

        public int CalculateTotalTimeOut(int testId)
        {
            var totalTimeout = _context.TestDetails
                .Where(td => td.TestId == testId)
                .Sum(td => td.TimeOut);

            return (int)totalTimeout;
        }

        TestViewModel IAptitudeTestRepository.GetAptitudeTest(int aptitudeTestID)
        {
            var test = _context.Tests
                .Include(t => t.User)
                .Include(t => t.Status)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestCategory)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestResult)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestDetailQuestionOptions)
                .FirstOrDefault(t => t.Id == aptitudeTestID);

            if (test == null)
            {
                return null!;
            }

            var testModel = new TestViewModel
            {
                ID = test.Id,
                UserID = test.UserId,
                Name = test.Name,
                CreatedDate = test.CreatedDate ?? DateTime.MinValue,
                UpdatedDate = test.UpdatedDate ?? DateTime.MinValue,
                CreatedByID = test.CreatedById == 0 ? (int?)null : test.CreatedById,
                Status = new StatusViewModel
                {
                    ID = test.Status.Id,
                    Name = test.Status.Name
                },
                TestDetail = test.TestDetails.Select(td => new TestDetailViewModel
                {
                    ID = td.Id,
                    TestCategory = new TestCategoryViewModel
                    {
                        ID = td.TestCategory.Id,
                        Name = td.TestCategory.Name
                    },
                    TimeOut = td.TimeOut,
                    QuestionsCount = td.QuestionsCount,
                    Score = td.Score ?? 0,
                    StartTime = td.StartTime,
                    EndTime = td.EndTime,
                    TestResult = new TestResultViewModel
                    {
                        ID = td.TestResult.Id,
                        Name = td.TestResult.Name
                    },
                    TestDetailQuestionOption = td.TestDetailQuestionOptions.Select(tdqo => new TestDetailQuestionOptionViewModel
                    {
                        ID = tdqo.Id,
                        QuestionID = tdqo.QuestionId,
                        OptionID = tdqo.OptionId
                    }).ToList()
                }).ToList()
            };

            return testModel;
        }

        //GetAptitudeTestByTestID
        TestViewModel IAptitudeTestRepository.GetAptitudeTestByTestID(int testID)
        {
            var test = _context.Tests
                .Include(t => t.User)
                .Include(t => t.Status)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestCategory)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestResult)
                .Include(t => t.TestDetails)
                    .ThenInclude(td => td.TestDetailQuestionOptions)
                    .ThenInclude(t => t.Question).ThenInclude(t => t.Options)

                .FirstOrDefault(t => t.Id == testID);

            if (test == null)
            {
                return null!;
            }

            var testModel = new TestViewModel
            {
                ID = test.Id,
                UserID = test.UserId,
                Name = test.Name,
                CreatedDate = test.CreatedDate ?? DateTime.MinValue,
                UpdatedDate = test.UpdatedDate ?? DateTime.MinValue,
                CreatedByID = test.CreatedById == 0 ? (int?)null : test.CreatedById,
                Status = new StatusViewModel
                {
                    ID = test.Status.Id,
                    Name = test.Status.Name
                },
                TestDetail = test.TestDetails.Select(td => new TestDetailViewModel
                {
                    ID = td.Id,
                    TestCategory = new TestCategoryViewModel
                    {
                        ID = td.TestCategory.Id,
                        Name = td.TestCategory.Name
                    },
                    TimeOut = td.TimeOut,
                    QuestionsCount = td.QuestionsCount,
                    Score = td.Score ?? 0,
                    StartTime = td.StartTime,
                    EndTime = td.EndTime,
                    TestResult = new TestResultViewModel
                    {
                        ID = td.TestResult.Id,
                        Name = td.TestResult.Name
                    },
                    TestDetailQuestionOption = td.TestDetailQuestionOptions.Select(tdqo => new TestDetailQuestionOptionViewModel
                    {
                        ID = tdqo.Id,
                        QuestionID = tdqo.QuestionId,
                        Question = new QuestionViewModel
                        {
                            ID = tdqo.Question.Id,
                            Name = tdqo.Question.Name,
                            Options = tdqo.Question.Options.Select(o => new OptionViewModel
                            {
                                ID = o.Id,
                                Name = o.Name
                            }).ToList()
                        },
                    }).ToList()
                }).ToList()
            };

            return testModel;
        }

        TestDetailViewModel IAptitudeTestRepository.GetAptitudeTestByTestDetailID(int testDetailID)
        {
            var test = _context.TestDetails.Where(td => td.Id == testDetailID)
                    .Include(td => td.TestDetailQuestionOptions)
                    .ThenInclude(t => t.Question).ThenInclude(t => t.Options).ToList();

            if (test == null)
            {
                return null!;
            }

            var testDetailModel = test.Select(td => new TestDetailViewModel
            {
                ID = td.Id,
                TimeOut = td.TimeOut,
                QuestionsCount = td.QuestionsCount,

                TestDetailQuestionOption = td.TestDetailQuestionOptions.Select(tdqo => new TestDetailQuestionOptionViewModel
                {
                    ID = tdqo.Id,
                    QuestionID = tdqo.QuestionId,
                    Question = new QuestionViewModel
                    {
                        ID = tdqo.Question.Id,
                        Name = tdqo.Question.Name,
                        Options = tdqo.Question.Options.Select(o => new OptionViewModel
                        {
                            ID = o.Id,
                            Name = o.Name
                        }).ToList()
                    },
                }).ToList()
            }).FirstOrDefault();

            return testDetailModel!;
        }

        void IAptitudeTestRepository.AnswerQuestionOption(int testDetailID, int questionID, int optionID)
        {
            TestDetailQuestionOption? testDetailQuestionOption = _context.TestDetailQuestionOptions.Where(x => x.TestDetailId == testDetailID && x.QuestionId == questionID).FirstOrDefault();

            if (testDetailQuestionOption != null)
            {
                testDetailQuestionOption.OptionId = optionID;
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("Test Detail Question Option not found");
            }
        }

        void IAptitudeTestRepository.ProcessTestStatus(int ID, string testType, string status)
        {
            if (testType == "Test")
            {
                var test = _context.Tests.FirstOrDefault(x => x.Id == ID);
                if (test != null)
                {
                    if(status == "InProgress")
                    {
                        test.StatusId = 2;
                        test.StartTime = DateTime.Now;
                    }
                    else if (status == "Completed")
                    {
                        test.StatusId = 3;
                        test.EndTime = DateTime.Now;
                    }                
                    _context.SaveChanges();
                }
            }

            if (testType == "TestDetail")
            {
                var testDetail = _context.TestDetails.FirstOrDefault(x => x.Id == ID);
                if (testDetail != null)
                {
                    if (status == "InProgress")
                    {
                        testDetail.StartTime = DateTime.Now;
                    }
                    else if (status == "Completed")
                    {
                        testDetail.EndTime = DateTime.Now;
                    }
                    _context.SaveChanges();
                }
            }
        }

        void IAptitudeTestRepository.SubmitTestDetail(int ID)
        {
            var testDetail = _context.TestDetails
                .Include(td => td.TestDetailQuestionOptions)
                .ThenInclude(tdqo => tdqo.Question)
                .ThenInclude(q => q.TestDetailQuestionOptions)
                .FirstOrDefault(x => x.Id == ID);

            if (testDetail != null)
            {
                // Get all TestDetailQuestionOptions for this TestDetail
                var answeredOptions = testDetail.TestDetailQuestionOptions
                    .Where(tdqo => tdqo.OptionId.HasValue)
                    .ToList();

                int totalQuestions = testDetail.TestDetailQuestionOptions.Count;
                int correctAnswers = 0;

                foreach (var tdqo in answeredOptions)
                {
                    // Find the correct option for this question
                    var correctOptionId = _context.QuestionOptions
                        .Where(qo => qo.QuestionId == tdqo.QuestionId)
                        .Select(qo => qo.OptionId)
                        .FirstOrDefault();

                    if (tdqo.OptionId == correctOptionId)
                    {
                        correctAnswers++;
                    }
                }

                double scorePercentage = totalQuestions > 0 ? (correctAnswers * 100.0) / totalQuestions : 0.0;
                testDetail.Score = scorePercentage;

                //Put the pass criteria in configuration
                if (testDetail.Score > 60)
                {
                    testDetail.TestResultId = 1; // Assuming 1 is for "Passed"
                }
                else
                {
                    testDetail.TestResultId = 2; // Assuming 2 is for "Failed"
                }

                //int userId = _context.Tests
                //.Where(t => t.Id == testDetail.TestId)
                //.Select(t => t.UserId)
                //.FirstOrDefault();

                //CreateNotification(userId, "New Test Report Ready", new List<string> { "Administrator", "HR" });

                testDetail.EndTime = DateTime.Now;
                _context.SaveChanges();
            }
        }

        public void CreateNotification(int ofUserID, string notificationType, List<string> forRoles)
        {
            int[] forUserIDs = _context.Users
                .Include(x => x.UserRoles)
                .ThenInclude(x => x.Role)
                .Where(x => x.UserRoles.Any(r => forRoles.Contains(r.Role.Name))) // Fixed the comparison to check if the role name exists in the list
                .Select(x => x.Id)
                .ToArray();

            var ofUserName = _context.Users.FirstOrDefault(x => x.Id == ofUserID);
            var notificationTypeModel = _context.NotificationTypes.FirstOrDefault(x => x.Name == notificationType);

            foreach (var id in forUserIDs)
            {
                if (id > 0 && notificationTypeModel != null && ofUserName != null)
                {
                    string message = "{0} - {1}";
                    Notification notification = new Notification
                    {
                        UserId = id,
                        NotificationTypeId = notificationTypeModel.Id,
                        CreatedDate = DateTime.Now,
                        Message = String.Format(message, notificationType, ofUserName.Name)
                    };
                    _context.Notifications.Add(notification);
                    _context.SaveChanges();
                }
            }
        }

    }
}

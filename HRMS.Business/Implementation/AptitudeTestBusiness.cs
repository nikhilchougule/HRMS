using HRMS.Business.Contract;
using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using HRMS.ViewModel.AptitudeTest;
using HRMS.ViewModel.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Business.Implementation
{
    public class AptitudeTestBusiness : IAptitudeTestBusiness
    {
        private readonly IAptitudeTestRepository _aptitudeTestRepository;

        public AptitudeTestBusiness(HRMSDBContext context)
        {
            _aptitudeTestRepository = new AptitudeTestRepository(context);
        }

        public TestDetailViewModel GetAptitudeTestByTestDetailID(int testID)
        {
            return _aptitudeTestRepository.GetAptitudeTestByTestDetailID(testID);
        }

        string IAptitudeTestBusiness.AddAptitudeTest(TestViewModel testViewModel)
        {
            return _aptitudeTestRepository.AddAptitudeTest(testViewModel);
        }

        void IAptitudeTestBusiness.AnswerQuestionOption(int testDetailID, int questionID, int optionID)
        {
            _aptitudeTestRepository.AnswerQuestionOption(testDetailID, questionID, optionID);
        }

        string IAptitudeTestBusiness.DeleteAptitudeTest(int aptitudeTestID)
        {
            return _aptitudeTestRepository.DeleteAptitudeTest(aptitudeTestID);
        }

        List<AptitudeTestViewModel> IAptitudeTestBusiness.GetAllAptitudeTests()
        {
            return _aptitudeTestRepository.GetAllAptitudeTests();
        }

        List<TestViewModel> IAptitudeTestBusiness.GetApplicantAptitudeTests(int applicantID)
        {
            return _aptitudeTestRepository.GetApplicantAptitudeTests(applicantID);
        }

        TestViewModel IAptitudeTestBusiness.GetAptitudeTest(int aptitudeTestID)
        {
            return _aptitudeTestRepository.GetAptitudeTest(aptitudeTestID);
        }

        TestViewModel IAptitudeTestBusiness.GetAptitudeTestByTestID(int testID)
        {
            return _aptitudeTestRepository.GetAptitudeTestByTestID(testID);
        }

        void IAptitudeTestBusiness.ProcessTestStatus(int ID, string testType, string status)
        {
            _aptitudeTestRepository.ProcessTestStatus(ID, testType, status);
        }

        void IAptitudeTestBusiness.SubmitTestDetail(int ID)
        {
            _aptitudeTestRepository.SubmitTestDetail(ID);
        }
    }
}

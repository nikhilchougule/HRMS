using HRMS.ViewModel.AptitudeTest;
using HRMS.ViewModel.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Contract
{
    public interface IAptitudeTestRepository
    {
        public List<AptitudeTestViewModel> GetAllAptitudeTests();
        public string AddAptitudeTest(TestViewModel testViewModel);
        public string DeleteAptitudeTest(int aptitudeTestID);
        public TestViewModel GetAptitudeTest(int aptitudeTestID);
        public List<TestViewModel> GetApplicantAptitudeTests(int applicantID);
        public TestViewModel GetAptitudeTestByTestID(int testID);
        public TestDetailViewModel GetAptitudeTestByTestDetailID(int testID);
        public void AnswerQuestionOption(int testDetailID, int questionID, int optionID);
        public void ProcessTestStatus(int ID, string testType, string status);
        public void SubmitTestDetail(int ID);
    }
}

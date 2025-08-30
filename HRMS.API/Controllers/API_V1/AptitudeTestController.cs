using HRMS.Business.Contract;
using HRMS.ViewModel.AptitudeTest;
using HRMS.ViewModel.Common;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;

namespace HRMS.API.Controllers.API_V1
{
    [Route("api/[controller]")]
    [ApiController]
    public class AptitudeTestController : ControllerBase
    {
        private IConfiguration _config;
        private IAptitudeTestBusiness _aptitudeTestBusiness;

        public AptitudeTestController(IConfiguration config, IAptitudeTestBusiness aptitudeTestBusiness)
        {
            _config = config;
            _aptitudeTestBusiness = aptitudeTestBusiness;
        }

        [HttpGet]
        [Route("GetAllAptitudeTests")]
        public  IActionResult GetAllAptitudeTests()
        {
            List<AptitudeTestViewModel> aptitudeTests = new List<AptitudeTestViewModel>();
            aptitudeTests = _aptitudeTestBusiness.GetAllAptitudeTests();
            return new JsonResult(aptitudeTests);
        }

        [HttpGet]
        [Route("GetApplicantAptitudeTests/{applicantID}")]
        public IActionResult GetApplicantAptitudeTests(int applicantID)
        {
           List<TestViewModel> aptitudeTests = new List<TestViewModel>();
            aptitudeTests = _aptitudeTestBusiness.GetApplicantAptitudeTests(applicantID);
            return new JsonResult(aptitudeTests);
        }

        [HttpPost]
        [Route("AddAptitudeTest")]
        public IActionResult AddAptitudeTest(TestViewModel testViewModel)
        {
            string result = _aptitudeTestBusiness.AddAptitudeTest(testViewModel);
            return Ok(new JsonResult(result));
        }

        [HttpGet]
        [Route("DeleteAptitudeTest/{aptitudeTestID}")]
        public IActionResult DeleteAptitudeTest(int aptitudeTestID)
        {
            string result = _aptitudeTestBusiness.DeleteAptitudeTest(aptitudeTestID);
            return Ok(new JsonResult(result));
        }

        [HttpGet]
        [Route("GetAptitudeTest/{aptitudeTestID}")]
        public IActionResult GetAptitudeTest(int aptitudeTestID)
        {
            TestViewModel testViewModel = new TestViewModel();
            testViewModel = _aptitudeTestBusiness.GetAptitudeTest(aptitudeTestID);
            return new JsonResult(testViewModel);
        }

        [HttpGet]
        [Route("GetAptitudeTestByTestID/{testID}")]
        public IActionResult GetAptitudeTestByTestID(int testID)
        {
            TestViewModel testViewModel = new TestViewModel();
            testViewModel = _aptitudeTestBusiness.GetAptitudeTestByTestID(testID);
            return new JsonResult(testViewModel);
        }

        [HttpGet]
        [Route("GetAptitudeTestByTestDetailID/{testDetailID}")]
        public IActionResult GetAptitudeTestByTestDetailID(int testDetailID)
        {
            TestDetailViewModel testDetailViewModel = new TestDetailViewModel();
            testDetailViewModel = _aptitudeTestBusiness.GetAptitudeTestByTestDetailID(testDetailID);
            return new JsonResult(testDetailViewModel);
        }

        [HttpGet]
        [Route("AnswerQuestionOption/{testDetailID}/{questionID}/{optionID}")]
        public IActionResult AnswerQuestionOption(int testDetailID, int questionID, int optionID)
        {
             _aptitudeTestBusiness.AnswerQuestionOption(testDetailID, questionID, optionID);
            return new JsonResult("AnswerSubmitted");
        }

        [HttpGet]
        [Route("ProcessTestStatus/{ID}/{testType}/{status}")]
        public IActionResult ProcessTestStatus(int ID, string testType, string status)
        {
            _aptitudeTestBusiness.ProcessTestStatus(ID, testType, status);
            return new JsonResult("StatusUpdated");
        }

        [HttpGet]
        [Route("SubmitTestDetail/{ID}")]
        public IActionResult SubmitTestDetail(int ID)
        {
           _aptitudeTestBusiness.SubmitTestDetail(ID);
            return new JsonResult("ResultsCalculated");
        }
    }
}

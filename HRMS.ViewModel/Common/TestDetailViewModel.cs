using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class TestDetailViewModel
    {
        public int ID { get; set; }      
        public TestCategoryViewModel TestCategory { get; set; } = new TestCategoryViewModel();
        public double TimeOut { get; set; }
        public DateTime? StartTime { get; set; } 
            //= DateTime.MinValue;
        public DateTime? EndTime { get; set; } 
            //= DateTime.MinValue;
        public int QuestionsCount { get; set; }
        public double Score { get; set; }   
        public TestResultViewModel TestResult { get; set; } = new TestResultViewModel();
        public DateTime CreatedDate { get; set; } = DateTime.MinValue;
        public DateTime UpdatedDate { get; set; } = DateTime.MinValue;
        public List<TestDetailQuestionOptionViewModel> TestDetailQuestionOption { get; set; } = new List<TestDetailQuestionOptionViewModel>();
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class TestDetailQuestionOptionViewModel
    {
        public int ID { get; set; }
        public int QuestionID { get; set; }
        public int? OptionID { get; set; } // Set as nullable
        public TestDetailViewModel TestDetail { get; set; } = new TestDetailViewModel();
        public QuestionViewModel Question { get; set; } = new QuestionViewModel();
        //public OptionViewModel Option { get; set; } = new OptionViewModel();
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class QuestionViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }    = string.Empty;
        public TestCategoryViewModel TestCategory { get; set; } = new TestCategoryViewModel();
        public bool IsActive { get; set; }

        public List<OptionViewModel> Options { get; set; } = new List<OptionViewModel>();
    }
}

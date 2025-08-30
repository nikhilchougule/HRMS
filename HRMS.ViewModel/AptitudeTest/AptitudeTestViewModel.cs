using HRMS.ViewModel.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.AptitudeTest
{
    public class AptitudeTestViewModel
    {
        public int ID { get; set; }
        public UserViewModel User { get; set; } = new UserViewModel();
        public TestViewModel Test { get; set; } = new TestViewModel();
    }
}

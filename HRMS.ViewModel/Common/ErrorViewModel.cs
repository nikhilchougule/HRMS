using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public abstract class ErrorViewModel
    {
        public Boolean IsError { get; set; }
        public List<string> ?ErrorMessages { get; set; }
    }

}

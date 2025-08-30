using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class TestViewModel
    {
        public int ID { get; set; }
        public int UserID { get; set; }
        public string ApplicantName { get; set; } = string.Empty;
        public string? Name { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.MinValue;
        public DateTime UpdatedDate { get; set; } = DateTime.MinValue;
        public int? CreatedByID { get; set; }
        public StatusViewModel? Status { get; set; }
        public List<TestDetailViewModel>? TestDetail { get; set; }
        public int ? TotalTestTimeout { get; set; }
    }

}

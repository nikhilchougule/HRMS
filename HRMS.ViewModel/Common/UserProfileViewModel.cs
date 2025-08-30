using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class UserProfileViewModel
    {
        public int ID { get; set; }
        //public int UserID { get; set; }
        public string? Company { get; set; }
        public string? Designation { get; set; }
        public float TotalExperience { get; set; }
        public ExperienceLevelViewModel ExperienceLevel { get; set; } = new ExperienceLevelViewModel();
    }
}

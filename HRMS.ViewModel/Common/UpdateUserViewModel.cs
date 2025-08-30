using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class UpdateUserViewModel
    {
        public int ID { get; set; }
        public string? Name { get; set; }
        public string? Email { get; set; }
        public string? MobileNumber { get; set; }
        public bool IsActive { get; set; }
        public bool IsApproved { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
        public UserProfileViewModel? UserProfile { get; set; }
        public List<string>? Skills { get; set; }
        public string? Role { get; set; }
    }

    //public class UserProfile
    //{
    //    public int ID { get; set; }
    //    public string? Company { get; set; }
    //    public string? Designation { get; set; }
    //    public int TotalExperience { get; set; }
    //    public ExperienceLevel? ExperienceLevel { get; set; }
    //}


    //public class ExperienceLevel
    //{
    //    public int ID { get; set; }
    //    public string? Name { get; set; }
    //}

    //public class Role
    //{
    //    public int ID { get; set; }
    //    public string? Name { get; set; }
    //}
}

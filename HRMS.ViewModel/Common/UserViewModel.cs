using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class UserViewModel
    {
        public int ID { get; set; }
        public string? Name { get; set; }    
        public string? Email { get; set; }
        public string? MobileNumber { get; set; }    
        public bool IsActive { get; set; }
        public bool IsApproved { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
        public UserProfileViewModel UserProfile { get; set; } = new UserProfileViewModel();
        public List<RoleViewModel> Roles { get; set; } = new List<RoleViewModel>();
        public List<SkillViewModel> Skills { get; set; } = new List<SkillViewModel>(); 
        public string Role { get; set; }= string.Empty;
    }
}

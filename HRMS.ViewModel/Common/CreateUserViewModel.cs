using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class CreateUserViewModel
    {
        public int ID { get; set; }
        public string? Name { get; set; }
        public string? Email { get; set; }
        public string? MobileNumber { get; set; }
        public bool IsActive { get; set; }
        public bool IsApproved { get; set; }
        public UserProfileViewModel? UserProfile { get; set; }
        public List<string>? Skills { get; set; }
        public string? Role { get; set; }
    }
}

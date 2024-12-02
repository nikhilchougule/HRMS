using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Common
{
    public class UserRoleViewModel
    {
        public int UserID { get; set; } 
        public int RoleID { get; set; } 

        public List<string> Roles { get; set; } = new List<string>();
    }
}

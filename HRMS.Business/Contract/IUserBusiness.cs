using HRMS.ViewModel.Common;
using HRMS.ViewModel.Notification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Common.UpdateUserViewModel;   

namespace HRMS.Business.Contract
{
    public interface IUserBusiness
    {
        public List<UserViewModel> GetAllUsers(int userID);
        public List<UserViewModel> GetAllApplicants();
        public List<UserViewModel> GetUsersByRole(string roleName);
        public void UpdateUser(UpdateUserViewModel user);
        public bool CreateUser(CreateUserViewModel user);
        public bool DeleteUser(int userID);
        public List<NotificationViewModel> GetAllNotifications(int userID);
    }
}

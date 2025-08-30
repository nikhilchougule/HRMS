using HRMS.ViewModel.Common;
using HRMS.ViewModel.Notification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Contract
{
    public interface IUserRepository
    {
        public List<UserViewModel> GetAllUsers(int userID);
        public List<UserViewModel> GetAllApplicants();
        public List<UserViewModel> GetUsersByRole(string roleName);
        public void UpdateUser(UpdateUserViewModel user);
        public Boolean UpdateUserProfile(UserProfileViewModel userProfile, int userID);
        bool CreateUserByDefaultPassword(CreateUserViewModel user, byte[] passwordHash, byte[] passwordSalt);
        bool CreateUserProfile(UserProfileViewModel userProfile, int userID);
        bool DeleteUser(int userID);
        public List<NotificationViewModel> GetAllNotifications(int userID);
    }
}

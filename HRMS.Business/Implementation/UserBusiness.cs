using HRMS.Business.Contract;
using HRMS.Infrastructure.Common;
using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.Notification;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;
using static HRMS.ViewModel.SelectList.RoleViewModel;

namespace HRMS.Business.Implementation
{
    public class UserBusiness : IUserBusiness
    {
        private readonly IUserRepository _userRepository;
        private readonly string _defaultPassword;

        public UserBusiness(HRMSDBContext context, IConfiguration configuration)
        {
            _userRepository = new UserRepository(context);
            _defaultPassword = configuration["AppConfiguration:DefaultPassword"] ?? throw new ArgumentNullException(nameof(configuration), "Default password configuration is missing.");
        }

        public List<UserViewModel> GetUsersByRole(string roleName)
        {
           return _userRepository.GetUsersByRole(roleName);
        }

        bool IUserBusiness.CreateUser(CreateUserViewModel user)
        {
            byte[] passwordHash;
            byte[] passwordSalt;

            //Move this default password to web.config       
            PasswordHasher.CreatePasswordHash(_defaultPassword, out passwordHash, out passwordSalt);
            
            _userRepository.CreateUserByDefaultPassword(user, passwordHash, passwordSalt);
            return true;
        }

        List<UserViewModel> IUserBusiness.GetAllUsers(int userID)
        {
            return _userRepository.GetAllUsers(userID);
        }

        List<UserViewModel> IUserBusiness.GetAllApplicants()
        {
            return _userRepository.GetAllApplicants();
        }

        List<UserViewModel> IUserBusiness.GetUsersByRole(string roleName)
        {
            throw new NotImplementedException();
        }

        void IUserBusiness.UpdateUser(UpdateUserViewModel user)
        {
            var userProfile = user.UserProfile;
            var role = user.Role;
            var skills = user.Skills;
            var experienceLevel = user.UserProfile?.ExperienceLevel;
          
            _userRepository.UpdateUserProfile(userProfile!, user.ID);

            _userRepository.UpdateUser(user);
        }

        bool IUserBusiness.DeleteUser(int userID)
        {
           return _userRepository.DeleteUser(userID);            
        }

        List<NotificationViewModel> IUserBusiness.GetAllNotifications(int userID)
        {
          return _userRepository.GetAllNotifications(userID);
        }
    }
}

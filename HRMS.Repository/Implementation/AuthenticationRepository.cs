using HRMS.Repository.Contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using HRMS.ViewModel.Authentication;
using HRMS.Model.Objects;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;

namespace HRMS.Repository.Implementation
{
    public class AuthenticationRepository : IAuthenticationRepository
    {
        private readonly HRMSDBContext _context;

        public AuthenticationRepository(HRMSDBContext context)
        {
            _context = context;
        }

        void IAuthenticationRepository.CheckUserEmailAndPassword()
        {
            throw new NotImplementedException();
        }

        UserSignupResponseViewModel IAuthenticationRepository.RegisterUser(UserSignupRequestViewModel userSignupRequestViewModel)
        {
            User newUser = new User();
            UserSignupResponseViewModel userSignupResponseViewModel = new UserSignupResponseViewModel();
            userSignupResponseViewModel.ErrorMessages = new List<string>();

            newUser.Name = userSignupRequestViewModel.Name!;
            newUser.Email = userSignupRequestViewModel.Email!;
            newUser.MobileNumber = userSignupRequestViewModel.MobileNumber!;
            newUser.PasswordHash = userSignupRequestViewModel.PasswordHash!;
            newUser.PasswordSalt = userSignupRequestViewModel.PasswordSalt!;

            try
            {
                _context.Users.Add(newUser);
                _context.SaveChanges();
                userSignupResponseViewModel.UserID = newUser.Id;

                ////Register UserProfile
                //_context.UserProfiles.Add(new UserProfile { UserId = newUser.Id });
                //_context.SaveChanges();

                ////Add Notification for Completing Profile
                //_context.Notifications.Add(new Notification { NotificationTypeId = 3, UserId = newUser.Id });
                //_context.SaveChanges();       

                CreateNotification(newUser.Id, "New User Added", new List<string> { "Administrator", "HR" });

                if (userSignupRequestViewModel.isApplicantRegistration == true)
                {
                    List<string> roleViewModel = RegisterUserRoles(new List<string> { "Applicant" }, userSignupResponseViewModel.UserID);
                    userSignupResponseViewModel.Roles = roleViewModel;
                }
            }
            catch (Exception ex)
            {
                userSignupResponseViewModel.IsError = true;
                userSignupResponseViewModel.ErrorMessages.Add("User registration failed. Please contact HR Team !");
                userSignupResponseViewModel.ErrorMessages.Add(ex.Message);
            }

            //get from database and bind to response
            userSignupResponseViewModel.Name = userSignupRequestViewModel.Name;
            userSignupResponseViewModel.Email = userSignupRequestViewModel.Email;
            userSignupResponseViewModel.MobileNumber = userSignupRequestViewModel.MobileNumber;

            return userSignupResponseViewModel;
        }

        UserViewModel IAuthenticationRepository.GetUser(UserSignupRequestViewModel userSignupRequestViewModel)
        {
            User user = new User();
            UserViewModel userViewModel = new UserViewModel();

            user = _context.Users.FirstOrDefault(x => x.Email == userSignupRequestViewModel.Email)!;

            if (user != null)
            {
                userViewModel.Email = user.Email;
            }
            return userViewModel;
        }

        UserSigninResponseViewModel IAuthenticationRepository.GetUserForSignin(UserSigninRequestViewModel userSigninRequestViewModel)
        {
            User user = new User();
            UserSigninResponseViewModel userSigninResponseViewModel = new UserSigninResponseViewModel();
            UserProfileViewModel userProfileViewModel = new UserProfileViewModel();

            user = _context.Users.FirstOrDefault(x => x.Email == userSigninRequestViewModel.Email)!;

            if (user != null)
            {
                userSigninResponseViewModel.UserID = user.Id;
                userSigninResponseViewModel.Email = user.Email;
                userSigninResponseViewModel.Name = user.Name;
                userSigninResponseViewModel.MobileNumber = user.MobileNumber;
                userSigninResponseViewModel.PasswordHash = user.PasswordHash;
                userSigninResponseViewModel.PasswordSalt = user.PasswordSalt;
                userSigninResponseViewModel.IsActive = user.IsActive;
                userSigninResponseViewModel.IsApproved = user.IsApproved;

                List<string> userRoles = _context.UserRoles.Where(x => x.UserId == user.Id!).Select(x => x.Role.Name).ToList();
                userSigninResponseViewModel.Roles = userRoles;

                userSigninResponseViewModel.IsValid = true;

                var userProfile = _context.UserProfiles.Include(x => x.ExperienceLevel).FirstOrDefault(x => x.UserId == user.Id);
                if (userProfile != null)
                {
                    userProfileViewModel.ID = userProfile.Id;
                    userProfileViewModel.Company = userProfile.Company;
                    userProfileViewModel.Designation = userProfile.Designation;
                    userProfileViewModel.TotalExperience = (float)(userProfile?.TotalExperience ?? 0);
                    userProfileViewModel.ExperienceLevel = new ExperienceLevelViewModel { ID = userProfile?.ExperienceLevel?.Id ?? 0, Name = userProfile?.ExperienceLevel?.Name };
                    userSigninResponseViewModel.UserProfile = userProfileViewModel;
                }
            }
            else
            {
                userSigninResponseViewModel.IsValid = false;
            }
            return userSigninResponseViewModel;
        }

        public List<string> RegisterUserRoles(List<string> Roles, int userID)
        {
            RoleViewModel userRoleViewModel = new RoleViewModel();
            List<string> roles = Roles;

            List<UserRole> userRoles = new List<UserRole>();

            var rolesID = _context.Roles
            .Where(c => roles.Contains(c.Name)).Select(x => x.Id)
            .ToList();

            foreach (var roleID in rolesID)
            {
                userRoles.Add(new UserRole { UserId = userID, RoleId = roleID });
            }

            if (userRoles.Count > 0)
            {
                try
                {
                    foreach (var userRole in userRoles)
                    {
                        _context.UserRoles.Add(userRole);
                    }
                    _context.SaveChanges();
                }
                catch (Exception)
                {

                }
            }
            return Roles;
        }

        public void CreateNotification(int ofUserID, string notificationType, List<string> forRoles)
        {
            int[] forUserIDs = _context.Users
                .Include(x => x.UserRoles)
                .ThenInclude(x => x.Role)
                .Where(x => x.UserRoles.Any(r => forRoles.Contains(r.Role.Name))) // Fixed the comparison to check if the role name exists in the list
                .Select(x => x.Id)
                .ToArray();

            var ofUserName = _context.Users.FirstOrDefault(x => x.Id == ofUserID);
            var notificationTypeModel = _context.NotificationTypes.FirstOrDefault(x => x.Name == notificationType);

            foreach (var id in forUserIDs)
            {
                if (id > 0 && notificationTypeModel != null && ofUserName != null)
                {
                    string message = "{0} - {1}";
                    Notification notification = new Notification
                    {
                        UserId = id,
                        NotificationTypeId = notificationTypeModel.Id,
                        CreatedDate = DateTime.Now,
                        Message = String.Format(message, notificationType, ofUserName.Name)
                    };
                    _context.Notifications.Add(notification);
                    _context.SaveChanges();
                }
            }
        }

    }
}

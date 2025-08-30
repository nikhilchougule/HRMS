using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HRMS.Repository.Contract;
using HRMS.ViewModel.Common;
using HRMS.Model.Objects;
using Microsoft.EntityFrameworkCore;
using HRMS.ViewModel.SelectList;
using HRMS.ViewModel.Notification;

namespace HRMS.Repository.Implementation
{
    public class UserRepository : IUserRepository
    {
        private readonly HRMSDBContext _context;

        public UserRepository(HRMSDBContext context)
        {
            _context = context;
        }

        public List<UserViewModel> GetUsersByRole(string roleName)
        {
            throw new NotImplementedException();
        }

        List<UserViewModel> IUserRepository.GetAllUsers(int userID)
        {
            List<User> usersModel = new List<User>();

            usersModel = _context.Users
                   // .AsNoTracking()
                   .Where(x => x.Id != userID) // Exclude the user with the specified userID
                   .Include(x => x.UserProfiles)
                       .ThenInclude(x => x.ExperienceLevel)
                   .Include(x => x.UserRoles)
                       .ThenInclude(x => x.Role)
                   .Include(x => x.UserSkills)
                       .ThenInclude(x => x.Skill)
                   .OrderByDescending(x => x.CreatedDate)
                   .ToList();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            foreach (User user in usersModel)
            {
                var userProfile = user.UserProfiles.FirstOrDefault(x => x.UserId == user.Id);

                usersViewModel.Add(new UserViewModel
                {
                    ID = user.Id,
                    Name = user.Name,
                    Email = user.Email,
                    MobileNumber = user.MobileNumber,
                    IsActive = user.IsActive ?? false,
                    IsApproved = user.IsApproved ?? false,
                    CreatedDate = user.CreatedDate ?? DateTime.MinValue,
                    UpdatedDate = user.UpdatedDate ?? DateTime.MinValue,
                    UserProfile = new UserProfileViewModel
                    {
                        ID = (int)(userProfile?.Id ?? 0),
                        Company = userProfile?.Company,
                        Designation = userProfile?.Designation,
                        TotalExperience = (float)(userProfile?.TotalExperience ?? 0),
                        ExperienceLevel = new ExperienceLevelViewModel { ID = userProfile?.ExperienceLevel?.Id ?? 0, Name = userProfile?.ExperienceLevel?.Name }
                    },
                    Roles = user.UserRoles.Select(x => new RoleViewModel { ID = x.RoleId, Name = x.Role.Name }).ToList(),
                    Skills = user.UserSkills.Select(x => new SkillViewModel { ID = x.SkillId, Name = x.Skill.Name }).ToList(),
                    Role = user.UserRoles.Select(x => x.Role.Name).FirstOrDefault() ?? "No Role Assigned"
                });
            }

            return usersViewModel;
        }

        bool IUserRepository.CreateUserByDefaultPassword(CreateUserViewModel user, byte[] passwordHash, byte[] passwordSalt)
        {
            User userModel = new User
            {
                Name = user.Name!,
                Email = user.Email!,
                MobileNumber = user.MobileNumber!,
                PasswordHash = passwordHash,
                PasswordSalt = passwordSalt,
                IsActive = user.IsActive,
                IsApproved = user.IsApproved,
                CreatedDate = DateTime.Now,
            };

            _context.Users.Add(userModel);
            _context.SaveChanges();

            if (user.Role == "Applicant")
            {
                CreateNotification(userModel.Id, "New Applicant Added", new List<string> { "Administrator", "HR" });
            }
            else
            {
                CreateNotification(userModel.Id, "New User Added", new List<string> { "Administrator", "HR" });
            }

            foreach (var skill in user.Skills!)
            {
                var skillID = _context.Skills?.FirstOrDefault(x => x.Name == skill)?.Id;
                if (skillID.HasValue)
                {
                    UserSkill userSkillModel = new UserSkill
                    {
                        UserId = userModel.Id,
                        SkillId = skillID.Value
                    };
                    _context.UserSkills.Add(userSkillModel);
                }
            }

            _context.SaveChanges();

            int? roleID = _context.Roles?.FirstOrDefault(x => x.Name == user.Role)?.Id;
            if (roleID.HasValue)
            {
                UserRole userRoleModel = new UserRole
                {
                    UserId = userModel.Id,
                    RoleId = roleID.Value
                };
                _context.UserRoles.Add(userRoleModel);
            }

            _context.SaveChanges();

            var createdProfile = ((IUserRepository)this).CreateUserProfile(user.UserProfile!, userModel.Id);

            return true;
        }

        void IUserRepository.UpdateUser(UpdateUserViewModel user)
        {
            var userData = _context.Users.FirstOrDefault(x => x.Id == user.ID);

            if (userData != null)
            {
                // Detach the tracked entity
                _context.Entry(userData).State = EntityState.Detached;
            }

            User usermodel = new User
            {
                Id = user.ID,
                Name = user.Name ?? userData?.Name!,
                Email = user.Email ?? userData?.Email!,
                MobileNumber = user.MobileNumber ?? userData?.MobileNumber!,
                PasswordHash = userData?.PasswordHash!,
                PasswordSalt = userData?.PasswordSalt!,
                IsActive = user.IsActive,
                IsApproved = user.IsApproved,
                CreatedDate = userData?.CreatedDate ?? DateTime.Now,
                UpdatedDate = DateTime.Now
            };

            _context.Users.Update(usermodel);
            _context.SaveChanges();

            // Update UserSkills
            _context.UserSkills.Where(x => x.UserId == user.ID).ExecuteDelete();
            foreach (var skill in user.Skills!)
            {
                var skillID = _context.Skills?.FirstOrDefault(x => x.Name == skill)?.Id;
                if (skillID.HasValue)
                {
                    UserSkill userSkillModel = new UserSkill
                    {
                        UserId = user.ID,
                        SkillId = skillID.Value
                    };
                    _context.UserSkills.Add(userSkillModel);
                    _context.SaveChanges();
                }
            }

            // Update UserRoles
            int? roleID = _context.Roles?.FirstOrDefault(x => x.Name == user.Role)?.Id;
            if (roleID.HasValue)
            {
                _context.UserRoles.Where(x => x.UserId == user.ID).ExecuteDelete();
                UserRole userRoleModel = new UserRole
                {
                    UserId = user.ID,
                    RoleId = roleID.Value
                };
                _context.UserRoles.Add(userRoleModel);
                _context.SaveChanges();
            }

        }

        bool IUserRepository.UpdateUserProfile(UserProfileViewModel userProfile, int userID)
        {
            var experienceLevel = _context.ExperienceLevels?.FirstOrDefault(x => x.Name == userProfile.ExperienceLevel.Name);
            UserProfile userProfileModel;

            if (experienceLevel == null)
            {
                userProfileModel = new UserProfile
                {
                    Id = userProfile.ID,
                    UserId = userID,
                    Company = userProfile.Company,
                    Designation = userProfile.Designation,
                    TotalExperience = userProfile.TotalExperience,
                    ExperienceLevelId = null
                };
            }
            else
            {
                userProfileModel = new UserProfile
                {
                    Id = userProfile.ID,
                    UserId = userID,
                    Company = userProfile.Company,
                    Designation = userProfile.Designation,
                    TotalExperience = userProfile.TotalExperience,
                    ExperienceLevelId = experienceLevel.Id
                };
            }

            _context.UserProfiles.Update(userProfileModel);
            _context.SaveChanges();

            return true;
        }

        bool IUserRepository.CreateUserProfile(UserProfileViewModel userProfile, int userID)
        {
            var experienceLevel = _context.ExperienceLevels?.FirstOrDefault(x => x.Name == userProfile.ExperienceLevel.Name);

            UserProfile userProfileModel;

            if (experienceLevel == null)
            {
                userProfileModel = new UserProfile
                {
                    Id = userProfile.ID,
                    UserId = userID,
                    Company = userProfile.Company,
                    Designation = userProfile.Designation,
                    TotalExperience = userProfile.TotalExperience,
                    ExperienceLevelId = null
                };
            }
            else
            {
                userProfileModel = new UserProfile
                {
                    Id = userProfile.ID,
                    UserId = userID,
                    Company = userProfile.Company,
                    Designation = userProfile.Designation,
                    TotalExperience = userProfile.TotalExperience,
                    ExperienceLevelId = experienceLevel.Id
                };
            }

            _context.UserProfiles.Add(userProfileModel);
            _context.SaveChanges();

            return true;
        }

        List<UserViewModel> IUserRepository.GetAllApplicants()
        {
            List<User> usersModel = new List<User>();
            usersModel = _context.Users.Include(x => x.UserRoles).ThenInclude(x => x.Role).Include(x => x.UserSkills).ThenInclude(x => x.Skill).Include(x => x.UserProfiles).ThenInclude(x => x.ExperienceLevel).OrderByDescending(x => x.CreatedDate).ToList();

            List<UserViewModel> usersViewModel = new List<UserViewModel>();

            foreach (User user in usersModel)
            {
                var userProfile = user.UserProfiles.FirstOrDefault(x => x.UserId == user.Id);

                usersViewModel.Add(new UserViewModel
                {
                    ID = user.Id,
                    Name = user.Name,
                    Email = user.Email,
                    MobileNumber = user.MobileNumber,
                    IsActive = user.IsActive ?? false,
                    IsApproved = user.IsApproved ?? false,
                    CreatedDate = user.CreatedDate ?? DateTime.MinValue,
                    UpdatedDate = user.UpdatedDate ?? DateTime.MinValue,
                    UserProfile = new UserProfileViewModel
                    {
                        ID = (int)(userProfile?.Id ?? 0),
                        Company = userProfile?.Company,
                        Designation = userProfile?.Designation,
                        TotalExperience = (float)(userProfile?.TotalExperience ?? 0),
                        ExperienceLevel = new ExperienceLevelViewModel { ID = userProfile?.ExperienceLevel?.Id ?? 0, Name = userProfile?.ExperienceLevel?.Name }
                    },
                    Roles = user.UserRoles.Select(x => new RoleViewModel { ID = x.RoleId, Name = x.Role.Name }).ToList(),
                    Skills = user.UserSkills.Select(x => new SkillViewModel { ID = x.SkillId, Name = x.Skill.Name }).ToList(),
                    Role = user.UserRoles.Select(x => x.Role.Name).FirstOrDefault() ?? "No Role Assigned"
                });
            }

            return usersViewModel.Where(x => x.Role == "Applicant").ToList();
        }

        bool IUserRepository.DeleteUser(int userId)
        {
            // Delete Notifications
            _context.Notifications.Where(x => x.UserId == userId).ExecuteDelete();

            // Delete TestDetailQuestionOptions related to user's tests
            _context.TestDetailQuestionOptions
                .Include(x => x.TestDetail)
                .ThenInclude(x => x.Test)
                .Where(x => x.TestDetail.Test.UserId == userId)
                .ExecuteDelete();

            // Delete TestDetails related to user's tests
            _context.TestDetails
                .Include(td => td.Test)
                .Where(td => td.Test.UserId == userId)
                .ExecuteDelete();

            // Delete Tests created by the user
            _context.Tests
                .Where(t => t.UserId == userId)
                .ExecuteDelete();

            // Delete UserSkills
            _context.UserSkills.Where(x => x.UserId == userId).ExecuteDelete();

            // Delete UserRoles
            _context.UserRoles.Where(x => x.UserId == userId).ExecuteDelete();

            // Delete UserProfiles
            _context.UserProfiles.Where(x => x.UserId == userId).ExecuteDelete();

            // Delete User
            var user = _context.Users.FirstOrDefault(x => x.Id == userId);
            if (user != null)
            {
                _context.Users.Remove(user);
                _context.SaveChanges();
            }

            return true;
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

        List<NotificationViewModel> IUserRepository.GetAllNotifications(int userID)
        {
            var notificationModel = _context.Notifications
                .Include(n => n.User)
                .Include(n => n.NotificationType)
                .Where(n => n.UserId == userID)
                .OrderByDescending(n => n.CreatedDate)
                .ToList();

            var notificationsViewModel = notificationModel.Select(n => new NotificationViewModel
            {
                ID = n.Id,
                UserID = n.UserId,
                NotificationType = n.NotificationType?.Name,
                Message = n.Message,
                TotalCount = notificationModel.Count,
                NewCount = notificationModel.Count(x => x.CreatedDate > DateTime.Now.AddDays(-15)), // Example condition for new notifications
            }).ToList();

            
            return notificationsViewModel;
        }
    }
}

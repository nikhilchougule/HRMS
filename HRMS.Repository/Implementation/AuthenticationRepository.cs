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

namespace HRMS.Repository.Implementation
{
    public class AuthenticationRepository : IAuthenticationRepository
    {
        private HRMSDBContext _context = new HRMSDBContext();

        public AuthenticationRepository()
        {
            //var config = new ConfigurationBuilder()
            //    .Build();

            //var builder = new DbContextOptionsBuilder<HRDBContext>();

            //builder.UseSqlServer(config.GetConnectionString("DefaultConnection"));
        }

        void IAuthenticationRepository.CheckUserEmailAndPassword()
        {

            //HRMS.Model.Models.User newUser = new HRMS.Model.Models.User();

            //newUser.Name = "fsf";
            //newUser.Email = "fdsf";
            //newUser.Password = "userPassword";
            //newUser.MobileNumber = "324234";
            //newUser.ExperienceLevelId = 1;

            //HRDBContext context = new HRDBContext();


            //context.Users.Add(newUser);
            //context.SaveChangesAsync();
            //HRDBContext context = new HRDBContext();

            //var dfd = context.HireeRoles.ToList();

           // throw new NotImplementedException();
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
            }
            catch (Exception ex) {
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
    }

    public class ApiContext : DbContext
    {
        public ApiContext(DbContextOptions<ApiContext> options) : base(options)
        {
        }

   //     protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
   //=> optionsBuilder.UseSqlServer("Data Source=LENOVO-NIK\\SQLEXPRESS2022;Initial Catalog=HRMS;Trusted_Connection=True;TrustServerCertificate=True;");

   //     options.UseSqlServer(
   //                         configuration.GetConnectionString("DefaultConnection")
    }
}

using HRMS.Business.Contract;
using HRMS.Infrastructure.Common;
using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using HRMS.ViewModel.Authentication;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;

namespace HRMS.Business.Implementation
{
    public class AuthenticationBusiness : IAuthenticationBusiness
    {
        //inject repository service in business
        private IAuthenticationRepository _authRepository= new AuthenticationRepository();
        private IConfiguration _configuration;
        private IServiceCollection _services;

        //public AuthenticationBusiness(IConfiguration config, IServiceCollection serviceDescriptors, IAuthenticationRepository authRepository)
        //{
        //   // _authRepository = authRepository;
        //    _configuration = config;
        //    _services = serviceDescriptors;

        //    //_services.AddScoped<IAuthenticationRepository, IAuthenticationRepository>();
        //}
        //inject repository service here

        public Boolean SendMailConfirmation(string userEmail)
        {
            throw new NotImplementedException();
        }

        UserSignupResponseViewModel IAuthenticationBusiness.SignupUser(AuthenticationViewModel.UserSignupRequestViewModel userSignupRequestViewModel)
        {
            //Validdate Roles
            //Validate if User Exists

            UserSignupResponseViewModel userSignupResponseViewModel = new UserSignupResponseViewModel();

            userSignupResponseViewModel = ValidateRoles(userSignupRequestViewModel);

            if (!userSignupResponseViewModel.IsError)
            {

                UserViewModel user = _authRepository.GetUser(userSignupRequestViewModel);

                //check with Email as well
                if (user.Email == null) {
                    UserSignupResponseViewModel userSignupResponseRegisterViewModel = new UserSignupResponseViewModel();
                    userSignupResponseRegisterViewModel.Roles = new List<string>();

                    byte[] passwordHash;
                    byte[] passwordSalt;
                    PasswordHasher.CreatePasswordHash(userSignupRequestViewModel.Password!, out passwordHash, out passwordSalt);

                    userSignupRequestViewModel.PasswordHash = passwordHash;
                    userSignupRequestViewModel.PasswordSalt = passwordSalt;
                    userSignupResponseRegisterViewModel = _authRepository.RegisterUser(userSignupRequestViewModel);

                    userSignupResponseViewModel.Name = userSignupResponseRegisterViewModel.Name;
                    userSignupResponseViewModel.Email = userSignupResponseRegisterViewModel.Email;
                    userSignupResponseViewModel.MobileNumber = userSignupResponseRegisterViewModel.MobileNumber;
                }
                else
                {
                    userSignupResponseViewModel.IsError = true;
                    userSignupResponseViewModel.ErrorMessages!.Add("User Email already exists. You can continue login !");
                }
            }                   

            return userSignupResponseViewModel;
        }

        //Functions
        UserSignupResponseViewModel ValidateRoles(UserSignupRequestViewModel userSignupRequestViewModel)
        {
            UserSignupResponseViewModel userSignupResponseViewModel = new UserSignupResponseViewModel();
            userSignupResponseViewModel.ErrorMessages = new List<string>();
            userSignupResponseViewModel.Roles = new List<string>();

            if(userSignupRequestViewModel.Administrator == true)
            {
                userSignupResponseViewModel.Roles!.Add("Administrator");
            }

            if(userSignupRequestViewModel.Employee == true)
            {
                userSignupResponseViewModel.Roles!.Add("Employee");
            }

            if (userSignupRequestViewModel.HR == true) 
            {
                userSignupResponseViewModel.Roles!.Add("HR");
            }

            if (userSignupResponseViewModel.Roles!.Count == 0) {
                userSignupResponseViewModel.IsError = true;
                userSignupResponseViewModel.ErrorMessages!.Add("No Roles checked. Please check atleast one role to continue Registration.");
            }

            return userSignupResponseViewModel;
        }
        //Functions End

    }
}

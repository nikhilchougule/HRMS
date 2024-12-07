using HRMS.Business.Contract;
using HRMS.Infrastructure.Common;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using HRMS.ViewModel.Authentication;
using HRMS.ViewModel.Common;
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
using static HRMS.ViewModel.Common.UserRoleViewModel;

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
            UserSignupResponseViewModel userSignupResponseViewModel = new UserSignupResponseViewModel();
            //userSignupResponseViewModel = ValidateRoles(userSignupRequestViewModel);

            if (!userSignupResponseViewModel.IsError)
            {
                UserViewModel user = _authRepository.GetUser(userSignupRequestViewModel);
                if (user.Email == null) {
                    UserSignupResponseViewModel userSignupResponseRegisterViewModel = new UserSignupResponseViewModel();
                    userSignupResponseRegisterViewModel.Roles = new List<string>();

                    byte[] passwordHash;
                    byte[] passwordSalt;
                    PasswordHasher.CreatePasswordHash(userSignupRequestViewModel.Password!, out passwordHash, out passwordSalt);
                    userSignupRequestViewModel.PasswordHash = passwordHash;
                    userSignupRequestViewModel.PasswordSalt = passwordSalt;

                    userSignupResponseRegisterViewModel = _authRepository.RegisterUser(userSignupRequestViewModel);
                    
                    userSignupResponseViewModel.UserID = userSignupResponseRegisterViewModel.UserID;
                    userSignupResponseViewModel.Name = userSignupResponseRegisterViewModel.Name;
                    userSignupResponseViewModel.Email = userSignupResponseRegisterViewModel.Email;
                    userSignupResponseViewModel.MobileNumber = userSignupResponseRegisterViewModel.MobileNumber;

                     //_authRepository.RegisterUserRoles(userSignupResponseViewModel);
                }
                else
                {
                    userSignupResponseViewModel.IsError = true;
                    userSignupResponseViewModel.ErrorMessages!.Add("Email already exists. You can continue login !");
                }
            }                   
            return userSignupResponseViewModel;
        }

        UserSigninResponseViewModel IAuthenticationBusiness.SigninUser(AuthenticationViewModel.UserSigninRequestViewModel userSigninRequestViewModel)
        {
            UserSigninResponseViewModel userSigninResponseViewModel = _authRepository.GetUserForSignin(userSigninRequestViewModel);

            if(userSigninResponseViewModel.Email == null)
            {
                userSigninResponseViewModel.IsValid = false;
                userSigninResponseViewModel.IsError = true;
                userSigninResponseViewModel.ErrorMessages!.Add("Email not found. Please contact HR team !");
            }
            else if (userSigninResponseViewModel.IsApproved == false || userSigninResponseViewModel.IsActive == false)
            {
                userSigninResponseViewModel.IsValid = false;
                userSigninResponseViewModel.IsError = true;
                userSigninResponseViewModel.ErrorMessages!.Add("Your Account is either Locked or not Approved. Please contact HR team !");
            }
            else if (userSigninResponseViewModel.IsValid! == false || !PasswordHasher.VerifyPasswordHash(userSigninRequestViewModel.Password!, userSigninResponseViewModel.PasswordHash!, userSigninResponseViewModel.PasswordSalt!))
            {
                userSigninResponseViewModel.IsValid = false;
                userSigninResponseViewModel.IsError = true;
                userSigninResponseViewModel.ErrorMessages!.Add("Invalid Email or Password. Please contact HR team !");
            }
            else if(userSigninResponseViewModel.IsValid! == true || PasswordHasher.VerifyPasswordHash(userSigninRequestViewModel.Password!, userSigninResponseViewModel.PasswordHash!, userSigninResponseViewModel.PasswordSalt!))
            {
                userSigninResponseViewModel.IsValid = true;
            }         
            else
            {
                userSigninResponseViewModel.IsValid = false;
                userSigninResponseViewModel.IsError = true;
                userSigninResponseViewModel.ErrorMessages!.Add("Trouble Logging in. Please contact HR team !");
            }

            return userSigninResponseViewModel;
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

        UserRoleViewModel AssignUserRoles(UserSignupResponseViewModel userSignupResponseViewModel)
        {
            UserRoleViewModel userRoleViewModel = new UserRoleViewModel();
            userRoleViewModel = _authRepository.RegisterUserRoles(userSignupResponseViewModel);
            return userRoleViewModel;
        }
        //Functions End

    }
}

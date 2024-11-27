using HRMS.Business.Contract;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

        public Boolean IsValidUser(string userEmail, string userPassword)
        {
            _authRepository.CheckUserEmailAndPassword();
            return false;
        }

        public Boolean RegisterUser(string userEmail, string userPassword)
        {
            // throw new NotImplementedException();
            
            _authRepository.RegisterUser(userEmail, userPassword);
            return true;
        }

        public Boolean SendMailConfirmation(string userEmail)
        {
            throw new NotImplementedException();
        }

        bool IAuthenticationBusiness.RegisterUser(string userEmail)
        {
            throw new NotImplementedException();
        }
    }
}

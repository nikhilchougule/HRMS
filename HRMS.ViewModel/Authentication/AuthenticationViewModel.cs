﻿using HRMS.ViewModel.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Authentication
{
    public class AuthenticationViewModel
    {

        public class UserViewModel 
        {
            public string? Name { get; set; }
            public string? Email { get; set; }
            public string? MobileNumber { get; set; }
        }

        public class UserSignupRequestViewModel : UserViewModel
        {           
            public string? Password { get; set; }
            public byte[]? PasswordHash { get; set; }
            public byte[]? PasswordSalt { get; set; }         
            public Boolean Administrator { get; set; }
            public Boolean Employee { get; set; }
            public Boolean HR { get; set; }
            public Boolean Hiree { get; set; }
        }

        public class UserSignupResponseViewModel : ErrorViewModel
        {
            public int UserID { get; set; }
            public string? Name { get; set; }
            public string? Email { get; set; }
            public string? MobileNumber { get; set; }
            public List<string>? Roles { get; set; } = new List<String>();
        }

        public class UserSigninRequestViewModel : UserViewModel
        {
            public string? Password { get; set; }
        }

        public class UserSigninResponseViewModel : ErrorViewModel
        {
            public int UserID { get; set; }
            public string? Name { get; set; }
            public string? Email { get; set; }
            public string? MobileNumber { get; set; }
            public byte[]? PasswordHash { get; set; }
            public byte[]? PasswordSalt { get; set; }
            public string? JwtToken { get; set; }
            public Boolean IsValid { get; set; }
            public List<string>? Roles { get; set; } = new List<String>();
            public Boolean? IsActive { get; set; }
            public Boolean? IsApproved { get; set; }
        }

    }
}



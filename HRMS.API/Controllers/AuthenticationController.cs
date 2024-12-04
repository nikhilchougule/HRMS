using HRMS.Business.Contract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Http.Json;
using System.Text;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;

namespace HRMS.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private IConfiguration _config;
        private IAuthenticationBusiness _authBusiness;
        public static string  token;

        public AuthenticationController(IConfiguration config, IAuthenticationBusiness auth)
        {
            _config = config;
            _authBusiness = auth;
        }

        [HttpPost]
        [Route("SignupUser")]
        public IActionResult SignupUser(UserSignupRequestViewModel userSignupRequestViewModel)
        {
            UserSignupResponseViewModel userSignupResponseViewModel = _authBusiness.SignupUser(userSignupRequestViewModel);
            return Ok(userSignupResponseViewModel);
        }

        [HttpPost]
        [Route("SigninUser")]
        public IActionResult SigninUser(UserSigninRequestViewModel userSigninRequestViewModel)
        {
            UserSigninResponseViewModel userSigninResponseViewModel = _authBusiness.SigninUser(userSigninRequestViewModel);

            if (userSigninResponseViewModel.IsValid)
            {
                var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]!));
                var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
                var Sectoken = new JwtSecurityToken(_config["Jwt:Issuer"], _config["Jwt:Issuer"], null, expires: DateTime.Now.AddMinutes(120), signingCredentials: credentials);
                token = new JwtSecurityTokenHandler().WriteToken(Sectoken);
                userSigninResponseViewModel.JwtToken = token;
                userSigninResponseViewModel.PasswordHash = null;
                userSigninResponseViewModel.PasswordSalt = null;
                return Ok(userSigninResponseViewModel);
            }
            else
            {
                userSigninResponseViewModel.PasswordHash = null;
                userSigninResponseViewModel.PasswordSalt = null;
                return Ok(userSigninResponseViewModel);
            }
        }

        [HttpGet]
        [Route("GetToken")]
        public IActionResult GetToken()
        {
            UserSigninResponseViewModel userSigninResponseViewModel = new UserSigninResponseViewModel();
            userSigninResponseViewModel.JwtToken = token;
            return Ok(userSigninResponseViewModel);
        }

    }

    
}

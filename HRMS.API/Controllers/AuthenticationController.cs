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
        [Route("AuthenticateUser")]
        public IActionResult AuthenticateUser(UserSignupRequestViewModel UserSignupRequestViewModel)
        {
            //Check if userEmail and Password valid. IF Yes, then send token else send invalid message

            //if (_authBusiness.IsValidUser(UserSignupRequestViewModel.Email, UserSignupRequestViewModel.Password))
            //{
            //    var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]!));
            //    var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            //    var Sectoken = new JwtSecurityToken(_config["Jwt:Issuer"], _config["Jwt:Issuer"], null, expires: DateTime.Now.AddMinutes(120), signingCredentials: credentials);
            //    var token = new JwtSecurityTokenHandler().WriteToken(Sectoken);

            //    return Ok(token);
            //}
            //else
            //{
            //    return Ok("NoUserPasswordCombinationFound");
            //}

            return Ok("df");
        }

        [HttpGet]
        [Route("CheckAuthorization")]
        [Authorize]
        public IActionResult CheckAuthorize(string userEmail)
        {
            return Ok("AuthorizedSuccessfull");
        }

        //UserSignupRequestViewModel
    }

    
}

using HRMS.Business.Contract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Text;

namespace HRMS.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private IConfiguration _config;
        private IAuthenticationBusiness _authBusiness;

        public AuthenticationController(IConfiguration config, IAuthenticationBusiness auth) {
            _config = config;
            _authBusiness = auth;
        }

        [HttpPost]
        [Route("AuthenticateUser")]
        public IActionResult AuthenticateUser(string userEmail, string userPassword)
        {
            //Check if userEmail and Password valid. IF Yes, then send token else send invalid message

            if (_authBusiness.IsValidUser(userEmail, userPassword))
            {
                var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]!));
                var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

                var Sectoken = new JwtSecurityToken(_config["Jwt:Issuer"], _config["Jwt:Issuer"], null, expires: DateTime.Now.AddMinutes(120), signingCredentials: credentials);
                var token = new JwtSecurityTokenHandler().WriteToken(Sectoken);

                return Ok(token);
            }
            else
            {
                return NotFound("NoUserPasswordCombinationFound");
            }            
        }
       
        [HttpGet]
        [Route("CheckAuthorization")]
        [Authorize]
        public IActionResult CheckAuthorize(string userEmail)
        {
            return Ok("AuthorizedSuccessfull");
        }

    }
}

using HRMS.Business.Contract;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.Notification;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;

namespace HRMS.API.Controllers.API_V1
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IConfiguration _config;
        private IUserBusiness _userBusiness;

        public UserController(IConfiguration config, IUserBusiness userBusiness)
        {
            _config = config;
            _userBusiness = userBusiness;
        }

        [HttpPost]
        [Route("UpdateUser")]
        public IActionResult UpdateUser(UpdateUserViewModel userViewModel)
        {
            _userBusiness.UpdateUser(userViewModel);
            return Ok();
        }

        [HttpPost]
        [Route("CreateUser")]
        public IActionResult CreateUser(CreateUserViewModel userViewModel)
        {
            _userBusiness.CreateUser(userViewModel);
            return Ok();
        }

        [HttpGet]
        [Route("DeleteUser/{userID}")]
        public IActionResult DeleteUser(int userID)
        {
            _userBusiness.DeleteUser(userID);
            return Ok();
        }

        //Moved from UserConfigurationController
        [HttpGet]
        [Route("GetAllUsers/{userID}")]
        public IActionResult GetAllUsers(int userID)
        {
            List<UserViewModel> userViewModel = new List<UserViewModel>();
            userViewModel = _userBusiness.GetAllUsers(userID);
            var jsonResult = new JsonResult(userViewModel);
            return jsonResult;
        }

        [HttpGet]
        [Route("GetAllNotifications/{userID}")]
        public IActionResult GetAllNotifications(int userID)
        {
            List<NotificationViewModel> userNotificationsViewModel = new List<NotificationViewModel>();
            userNotificationsViewModel = _userBusiness.GetAllNotifications(userID);
            var jsonResult = new JsonResult(userNotificationsViewModel);
            return jsonResult;
        }

        [HttpGet]
        [Route("GetAllApplicants")]
        public IActionResult GetAllApplicants()
        {
            List<UserViewModel> userViewModel = new List<UserViewModel>();
            userViewModel = _userBusiness.GetAllApplicants();
            var jsonResult = new JsonResult(userViewModel);
            return jsonResult;
        }

        [HttpPost]
        [Route("GetUsersByRole")]
        public IActionResult GetUsersByRole(string roleName = "All")
        {
            List<UserViewModel> userViewModel = new List<UserViewModel>();
            userViewModel = _userBusiness.GetUsersByRole(roleName);
            var jsonResult = new JsonResult(userViewModel);
            return jsonResult;
        }
    }
}

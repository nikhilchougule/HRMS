using HRMS.Business.Contract;
using HRMS.ViewModel.Common;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;

namespace HRMS.API.Controllers.API_V1
{
    [Route("api/[controller]")]
    [ApiController]
    public class AppConfigurationController : ControllerBase
    {
        private readonly string _defaultPassword;

        public AppConfigurationController(IConfiguration configuration)
        {
            _defaultPassword = configuration["AppConfiguration:DefaultPassword"] ?? throw new ArgumentNullException(nameof(configuration), "Default password configuration is missing.");
        }

        [HttpGet]
        [Route("Get")]
        public IActionResult Get()
        {
            AppConfigurationViewModel appConfig = new AppConfigurationViewModel();
            appConfig.DefaultPassword = _defaultPassword;
            return new JsonResult(appConfig);
        }

    }
}

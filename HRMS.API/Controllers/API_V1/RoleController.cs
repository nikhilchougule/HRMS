using HRMS.Business.Contract;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace HRMS.API.Controllers.API_V1
{
   [Route("api/[controller]")]
    [ApiController]
    public class RoleController : Controller
    {
        private IConfiguration _config;
        private ISelectListBusiness _selectListBusiness;

        public RoleController(IConfiguration config, ISelectListBusiness selectListBusiness)
        {
            _config = config;
            _selectListBusiness = selectListBusiness;
        }

        [HttpPost]
        [Route("GetAllRoles")]
        public IActionResult GetAllRoles()
        {
            return new JsonResult(_selectListBusiness.GetAllRoles());
        }
    }
}

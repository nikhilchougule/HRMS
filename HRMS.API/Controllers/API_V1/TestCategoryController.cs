using HRMS.Business.Contract;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace HRMS.API.Controllers.API_V1
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestCategoryController : Controller
    {
        private IConfiguration _config;
        private ISelectListBusiness _selectListBusiness;

        public TestCategoryController(IConfiguration config, ISelectListBusiness selectListBusiness)
        {
            _config = config;
            _selectListBusiness = selectListBusiness;
        }

        [HttpGet]
        [Route("GetAllTestCategories")]
        public IActionResult GetAllTestCategories()
        {
            return new JsonResult(_selectListBusiness.GetAllTestCategories());
        }
    }
}

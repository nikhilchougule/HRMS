using HRMS.Business.Contract;
using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Business.Implementation
{
    public class SelectListBusiness : ISelectListBusiness
    {
        private readonly ISelectListRepository _selectListRepository;

        public SelectListBusiness(HRMSDBContext context)
        {
            _selectListRepository = new SelectListRepository(context);
        }

        List<ExperienceLevelViewModel> ISelectListBusiness.GetAllExperienceLevels()
        {
            return _selectListRepository.GetAllExperienceLevels();
        }

        List<RoleViewModel> ISelectListBusiness.GetAllRoles()
        {
            return _selectListRepository.GetAllRoles();
        }

        List<SkillViewModel> ISelectListBusiness.GetAllSkills()
        {
            return _selectListRepository.GetAllSkills();
        }

        List<TestCategoryViewModel> ISelectListBusiness.GetAllTestCategories()
        {
            return _selectListRepository.GetAllTestCategories();
        }
    }
}

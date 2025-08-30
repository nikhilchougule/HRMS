using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.SelectList.ExperienceLevelViewModel;

namespace HRMS.Business.Contract
{
    public interface ISelectListBusiness
    {
        List<ExperienceLevelViewModel> GetAllExperienceLevels();
        List<SkillViewModel> GetAllSkills();
        List<RoleViewModel> GetAllRoles();
        List<TestCategoryViewModel> GetAllTestCategories();
    }
}

using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Contract
{
   public interface ISelectListRepository
    {
        List<ExperienceLevelViewModel> GetAllExperienceLevels();
        List<SkillViewModel> GetAllSkills();
        List<RoleViewModel> GetAllRoles();
        List<TestCategoryViewModel> GetAllTestCategories();
    }
}

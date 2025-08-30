using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Implementation
{
    public class SelectListRepository : ISelectListRepository
    {
        private readonly HRMSDBContext _context;

        public SelectListRepository(HRMSDBContext context)
        {
            _context = context;
        }

        List<ExperienceLevelViewModel> ISelectListRepository.GetAllExperienceLevels()
        {
            List<ExperienceLevelViewModel> userExperienceLevels = new List<ExperienceLevelViewModel>();

            userExperienceLevels = _context.ExperienceLevels.Select(x => new ExperienceLevelViewModel
            {
                ID = x.Id,
                Name = x.Name
            }).ToList();

            return userExperienceLevels;
        }

        List<RoleViewModel> ISelectListRepository.GetAllRoles()
        {
            List<RoleViewModel> userRoles = new List<RoleViewModel>();

            userRoles = _context.Roles.Select(x => new RoleViewModel
            {
                ID = x.Id,
                Name = x.Name
            }).ToList();

            return userRoles;
        }

        List<SkillViewModel> ISelectListRepository.GetAllSkills()
        {
            List<SkillViewModel> userSkills = new List<SkillViewModel>();
            userSkills = _context.Skills.Select(x => new SkillViewModel
            {
                ID = x.Id,
                Name = x.Name
            }).ToList();

            return userSkills;
        }

        List<TestCategoryViewModel> ISelectListRepository.GetAllTestCategories()
        {
            List<TestCategoryViewModel> testCategories = new List<TestCategoryViewModel>();

            testCategories = _context.TestCategories
                .Where(tc => tc.Questions.Count > 0)
                .Select(x => new TestCategoryViewModel
                {
                    ID = x.Id,
                    Name = x.Name,
                    QuestionsCount = x.Questions.Count
                }).ToList();

            return testCategories;
        }
    }
}

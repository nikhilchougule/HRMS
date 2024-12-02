using HRMS.Model.Objects;
using HRMS.ViewModel.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;
using static HRMS.ViewModel.Common.UserRoleViewModel;

namespace HRMS.Repository.Contract
{
    public interface IAuthenticationRepository
    {
        public void CheckUserEmailAndPassword();

        public UserSignupResponseViewModel RegisterUser(UserSignupRequestViewModel userSignupRequestViewModel);

        public UserViewModel GetUser(UserSignupRequestViewModel userSignupRequestViewModel);

        public UserRoleViewModel RegisterUserRoles(UserSignupResponseViewModel userSignupResponseViewModel);
    }
}

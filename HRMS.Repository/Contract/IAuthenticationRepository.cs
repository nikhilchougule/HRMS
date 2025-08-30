using HRMS.Model.Objects;
using HRMS.ViewModel.Common;
using HRMS.ViewModel.SelectList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;
using static HRMS.ViewModel.SelectList.RoleViewModel;

namespace HRMS.Repository.Contract
{
    public interface IAuthenticationRepository
    {
        public void CheckUserEmailAndPassword();

        public UserSignupResponseViewModel RegisterUser(UserSignupRequestViewModel userSignupRequestViewModel);

        public UserViewModel GetUser(UserSignupRequestViewModel userSignupRequestViewModel);

        //public RoleViewModel RegisterUserRoles(List<string> Roles, int userID);

        public UserSigninResponseViewModel GetUserForSignin(UserSigninRequestViewModel userSigninRequestViewModel);
    }
}

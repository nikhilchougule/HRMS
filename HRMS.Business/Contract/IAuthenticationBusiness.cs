using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HRMS.ViewModel.Authentication.AuthenticationViewModel;

namespace HRMS.Business.Contract
{
    public interface IAuthenticationBusiness
    {

        public Boolean SendMailConfirmation(string userEmail);

        public UserSignupResponseViewModel SignupUser(UserSignupRequestViewModel userSignupRequestViewModel);
    }
}

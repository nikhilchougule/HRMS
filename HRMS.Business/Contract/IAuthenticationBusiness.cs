using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Business.Contract
{
    public interface IAuthenticationBusiness
    {
        public Boolean IsValidUser(string userEmail, string userPassword);

        public Boolean RegisterUser(string userEmail);

        public Boolean SendMailConfirmation(string userEmail);
    }
}

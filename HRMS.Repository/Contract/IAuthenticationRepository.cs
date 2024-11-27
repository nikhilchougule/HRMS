using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.Repository.Contract
{
    public interface IAuthenticationRepository
    {
        public void CheckUserEmailAndPassword();

        public Boolean RegisterUser(string userEmail, string userPassword);
    }
}

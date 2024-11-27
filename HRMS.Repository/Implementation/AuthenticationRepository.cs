using HRMS.Repository.Contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;


namespace HRMS.Repository.Implementation
{
    public class AuthenticationRepository : IAuthenticationRepository
    {

        public AuthenticationRepository()
        {
            //var config = new ConfigurationBuilder()
            //    .Build();

            //var builder = new DbContextOptionsBuilder<HRDBContext>();

            //builder.UseSqlServer(config.GetConnectionString("DefaultConnection"));
        }
        

        void IAuthenticationRepository.CheckUserEmailAndPassword()
        {

            //HRMS.Model.Models.User newUser = new HRMS.Model.Models.User();

            //newUser.Name = "fsf";
            //newUser.Email = "fdsf";
            //newUser.Password = "userPassword";
            //newUser.MobileNumber = "324234";
            //newUser.ExperienceLevelId = 1;

            //HRDBContext context = new HRDBContext();


            //context.Users.Add(newUser);
            //context.SaveChangesAsync();
            //HRDBContext context = new HRDBContext();

            //var dfd = context.HireeRoles.ToList();

           // throw new NotImplementedException();
        }

        Boolean IAuthenticationRepository.RegisterUser(string userEmail, string userPassword)
        {

            //HRMS.Model.Models.User newUser = new HRMS.Model.Models.User();

            //newUser.Email = "userEmail";
            //newUser.Password = "userPassword";


            //HRDBContext context = new HRDBContext();

            
            //context.Users.Add(newUser);

            return false;
        }

    }

    public class User
    {
        public string ?Email { get; set; }
        public string ?Password { get; set; }
    }

    public class ApiContext : DbContext
    {
        public ApiContext(DbContextOptions<ApiContext> options) : base(options)
        {
        }

   //     protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
   //=> optionsBuilder.UseSqlServer("Data Source=LENOVO-NIK\\SQLEXPRESS2022;Initial Catalog=HRMS;Trusted_Connection=True;TrustServerCertificate=True;");

   //     options.UseSqlServer(
   //                         configuration.GetConnectionString("DefaultConnection")
    }
}

using HRMS.Model.Objects;
using HRMS.Repository.Contract;
using HRMS.Repository.Implementation;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace HRMS.Repository.Extensions
{
    public static class ServiceCollectionExtensions
    {
        public static IServiceCollection AddRepositoryServices(this IServiceCollection services, string connectionString)
        {
            // Register HRMSDBContext with SQL Server
            services.AddDbContext<HRMSDBContext>(options =>
                options.UseSqlServer(connectionString));

            // Register other repository services if needed
            services.AddScoped<IUserRepository, UserRepository>();

            return services;
        }
    }
}
using HRMS.API.Filters;
using HRMS.Business.Contract;
using HRMS.Business.Implementation;
using HRMS.Model.Objects;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

//Jwt configuration starts here
var jwtIssuer = builder.Configuration.GetSection("Jwt:Issuer").Get<string>()!;
var jwtKey = builder.Configuration.GetSection("Jwt:Key").Get<string>()!;
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");

builder.Services.AddControllers()
.AddJsonOptions(options =>
{
    options.JsonSerializerOptions.PropertyNamingPolicy = null;
});

builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
 .AddJwtBearer(options =>
 {
     options.TokenValidationParameters = new TokenValidationParameters
     {
         ValidateIssuer = true,
         ValidateAudience = true,
         ValidateLifetime = true,
         ValidateIssuerSigningKey = true,
         ValidIssuer = jwtIssuer,
         ValidAudience = jwtIssuer,
         IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey))
     };
 });
//Jwt configuration ends here

// Add services to the container.
builder.Services.AddControllers();

builder.Services.AddControllersWithViews(options =>
{
    options.Filters.Add(new GlobalExceptionFilter());
});

builder.Services.AddScoped<IAuthenticationBusiness, AuthenticationBusiness>();
builder.Services.AddScoped<IUserBusiness, UserBusiness>();
builder.Services.AddScoped<ISelectListBusiness, SelectListBusiness>();
builder.Services.AddScoped<IAptitudeTestBusiness, AptitudeTestBusiness>();
//services.AddDbContext<HRMSDBContext>(options => options.UseSqlServer(connectionString));
builder.Services.AddDbContext<HRMSDBContext>(options => options.UseSqlServer(connectionString));
// Define the connection string variable


builder.Services.AddDbContext<HRMSDBContext>(options => options.UseSqlServer(connectionString));
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseCors(x => x
            .AllowAnyOrigin()
            .AllowAnyMethod()
            .AllowAnyHeader());

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
    app.UseDeveloperExceptionPage();
}
else
{
    app.UseExceptionHandler("/Home/Error");
}

app.UseAuthorization();

app.MapControllers();

app.Run();

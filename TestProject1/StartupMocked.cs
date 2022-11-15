//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using ForUnitTesting.mapper;
//using ForUnitTesting.Services;
//using Microsoft.Extensions.Configuration;
//using Microsoft.Extensions.DependencyInjection;
//using Microsoft.Extensions.Hosting;

//namespace TestProject1
//{
//    public class Startup
//    {
//        public void ConfigureServices(IServiceCollection services)
//        {
//            //services.AddSingleton<z, ZZ>();
//            //services.AddSingleton<OO>();
//            services.AddAutoMapper(cfg => cfg.AddMaps(typeof(PersonProfile).Assembly));
//        }

//        public void ConfigureHost(IHostBuilder hostBuilder)
//        {
//            hostBuilder.ConfigureAppConfiguration((appConfiguration) =>
//            {
//                appConfiguration.AddJsonFile("appsettings.json");
//                appConfiguration.AddInMemoryCollection(
//                  new[] {
//                   new KeyValuePair<string, string>("ConnectionStrings:LAF", "Data Source=SA-PC120;Initial Catalog=Demo;Integrated Security=True")
//                  }
//    );
//            });
//        }
//    }
//}
using ForUnitTesting.mapper;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace TestProject1
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services, HostBuilderContext context)
        {
       
            //services.AddSingleton<z, ZZ>();
            //services.AddSingleton<OO>();
            services.AddAutoMapper(cfg => cfg.AddMaps(typeof(PersonProfile).Assembly));
        }

        public void ConfigureHost(IHostBuilder hostBuilder)
        {
            hostBuilder.ConfigureHostConfiguration(conf =>
            {
                conf.AddJsonFile("appsettings.json");
            }).ConfigureAppConfiguration((context,appConfiguration) =>
            {
                appConfiguration.AddInMemoryCollection(
                  new[] {
                   new KeyValuePair<string, string>("ConnectionStrings:LAF", context.Configuration.GetConnectionString("XXXX"))
                  }
    );
            });
        }
    }
}
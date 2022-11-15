using Microsoft.SqlServer.Management.Smo.Wmi;
using Microsoft.SqlServer.Management.Smo;
using ForUnitTesting.mapper;
using ForUnitTesting.Interfaces;

namespace ForUnitTesting.Services
{
    public static class ServiceCollectionExtensions
    {
        public static IServiceCollection AddServices(this IServiceCollection serviceCollection)
        {
            serviceCollection.AddSingleton<IWeatherService, WeatherService>();
            serviceCollection.AddSingleton<ISessionService, SessionService>();
            serviceCollection.AddAutoMapper(cfg => cfg.AddMaps(typeof(PersonProfile).Assembly));
            serviceCollection.AddTransient<MyResolver>();
            //serviceCollection.AddSingleton<IConfiguration, Configuration>();
            return serviceCollection;
        }
    }
}

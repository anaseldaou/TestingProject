using ForUnitTesting.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace TestProject1.Fixtures
{
    public class ServicesCollection
    {
        private IServiceCollection _Services = new ServiceCollection();
        private ServiceProvider _ServiceProvider;
        public ServicesCollection()
        {
            _Services.AddServices();
            ConfigFixture();
            _ServiceProvider = _Services.BuildServiceProvider();
        }

        private void ConfigFixture()
        {
            var configuration = new ConfigurationBuilder().AddJsonFile("appsettings.json");
            configuration.AddInMemoryCollection( new[] {
                new KeyValuePair<string, string>("ConnectionStrings:LAF", "Data Source=SA-PC120;Initial Catalog=Demo;Integrated Security=True")
            });
            _Services.AddSingleton<IConfiguration>(configuration.Build());
        }

        protected T GetService<T>()
        {
            T? service = _ServiceProvider.GetService<T>();
            if (service == null)
            {
                throw new Exception("Requested Service is not provided");
            }
            return service;
        }

        protected void AddSingletonService<TService, TImplementation>()
            where TService : class
            where TImplementation : class, TService
        {
            _Services.AddSingleton<TService, TImplementation>();
            _ServiceProvider = _Services.BuildServiceProvider();
        }

        protected void AddScopedService<TService, TImplementation>()
            where TService : class
            where TImplementation : class, TService
        {
            _Services.AddScoped<TService, TImplementation>();
            _ServiceProvider = _Services.BuildServiceProvider();
        }
    }
}

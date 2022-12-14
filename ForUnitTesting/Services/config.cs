using Microsoft.SqlServer.Management.Smo.Wmi;
using Microsoft.SqlServer.Management.Smo;
using ForUnitTesting.mapper;
using ForUnitTesting.Interfaces;
using Microsoft.AspNetCore.Localization;
using System.Globalization;

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
            //serviceCollection.AddTransient<LocalizeResolver>();
            serviceCollection.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            //serviceCollection.AddSingleton<IConfiguration, Configuration>();
        //    serviceCollection.AddLocalization(options =>
        //    {
        //        options.ResourcesPath = "Resources";
        //    });

        //    serviceCollection.Configure<RequestLocalizationOptions>(options =>
        //    {
        //        var supportedCultures = new[]
        //        {
        //            new CultureInfo("en-US"),
        //            new CultureInfo("pt")
        //};

        //        options.SupportedCultures = supportedCultures;
        //        options.SupportedUICultures = supportedCultures;

        //        options.RequestCultureProviders.Insert(0, new CustomRequestCultureProvider(context =>
        //        {
        //            var languages = context.Request.Headers["Accept-Language"].ToString();
        //            var currentLanguage = languages.Split(',').FirstOrDefault();
        //            var defaultLanguage = string.IsNullOrEmpty(currentLanguage) ? "en-US" : currentLanguage;

        //            if (!supportedCultures.Where(s => s.Name.Equals(defaultLanguage)).Any())
        //            {
        //                defaultLanguage = "en-US";
        //            }

        //            return Task.FromResult(new ProviderCultureResult(defaultLanguage, defaultLanguage));
        //        }));
        //    });
            return serviceCollection;
        }
    }
}

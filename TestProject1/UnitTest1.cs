using ForUnitTesting.Interfaces;
using ForUnitTesting.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using TestProject1.Abstract.Sessions;
using TestProject1.Fixtures;
using Xunit.Abstractions;

namespace TestProject1
{
    [Collection("Database collection")]
    public class UnitTest1 : ServicesCollection
    {

        public UnitTest1() : base()
        {
        }
        [Fact]
        public void Test1()
        {
            AddSingletonService<ISessionService,MockSessionService>();
            IWeatherService weatherService = GetService<IWeatherService>();
            weatherService.Test();
            weatherService.Map(new ForUnitTesting.Entities.PersonDTO() { Address = "asdasda" , Name="Anas" });

        }
        [Fact]
        public void Test2()
        {
            IWeatherService weatherService = GetService<IWeatherService>();
            weatherService.Test();
            string actual = weatherService.Test();
            Assert.Equal("anas", actual);

        }
    }
    [Collection("Database collection")]
    public class UnitTest2 : ServicesCollection
    {

        public UnitTest2(): base()
        {
        }
        [Fact]
        public void Test1()
        {
            string actual = GetService<IWeatherService>().Test();
            Assert.Equal("anas", actual);
        }
    }
}
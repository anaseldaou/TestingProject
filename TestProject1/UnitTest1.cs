using ForUnitTesting.Interfaces;
using ForUnitTesting.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Identity.Client;
using Microsoft.Isam.Esent.Interop;
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
        //[Fact]
        public void Test1()
        {
            //AddSingletonService<ISessionService,MockSessionService>();
            //IWeatherService weatherService = GetService<IWeatherService>();
            //weatherService.Test();
            //weatherService.Map(new ForUnitTesting.Entities.PersonDTO() { Address = "asdasda" , Name="Anas" });

        }
        //[Fact]
        public void Test2()
        {
            //IWeatherService weatherService = GetService<IWeatherService>();
            //weatherService.Test();
            //string actual = weatherService.Test();
            //Assert.Equal("anas", actual);

        }
    }
    [Collection("Database collection")]
    public class UnitTest2 : ServicesCollection
    {
        IConfiguration _conf;
        public UnitTest2(IConfiguration conf): base()
        {
            _conf = conf;
        }
        [Fact]
        public void Test1()
        {
            var i = _conf.GetConnectionString("LAF");
            var z = _conf.GetConnectionString("XXXX");
            string actual = GetService<IWeatherService>().Test();
            Assert.True(true);
        }
    }
}
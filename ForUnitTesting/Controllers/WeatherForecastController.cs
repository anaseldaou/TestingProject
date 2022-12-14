using System.Diagnostics.CodeAnalysis;
using System.Security.Policy;
using ForUnitTesting.Entities;
using ForUnitTesting.Services;
using Microsoft.AspNetCore.Mvc;
using Razor.Templates;
using Razor.Templating.Core;
using SelectPdf;

namespace ForUnitTesting.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {

        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };
        private readonly IWeatherService _weather;
        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger, IWeatherService weatherService)
        {
            _weather = weatherService;
            _logger = logger;
        }

        [HttpGet(Name = "GetWeatherForecast")]
        public IEnumerable<WeatherForecast> WasikaByID()
        {
            return Enumerable.Range(1, 5).Select(index => new WeatherForecast
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }

        [HttpPost]
        public async Task<string> WasikaByIDSSS(PersonDTO person)
        {
            var invoiceModel = new Invoice
            {
                InvoiceNumber = "3232",
                CreatedDate = DateTime.Now,
                DueDate = DateTime.Now.AddDays(7),
                CompanyAddress = new Address
                {
                    Name = "XY Technologies",
                    AddressLine1 = "XY Street, Park Road",
                    City = "Chennai",
                    Country = "India",
                    Email = "xy-email@gmail.com",
                    PinCode = "600001"
                },
                BillingAddress = new Address
                {
                    Name = "XY Customer",
                    AddressLine1 = "ZY Street, Loyal Road",
                    City = "Bangalore",
                    Country = "India",
                    Email = "xy-customer@gmail.com",
                    PinCode = "343099"
                },
                PaymentMethod = new PaymentMethod
                {
                    Name = "Cheque",
                    ReferenceNumber = "94759849374"
                },
                LineItems = new List<LineItem>
        {
            new LineItem
            {
            Id = 1,
            ItemName = "USB Type-C Cable",
            Quantity = 3,
            PricePerItem = 10.33M
            },
               new LineItem
            {
            Id = 1,
            ItemName = "SSD-512G",
            Quantity = 10,
            PricePerItem = 90.54M
            }
        },
                CompanyLogoUrl = "https://raw.githubusercontent.com/soundaranbu/RazorTemplating/master/src/Razor.Templating.Core/assets/icon.png"
            };
            // instantiate the html to pdf converter
            HtmlToPdf converter = new HtmlToPdf();
            var html =  await RazorTemplateEngine.RenderAsync("~/Views/hello.cshtml", invoiceModel);
            // convert the url to pdf
            PdfDocument doc = converter.ConvertHtmlString(html);

            // save pdf document
            doc.Save("helloPdf.pdf");

            // close pdf document
            doc.Close();
            _weather.Map(person);
            return "hello";
        }
    }
}
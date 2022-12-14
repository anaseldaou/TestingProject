using System.Reflection;
using AutoMapper;
using ForUnitTesting.mapper;
using ForUnitTesting.Services;
using Microsoft.Extensions.Options;
using Microsoft.SqlServer.Management.Smo.Wmi;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
//var mapperConfig = new MapperConfiguration(mc =>
//{
//    mc.AddProfile(new PersonProfile());
//});
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(PersonProfile).Assembly));
//builder.Services.AddTransient<MyResolver>();
builder.Services.AddMvc();
//IMapper mapper = mapperConfig.CreateMapper();
//builder.Services.AddSingleton(mapper);

builder.Services.AddServices();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();
//var localizationOptions = app.Services.GetService<IOptions<RequestLocalizationOptions>>();
//app.UseRequestLocalization(localizationOptions.Value);

app.Run();

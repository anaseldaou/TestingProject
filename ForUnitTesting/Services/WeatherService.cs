using System.Data;
using System.Data.SqlClient;
using AutoMapper;
using ForUnitTesting.Entities;
using ForUnitTesting.Interfaces;

namespace ForUnitTesting.Services
{
    public class MockWeatherService : IWeatherService
    {
        private IConfiguration _conf;
        private IMapper _mapper;
        string connString;
        SqlConnection conn;
        public string _Code = "mockkk";


        public MockWeatherService(IConfiguration conf, IMapper mapper)
        {
            _conf = conf;
            _mapper = mapper;
            connString = _conf.GetConnectionString("LAF");
            conn = new SqlConnection(connString);
        }

        public string Test()
        {
            string script = "SELECT * FROM [LAF].[user] WHERE username=@username";
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(script, conn);
            cmd.Parameters.Add(new SqlParameter("@username", "anas"));
            string username = "";
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    username = reader.GetString("username");
                }
            }
            conn.Close();
            return username;
        }


        public void SetCode(string code)
        {
            this._Code = code;
        }

        public string GetCode()
        {
            return this._Code;
        }

        public Person Map(PersonDTO person)
        {
            Person destination = new Person();
            var i = _mapper.Map(person, destination);
            return i;
        }
    }
    public interface IWeatherService
    {
        public string Test();
        public void SetCode(string code);
        public string GetCode();
        Person Map(PersonDTO person);
    }
    public class WeatherService : IWeatherService
    {
        private IConfiguration _conf;
        private IMapper _mapper;
        string connString;
        SqlConnection conn;
        private ISessionService _sessionService;
        public string _Code = "hello";


        public WeatherService(IConfiguration conf, IMapper mapper, ISessionService sessionService)
        {
            _conf = conf;
            _mapper = mapper;
            connString = _conf.GetConnectionString("LAF");
            conn = new SqlConnection(connString);
            _sessionService = sessionService;
        }

        public string Test()
        {
            string script = "SELECT * FROM [LAF].[user] WHERE username=@username";
            if ( conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(script, conn);
            cmd.Parameters.Add(new SqlParameter("@username", "anas"));
            string username = "";
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    username = reader.GetString("username");
                }
            }
            conn.Close();
            return username;
        }


        public void SetCode(string code)
        {
            this._Code = code;
        }

        public string GetCode()
        {
            return this._Code;
        }

        public Person Map(PersonDTO person)
        {
            Person destination = new Person()
            {
                Name = "source___"
            };
            var lan = _sessionService.GetPreferredLanguage();
            var i = _mapper.Map(person, destination);
            return i;
        }
    }

}

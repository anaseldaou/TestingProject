using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ForUnitTesting.Interfaces;

namespace TestProject1.Abstract.Sessions
{
    public class MockSessionService : ISessionService
    {
        public MockSessionService()
        {
        }

        public string GetPassword()
        {
            return "mockPassword";
        }

        public string GetSessionId()
        {
            return "mockSessionId";
        }

        public string GetUserName()
        {
            return "mockUserName";
        }
    }
}

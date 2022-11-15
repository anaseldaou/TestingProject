using ForUnitTesting.Interfaces;

namespace ForUnitTesting.Services
{
    public class SessionService : ISessionService
    {
        IHttpContextAccessor _contextAccessor;
        public SessionService(IHttpContextAccessor contextAccessor)
        {
            _contextAccessor = contextAccessor;
        }

        public string GetPassword()
        {
            return "realPassword";
        }

        public string GetSessionId()
        {
            return "realSessionId";
        }

        public string GetUserName()
        {
            return "realUserName";
        }
    }
}

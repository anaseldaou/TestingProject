namespace ForUnitTesting.Interfaces
{
    public interface ISessionService
    {
        string GetSessionId();
        string GetUserName();
        string GetPassword();
        string GetPreferredLanguage();
    }
}

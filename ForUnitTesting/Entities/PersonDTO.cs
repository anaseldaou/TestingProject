using ForUnitTesting.Interfaces;
using ForUnitTesting.Services;

namespace ForUnitTesting.Entities
{
    public class PersonDTO
    {
        public string Name { get; set; }
        public string Address { get; set; }
    }

    public class Person
    {
        public ISessionService SessionService { get; set; }
        public string Hello { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public void SetHello()
        {
            this.Hello = this.Name;
        }
    }
}

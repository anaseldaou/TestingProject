using AutoMapper;
using ForUnitTesting.Entities;
using ForUnitTesting.Interfaces;
using ForUnitTesting.Services;

namespace ForUnitTesting.mapper
{
    public class MyResolver : IValueResolver<PersonDTO, Person,ISessionService>
    {
        private ISessionService _sessionService;

        public MyResolver(ISessionService weatherService)
        {
            _sessionService = weatherService;
        }

        ISessionService IValueResolver<PersonDTO, Person, ISessionService>.Resolve(PersonDTO source, Person destination, ISessionService destMember, ResolutionContext context)
        {
            return _sessionService;
        }
    }
    public class PersonProfile: Profile
    {
        public PersonProfile(): base()
        {
            CreateMap<PersonDTO, Person>().ForMember(x => x.SessionService, opt => opt.MapFrom<MyResolver>());
        }
    }
}

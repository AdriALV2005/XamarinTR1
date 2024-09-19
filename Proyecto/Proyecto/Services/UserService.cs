using Proyecto.Models;
using System.Threading.Tasks;

namespace Proyecto.Services
{
    public interface IUserService
    {
        UserModel CurrentUser { get; set; }
        Task<UserModel> GetCurrentUserAsync();
        Task SetCurrentUserAsync(UserModel user);
    }

    public class UserService : IUserService
    {
        private UserModel _currentUser;

        public UserModel CurrentUser
        {
            get => _currentUser;
            set => _currentUser = value;
        }

        public Task<UserModel> GetCurrentUserAsync()
        {
            return Task.FromResult(_currentUser);
        }

        public Task SetCurrentUserAsync(UserModel user)
        {
            _currentUser = user;
            return Task.CompletedTask;
        }
    }
}
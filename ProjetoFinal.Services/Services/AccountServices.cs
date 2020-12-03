using ClassLibrary.Model;
using ProjetoFinal.Data.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Services.Services
{
    public class AccountServices
    {
        private AccountRepository _repo;

        public AccountServices()
        {
            _repo = new AccountRepository();
        }

        public List<Account> GetAll()
        {
            return _repo.GetAll();
        }

        public Account GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Account Account)
        {
            _repo.Add(Account);
        }

        public void Update(Account Account)
        {
            _repo.Update(Account);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }
    }
}

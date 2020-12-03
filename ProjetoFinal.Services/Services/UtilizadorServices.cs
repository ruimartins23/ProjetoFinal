using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using ProjetoFinal.Data.Repositories;

namespace ProjetoFinal.Services.Services
{
    public class UtilizadorServices
    {
        private UtilizadorRepository _repo;

        public UtilizadorServices()
        {
            _repo = new UtilizadorRepository();
        }

        public List<Utilizador> GetAll()
        {
            return _repo.GetAll();
        }

        public Utilizador GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Utilizador utilizador)
        {
            _repo.Add(utilizador);
        }

        public void Update(Utilizador utilizador)
        {
            _repo.Update(utilizador);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }

    }
}

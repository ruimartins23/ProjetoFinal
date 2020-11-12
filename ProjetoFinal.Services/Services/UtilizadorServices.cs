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
            return null;
        }

        public Utilizador GetById(int Id)
        {
            return null;
        }

        public void Add(Utilizador utilizador)
        {

        }

        public void Update(Utilizador utilizador)
        {

        }

        public void Remove(int Id)
        {

        }

    }
}

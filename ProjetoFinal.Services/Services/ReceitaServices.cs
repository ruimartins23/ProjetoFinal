using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProjetoFinal.Data.Repositories;
using ClassLibrary;

namespace ProjetoFinal.Services.Services
{
    public class ReceitaServices
    {
        private ReceitaRepository _repo;

        public ReceitaServices()
        {
            _repo = new ReceitaRepository();
        }

        public List<Receita> GetAll()
        {
            return _repo.GetAll();
        }

        public Receita GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Receita receita)
        {
            _repo.Add(receita);
        }

        public void Update(Receita receita)
        {
            _repo.Update(receita);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }

    }
}

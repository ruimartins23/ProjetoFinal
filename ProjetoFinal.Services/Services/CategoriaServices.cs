using ClassLibrary.Model;
using ProjetoFinal.Data.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Services.Services
{
    public class CategoriaServices
    {
        private CategoriaRepository _repo;

        public CategoriaServices()
        {
            _repo = new CategoriaRepository();
        }

        public List<Categoria> GetAll()
        {
            return _repo.GetAll();
        }

        public Categoria GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Categoria Categoria)
        {
            _repo.Add(Categoria);
        }

        public void Update(Categoria Categoria)
        {
            _repo.Update(Categoria);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }
    }
}

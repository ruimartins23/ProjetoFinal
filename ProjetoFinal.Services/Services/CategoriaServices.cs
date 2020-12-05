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

        public void Add(Categoria categoria)
        {
            _repo.Add(categoria);
        }

        public void Update(Categoria categoria)
        {
            _repo.Update(categoria);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }
    }
}

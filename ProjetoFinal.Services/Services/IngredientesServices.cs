using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using ProjetoFinal.Data.Repositories;

namespace ProjetoFinal.Services.Services
{
    public class IngredientesServices
    {
        private IngredienteRepository _repo;

        public IngredientesServices()
        {
            _repo = new IngredienteRepository();
            
        }

        public List<Ingrediente> GetAll()
        {
            return _repo.GetAll();
        }

        public Ingrediente GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Ingrediente ingrediente)
        {
             _repo.Add(ingrediente);
        }

        public void Update(Ingrediente ingrediente)
        {
            _repo.Update(ingrediente);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }
    }
}

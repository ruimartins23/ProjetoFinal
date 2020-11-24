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

            _
        }

        public List<Ingrediente> GetAll()
        {
            return null;
        }

        public Ingrediente GetById(int Id)
        {
            return null;
        }

        public void Add(Ingrediente ingrediente)
        {

        }

        public void Update(Ingrediente ingrediente)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}

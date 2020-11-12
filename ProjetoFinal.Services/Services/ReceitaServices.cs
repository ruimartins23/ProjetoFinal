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
            return null;
        }

        public Receita GetById(int Id)
        {
            return null;
        }

        public void Add(Receita receita)
        {

        }

        public void Update(Receita receita)
        {

        }

        public void Remove(int Id)
        {

        }


    }
}

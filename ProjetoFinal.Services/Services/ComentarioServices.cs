using ClassLibrary.Model;
using ProjetoFinal.Data.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Services.Services
{
    public class ComentarioServices
    {
        private ComentarioRepository _repo;

        public ComentarioServices()
        {
            _repo = new ComentarioRepository();
        }

        public List<Comentario> GetAll()
        {
            return _repo.GetAll();
        }

        public Comentario GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Comentario Comentario)
        {
            _repo.Add(Comentario);
        }

        public void Update(Comentario Comentario)
        {
            _repo.Update(Comentario);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }
    }
}

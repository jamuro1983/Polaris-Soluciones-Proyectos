using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebRegionalismos.Models.Repositorios
{
    public class RepositorioPalabra
    {
        public Palabra BuscarPais(int IdPalabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.Palabra.Find(IdPalabra);
            }
        }


        public void AgregarPais(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Palabra.Add(palabra);
                contexto.SaveChanges();
            }
        }

        public void EditarPais(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Entry(palabra).State = EntityState.Modified;
                contexto.SaveChanges();
            }
        }

        public void EliminarPais(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Entry(palabra).State = EntityState.Deleted;
                contexto.SaveChanges();
            }
        }

        public List<Palabra> ListarPaises()
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.Palabra.ToList();
            }
        }
    }
}
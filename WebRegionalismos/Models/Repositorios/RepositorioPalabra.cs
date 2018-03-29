using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebRegionalismos.Models
{
    public class RepositorioPalabra
    {
        public Palabra BuscarPalabra(int IdPalabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.Palabra.Find(IdPalabra);
            }
        }


        public void AgregarPalabra(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Palabra.Add(palabra);
                contexto.SaveChanges();
            }
        }

        public void EditarPalabra(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Entry(palabra).State = EntityState.Modified;
                contexto.SaveChanges();
            }
        }

        public void EliminarPalabra(Palabra palabra)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Entry(palabra).State = EntityState.Deleted;
                contexto.SaveChanges();
            }
        }

        public List<Palabra> ListarPalabras()
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.Palabra.ToList();
            }
        }
    }
}
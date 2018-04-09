using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebRegionalismos.Models
{
    public class RepositorioPalabraDefinicion
    {

        public List<Definicion> listarDefinicionPalabra()
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.Definicion.ToList();
            }
        }

        public void AgregarPalabraDefinicion(Definicion definicion)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Definicion.Add(definicion);

                contexto.SaveChanges();
            }
        }


        //public void AgregarPalabra(Palabra palabra, Pais pais, Definicion definicion, Idioma idioma)
        //{
        //    using (RegionalismoContexto contexto = new RegionalismoContexto())
        //    {
        //        contexto.Palabra.Add(palabra);

        //        PalabraPorPais palabraPorPais = new PalabraPorPais();

        //        contexto.SaveChanges();


        //    }
        //}
    }
}
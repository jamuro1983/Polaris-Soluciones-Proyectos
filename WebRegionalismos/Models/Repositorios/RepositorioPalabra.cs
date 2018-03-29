using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebRegionalismos.Models
{
    public class RepositorioPalabra
    {
        public List<vwCatalogoPalabras> ListarPalabras()
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                return contexto.vwCatalogoPalabras.ToList();
            }
        }

        public void AgregarPalabra(Palabra palabra, Pais pais, Definicion definicion, Idioma idioma)
        {
            using (RegionalismoContexto contexto = new RegionalismoContexto())
            {
                contexto.Palabra.Add(palabra);

                PalabraPorPais palabraPorPais = new PalabraPorPais();

                contexto.SaveChanges();


            }
        }
    }
}
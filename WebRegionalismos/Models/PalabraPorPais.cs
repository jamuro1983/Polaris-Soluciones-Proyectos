//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebRegionalismos.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PalabraPorPais
    {
        public int IdPalabraPorPais { get; set; }
        public string IdPais { get; set; }
        public int IdPalabra { get; set; }
    
        public virtual Pais Pais { get; set; }
        public virtual Palabra Palabra { get; set; }
    }
}
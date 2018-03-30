using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebRegionalismos.Models;


namespace WebRegionalismos.Controllers
{
    public class PalabraController : Controller
    {
        private RepositorioPalabra repositorio = new RepositorioPalabra();
        private RepositorioPais repoPais = new RepositorioPais();

        // GET: Palabra
        public ActionResult Index()
        {
            return View(repositorio.ListarPalabras());
        }

        public ActionResult Crear()
        {
            return View();
        }



    }
}
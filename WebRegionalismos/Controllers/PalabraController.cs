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

        // GET: Palabra
        public ActionResult Index()
        {
            return View(repositorio.ListarPalabras());
        }
    }
}
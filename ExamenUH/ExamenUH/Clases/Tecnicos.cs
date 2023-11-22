using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenUH.Clases
{
    public class Tecnicos
    {
        public int TecnicoID { get; set; }

        public string Nombre { get; set; }
        public string Especialidad { get; set; }

        public Tecnicos(string nombre, string especialidad)
        {

            Nombre = nombre;
            Especialidad = especialidad;
        }
        public Tecnicos() { }


        public void Agregar() { }

        public void Consular() { }

        public void Modificar() { }

        public void Borrar() { }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenUH.Clases
{
    public class Usuarios
    {
        public int UsuariosID { get; set; }
        public string Nombre { get; }
        public string CorreoElectronico { get; set; }

        public string Telefono { get; set; }

        public Usuarios(string nombre, string correoElectronico, string telefono)
        {

            Nombre = nombre;
            CorreoElectronico = correoElectronico;
            Telefono = telefono;
        }
        public Usuarios() { }



        public void Agregar() { }

        public void Consular() { }

        public void Modificar() { }

        public void Borrar() { }
    }
}
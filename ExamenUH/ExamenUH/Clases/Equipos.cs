using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenUH.Clases
{
    public class Equipos
    {
        public int EquipoID { get; set; }
        public string TipoEquipo { get; set; }
        public string Modelo { get; set; }
        public int UsuarioID { get; set; }

        public Equipos(string tipoEquipo, string modelo, int usuarioID)
        {

            TipoEquipo = tipoEquipo;
            Modelo = modelo;
            UsuarioID = usuarioID;
        }
        public Equipos() { }


        public void Agregar() { }

        public void Consular() { }

        public void Modificar() { }

        public void Borrar() { }
    }
}
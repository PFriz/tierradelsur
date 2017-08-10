using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPapurri.Private
{
    public partial class Carrusel_nuevafoto : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            NImagen.Click += new EventHandler(this.NuevaImagen);
        }
        private void NuevaImagen(object sender, EventArgs e)
        {
            plus.Text += "<div class='fileinput fileinput-new' data-provides='fileinput'><div class='fileinput-preview thumbnail' data-trigger='fileinput'></div><div><span class='btn btn-default btn-file waves-effect'><span class='fileinput-new'>Seleccionar Imagen</span><span class='fileinput-exists'>Editar</span><input type='file' name='...'/></span><a href='#' class='btn btn-danger fileinput-exists waves-effect' data-dismiss='fileinput'>Remove</a></div></div>";
        }
    }
}
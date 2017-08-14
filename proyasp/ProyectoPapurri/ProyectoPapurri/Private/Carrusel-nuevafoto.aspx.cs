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
            //guardar imagenes
            if ((archivo.PostedFile != null) && (archivo.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(archivo.PostedFile.FileName);
                string SaveLocation = Server.MapPath("carrusel") + "\\" + fn;
                try
                {
                    archivo.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }

        }
    }
}
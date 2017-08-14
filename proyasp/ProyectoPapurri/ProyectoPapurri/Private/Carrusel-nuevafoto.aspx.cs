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
           
            exito.Text = "";
        }
        private void NuevaImagen(object sender, EventArgs e)
        {
            //guardar imagenes
            if ((archivo1.PostedFile != null) && (archivo1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(archivo1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\assets\\img\\Carrusel") + "\\" + fn;
                try
                {
                    archivo1.PostedFile.SaveAs(SaveLocation);
                    //DB guardar en un tabla la ubicacion de las imagenees para cargarlas mas adelante
                    exito.Text += "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>¡Excelente! Su imagen a sido subida exitosamente</div>";
                }
                catch (Exception ex)
                {
                    //Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                }
            }
            else
            {
                exito.Text = "Al menos seleccione un archivo";
            }

            if ((archivo2.PostedFile != null) && (archivo2.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(archivo2.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\assets\\img\\Carrusel") + "\\" + fn;
                try
                {
                    archivo2.PostedFile.SaveAs(SaveLocation);
                    //DB guardar en un tabla la ubicacion de las imagenees para cargarlas mas adelante
                    exito.Text += "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>¡Excelente! Su imagen a sido subida exitosamente</div>";
                }
                catch (Exception ex)
                {
                    //Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                }
            }
            if ((archivo3.PostedFile != null) && (archivo3.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(archivo3.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\assets\\img\\Carrusel") + "\\" + fn;
                try
                {
                    archivo3.PostedFile.SaveAs(SaveLocation);
                    //DB guardar en un tabla la ubicacion de las imagenees para cargarlas mas adelante
                    exito.Text += "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>¡Excelente! Su imagen a sido subida exitosamente</div>";

                }
                catch (Exception ex)
                {
                    //Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                }
            }
            if ((archivo4.PostedFile != null) && (archivo4.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(archivo4.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\assets\\img\\Carrusel") + "\\" + fn;
                try
                {
                    archivo4.PostedFile.SaveAs(SaveLocation);
                    //DB guardar en un tabla la ubicacion de las imagenees para cargarlas mas adelante
                    exito.Text += "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>¡Excelente! Su imagen a sido subida exitosamente</div>";

                }
                catch (Exception ex)
                {
                    //Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                }
            }


        }
    }
}
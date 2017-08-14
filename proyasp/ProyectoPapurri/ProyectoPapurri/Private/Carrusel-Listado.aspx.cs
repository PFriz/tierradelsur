using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPapurri.Private
{
    public partial class Carrusel_Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //cargar las imagenes en el Literal "lista" (que obvio xD)

            //para eliminar se aplicara el cod ?id=xx
            //por lo tanto usaremos equest.QueryString("id") y parece ser que devuelve un string


            string id = Request.QueryString["id"];
            string nombre = Request.QueryString["nombre"];

            if (id!=null && id.Trim().Length > 0)
            {
                if (nombre != null && nombre.Trim().Length > 0)
                {
                    //primero eliminar la imagen del servidor (../assets/img/Carrusel/)
                    //eliminar el registro de la BD
                }
            }
        }
    }
}

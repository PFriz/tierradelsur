using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPapurri.Private
{
    public partial class listarTipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //instacio para llamar las utilidades de dato y cargo la grilla
            DAO.Dato llamar = new DAO.Dato();
            gdTipo.DataSource = llamar.ListarTipo();
            gdTipo.DataBind();

        }
    }
}
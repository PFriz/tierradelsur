﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoPapurri.DAO
{
    public class Dato
    {

        //listar productos
        public List<Producto> ListarProducto()
        {
            var contexto = new herbalEntities();
            return contexto.Productoes.AsNoTracking().ToList();
        }
       



    }
}
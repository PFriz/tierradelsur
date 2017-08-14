<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/Admin.Master" AutoEventWireup="true" CodeBehind="listarProductos.aspx.cs" Inherits="ProyectoPapurri.Private.listarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
        <div class="container">
            <div class="block-header">
                <h2>Listado de productos</h2>
                <ul class="actions">
                            <li>
                                <a href="#">
                                    <i class="zmdi zmdi-trending-up"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="zmdi zmdi-check-all"></i>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>
                                
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="#">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="#">Manage Widgets</a>
                                    </li>
                                    <li>
                                        <a href="#">Widgets Settings</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
            </div>

            <div class="card">
                        <div class="card-header">
                            <h2>Listas de Productos</h2>
                        </div>
                        
                        <div class="table-responsive">
                             <asp:GridView ID="grProducto" CssClass="table table-striped" runat="server" CellPadding="0"></asp:GridView>
                        </div>
                    </div>





        </div>

    </section>
      
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/Admin.Master" AutoEventWireup="true" CodeBehind="listarTipos.aspx.cs" Inherits="ProyectoPapurri.Private.listarTipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
        <div class="container">
            <div class="block-header">
                <h2>Listado de tipos</h2>
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
                <div class="table-responsive">
                    <asp:gridview id="gdTipo" CssClass="table table-striped" BorderStyle="None" runat="server" AllowCustomPaging="True" AllowPaging="True">
                    </asp:gridview>
                </div>

            </div>



        </div>
    </section>
</asp:Content>

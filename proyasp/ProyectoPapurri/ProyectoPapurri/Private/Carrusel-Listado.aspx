<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/Admin.Master" AutoEventWireup="true" CodeBehind="Carrusel-Listado.aspx.cs" Inherits="ProyectoPapurri.Private.Carrusel_Listado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content">
        <div class="container">
            <div class="block-header">

                <asp:Literal ID="plus" runat="server"></asp:Literal>
                <h2>Carrusel</h2>
                
            </div>

            <form runat="server">
            <div class="card">
                
                <div class="card-header">
                    <h2>
                        Edite las fotos de su carrusel
                    </h2>
                </div>
                <div id="MYELEMENT" class="card-body card-padding">
                    <asp:Literal ID="lista" runat="server"></asp:Literal>
                    <div class="row">
                        <div class="col-sm-6 col-md-3">
                            <div class="thumbnail">
                                <img src="img/300x200.gif" alt="">
                                <div class="caption">
                                    <h4>Thumbnail label</h4>
                                    
                                    <div class="m-b-5">
                                        <a href="?id=12&nombre=jugando a las polcas.jpg" class="btn btn-sm btn-danger" role="button">Eliminar</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3">
                            <div class="thumbnail">
                                <img src="img/300x200.gif" alt="">
                                <div class="caption">
                                    <h4>Thumbnail label</h4>
                                    
                                    <div class="m-b-5">
                                        <a href="#" class="btn btn-sm btn-danger" role="button">Eliminar</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3">
                            <div class="thumbnail">
                                <img src="img/300x200.gif" alt="">
                                <div class="caption">
                                    <h4>Thumbnail label</h4>
                                    
                                    <div class="m-b-5">
                                        <a href="#" class="btn btn-sm btn-danger" role="button">Eliminar</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3">
                            <div class="thumbnail">
                                <img src="img/300x200.gif" alt="">
                                <div class="caption">
                                    <h4>Thumbnail label</h4>
                                    
                                    <div class="m-b-5">
                                        <a href="#" class="btn btn-sm btn-danger" role="button">Eliminar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            </form>
        </div>
        

        
    </section>


</asp:Content>

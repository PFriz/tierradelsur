<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/Admin.Master" AutoEventWireup="true" CodeBehind="Carrusel-nuevafoto.aspx.cs" Inherits="ProyectoPapurri.Private.Carrusel_nuevafoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content">
        <div class="container">
            <div class="block-header">

                <asp:Literal ID="plus" runat="server"></asp:Literal>
                <h2>Carrusel</h2>
                
            </div>
            <div class="card">
                
                <div class="card-header">
                    <h2>
                        Agrege foto al carrusel
                    </h2>
                </div>
                <div id="MYELEMENT" class="card-body card-padding">
                   
                    <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview thumbnail" data-trigger="fileinput"></div>
                        <div>
                            <span class="btn btn-default btn-file waves-effect">
                                <span class="fileinput-new">Seleccionar Imagen</span>
                                <span class="fileinput-exists">Editar</span>
                                <input type="file" name="..." id="archivo1" runat="server"/>
                            </span>
                            <a href="#" class="btn btn-danger fileinput-exists waves-effect" data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>
                    <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview thumbnail" data-trigger="fileinput"></div>
                        <div>
                            <span class="btn btn-default btn-file waves-effect">
                                <span class="fileinput-new">Seleccionar Imagen</span>
                                <span class="fileinput-exists">Editar</span>
                                <input type="file" name="..." id="archivo2" runat="server"/>
                            </span>
                            <a href="#" class="btn btn-danger fileinput-exists waves-effect" data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>
                    <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview thumbnail" data-trigger="fileinput"></div>
                        <div>
                            <span class="btn btn-default btn-file waves-effect">
                                <span class="fileinput-new">Seleccionar Imagen</span>
                                <span class="fileinput-exists">Editar</span>
                                <input type="file" name="..." id="archivo3" runat="server"/>
                            </span>
                            <a href="#" class="btn btn-danger fileinput-exists waves-effect" data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>
                    <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview thumbnail" data-trigger="fileinput"></div>
                        <div>
                            <span class="btn btn-default btn-file waves-effect">
                                <span class="fileinput-new">Seleccionar Imagen</span>
                                <span class="fileinput-exists">Editar</span>
                                <input type="file" name="..." id="archivo4" runat="server"/>
                            </span>
                            <a href="#" class="btn btn-danger fileinput-exists waves-effect" data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>
                    

                </div>
                <div class="card-body card-padding hidden">
                    <input type="button" class="btn bgm-gray" onclick="agregarIma();" value="Añadir Otra Imagen" />
                </div>
                <div class="card-body card-padding">
                    <asp:Button ID="NImagen" CssClass="btn bgm-bluegray" runat="server" Text="Subir Imagen"></asp:Button>
                </div>
            </div>
        </div>
        
        

        
    </section>


</asp:Content>

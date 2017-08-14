<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/Admin.Master" AutoEventWireup="true" CodeBehind="Carrusel-nuevafoto.aspx.cs" Inherits="ProyectoPapurri.Private.Carrusel_nuevafoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content">
        <div class="container">
            <div class="block-header">
                <h2>Dashboard</h2>

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
                                <input type="file" name="..." id="archivo" runat="server"/>
                            </span>
                            <a href="#" class="btn btn-danger fileinput-exists waves-effect" data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>
                    
                    <asp:Literal ID="plus" runat="server"></asp:Literal>

                </div>
                <div class="card-body card-padding">
                    <input type="button" class="btn bgm-gray" onclick="agregarIma();" value="Añadir Otra Imagen" />
                </div>
                <div class="card-body card-padding">
                    <asp:Button ID="NImagen" CssClass="btn bgm-bluegray" runat="server" Text="Subir Imagen"></asp:Button>
                </div>
            </div>
        </div>
        
        <script type="text/javascript">
            function agregarIma() {
                var elm = document.createElement('div');
                elm.setAttribute('id', 'rawr');
                elm.setAttribute('class', 'fileinput fileinput-new');
                elm.setAttribute('data-provides', 'fileinput');
                elm.innerHTML = "<div class='fileinput-preview thumbnail' data-trigger='fileinput'></div><div><span class='btn btn-default btn-file waves-effect'><span class='fileinput-new'>Seleccionar Imagen</span><span class='fileinput-exists'>Editar</span><input type='file' name='...'/></span><a href='#' class='btn btn-danger fileinput-exists waves-effect' data-dismiss='fileinput'>Remove</a></div>";
                document.getElementById('MYELEMENT').append(elm);
                
            }

            

        </script>

        
    </section>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Pagina.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="ProyectoPapurri.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">

    <div class="container">

        <div class="row">
			
			<div class="col-md-4" background="blue">
			<p>Para más informacion acerca de nuestros productos puede diriguirse a nuestra sala de ventas ubicada en XXX o bien contactenos mediante el siguiente formulario y recibira respuesta expedita de nuestros vendedores.</p>
				<h2>Contactanos</h2>
				<br>
				<form>
					<div class="form-group">
					    <label>Email*</label>
					    <input type="email" class="form-control" id="email" placeholder="Correo Electronico">
					</div>
					<div class="form-group">
					    <label>Nombre y apellido*</label>
					    <input type="text" class="form-control" id="nombre" placeholder="Nombre Apellido">
					</div>
					<div class="form-group">
					    <label>Telefono de contacto*</label>
					    <input type="text" class="form-control" id="tel" placeholder="+569 1234 5678">
					</div>
					<div class="form-group">
					    <label>Motivo*</label>
					    <select class="form-control" id="motivo" >
					    	<option selected>Seleccione un motivo</option>
					    	<option>Duda</option>
					    	<option>Consulta</option>
					    	<option>Trauma</option>
					    </select>
					</div>

					<div class="form-group">
					    <label>Mensaje*</label>
					    <textarea class="form-control" rows="5" id="mensaje" placeholder="Ingrese su mensaje"></textarea> 
					</div>
				</form>
				<p>
				</p>
			</div>
			<div class="col-md-8" background="green">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1625.5704820815347!2d-71.6673049420072!3d-35.42653790943887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9665c6a014abd285%3A0xf609e13ec33b9b79!2sCalle+1+Pte.+1126%2C+Talca%2C+VII+Regi%C3%B3n!5e0!3m2!1ses!2scl!4v1501814519727" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>

				<p align="right">
				
				Horarios de atencion <br>
				XXX<br>
				Tel de contacto<br>
				+569 xxxxxxxx<br>
				Calle 1 Pte. 1126<br>
				Talca, VII Región,<br>
				Chile
				
				</p>
			</div>

		</div>

    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Pagina.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoPapurri.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="Contenido" runat="server">

    <div class="container">
        <!--//carousell-->
        <div class="carousel slide" data-ride="carousel" id="carousel-1">
                <div class="carousel-inner" role="listbox">
                    <div class="item active"><img src="assets/img/mosqueta.jpg" alt="Slide Image"></div>
                    <div class="item"><img src="assets/img/boldo.png" alt="Slide Image"></div>
                    <div class="item"><img src="assets/img/Cedron.jpg" alt="Slide Image"></div>
                </div>
                <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
                    <a class="right carousel-control" href="#carousel-1" role="button" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-1" data-slide-to="1"></li>
                    <li data-target="#carousel-1" data-slide-to="2"></li>
                </ol>
            </div>

        <!--//detalles de la empresa-->
        <div class="container marketing col-lg-11" >
                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
                    <h2>Mision</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>

                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
                    <h2>Quienes somos</h2>
                    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>

                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
                    <h2>Objetivo</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>

                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            <!-- /.container -->

        <!--//productos mas vendidos-->
		<div class="container marketing col-lg-11" >
                <!-- Three columns of text below the carousel -->
                <h3 class="product-head"> Productos más vendidos</h3>
                <hr>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
						    <div class="product-col">
							    <div class="image">
								    <img src="assets/img/product/pimg1.jpg" alt="product" class="img-responsive" />
							    </div>
							    <div class="caption">
								    <h4><a href="#">Simply Organic Seeds</a></h4>
								    <div class="description">
									    We are so lucky living in such a wonderful time. Our almost unlimited ...
								    </div>
								    <div class="price">
									    <span class="price-new">$199.50</span>
									    <span class="price-old">$249.50</span>
								    </div>
							    </div>
						    </div>
					    </div>

                <div class="col-md-3 col-sm-6">
            <div class="product-col">
                <div class="image">
                <img src="assets/img/product/pimg1.jpg" alt="product" class="img-responsive" />
                </div>
                <div class="caption">
                <h4><a href="#">Simply Organic Seeds</a></h4>
                <div class="description">
                    We are so lucky living in such a wonderful time. Our almost unlimited ...
                </div>
                <div class="price">
                    <span class="price-new">$199.50</span>
                    <span class="price-old">$249.50</span>
                </div>
                </div>
            </div>
            </div>

            <div class="col-md-3 col-sm-6">
        <div class="product-col">
            <div class="image">
            <img src="assets/img/product/pimg1.jpg" alt="product" class="img-responsive" />
            </div>
            <div class="caption">
            <h4><a href="#">Simply Organic Seeds</a></h4>
            <div class="description">
                We are so lucky living in such a wonderful time. Our almost unlimited ...
            </div>
            <div class="price">
                <span class="price-new">$199.50</span>
                <span class="price-old">$249.50</span>
            </div>
            </div>
        </div>
        </div>


        <div class="col-md-3 col-sm-6">
    <div class="product-col">
        <div class="image">
        <img src="assets/img/product/pimg1.jpg" alt="product" class="img-responsive" />
        </div>
        <div class="caption">
        <h4><a href="#">Simply Organic Seeds</a></h4>
        <div class="description">
            We are so lucky living in such a wonderful time. Our almost unlimited ...
        </div>
        <div class="price">
            <span class="price-new">$199.50</span>
            <span class="price-old">$249.50</span>
        </div>
        </div>
    </div>
    </div>

                </div><!-- /.row -->
            </div><!-- /.container -->

    </div>

</asp:Content>

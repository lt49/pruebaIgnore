<%-- 
    Document   : Inicio
    Created on : 23/04/2017, 12:21:48 AM
    Author     : Alexander_BV 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuarioSesion" scope="session" class="java.lang.String"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Ofelia</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="css/skin-blue.min.css">

    </head>
    <body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="inicio.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>BI</b>BL</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>BIBLIOTECA </b> OFELIA</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs"><%= usuarioSesion %></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            <%= usuarioSesion %> - ADMIN
                                            <small>OFELIA VELASQUEZ</small>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Salir</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><%= usuarioSesion %> - Admin</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Conectado</a>
                        </div>
                    </div>

                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MENÚ - PRINCIPAL</li>
                        <li>
                            <a href="inicio.html">
                                <i class="glyphicon glyphicon-home"></i> <span>Página Principal</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="glyphicon glyphicon-edit"></i>
                                <span>Registro</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="Libro.html"><i class="fa fa-circle-o"></i>Libro</a></li>
                            </ul>
                            <ul class="treeview-menu">
                                <li><a href="Alumno.html"><i class="fa fa-circle-o"></i>Alumno</a></li>
                            </ul>
                            <ul class="treeview-menu">
                                <li><a href="ListarPersona"><i class="fa fa-circle-o"></i>Docente</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="Prestamo.html">
                                <i class="glyphicon glyphicon-edit"></i>
                                <span>Prestamo</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        BIBLIOTECA
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html"><i class="glyphicon glyphicon-home"></i> Inicio</a></li>
                        <li class="active">Página Principal</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-fuchsia">
                                <div class="inner">
                                    <h4>Generalidades e informática</h4>

                                    <p>000 - 099</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-android-desktop"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h4>Filosofía y psicología</h4>

                                    <p>100 - 199</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-ios-lightbulb-outline"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-blue">
                                <div class="inner">
                                    <h4>Religión</h4>

                                    <p>200 - 299</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-ios-book-outline"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>


                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-red">
                                <div class="inner">
                                    <h4>Ciencias sociales</h4>

                                    <p>300 - 399</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-person-stalker"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-navy blue">
                                <div class="inner">
                                    <h4>Idiomas - Lenguas</h4>

                                    <p>400 - 499</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-chatboxes"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">
                                <div class="inner">
                                    <h4>Ciencias naturales y matemáticas</h4>

                                    <p>500 - 599</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-pie-graph"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-maroon">
                                <div class="inner">
                                    <h4>Tecnología (Ciencias aplicadas)</h4>

                                    <p>600 - 699</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-android-wifi"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                    <h4>Las artes. Bellas artes y artes decorativas</h4>

                                    <p>700 - 799</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-paintbrush"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-gray">
                                <div class="inner">
                                    <h4>Literatura y retórica</h4>

                                    <p>800 - 899</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-ios-bookmarks"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-purple">
                                <div class="inner">
                                    <h4>Geografía e historia</h4>

                                    <p>900 - 999</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-earth"></i>
                                </div>
                                <a href="#" class="small-box-footer">Ver Libros <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                    </div>
                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">
                        <!-- Left col -->
                        <section class="col-lg-7 connectedSortable">
                            <!--CONTENIDO NUEVO-->
                        </section>

                        <section class="col-lg-5 connectedSortable">
                            <!--CONTENIDO NUEVO-->
                        </section>
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.8
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Control Sidebar -->
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.2.3 -->
        <script src="js/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="js/bootstrap.min.js"></script>
        <!-- AdminLTE App -->
        <script src="js/app.min.js"></script>
    </body>
</html>

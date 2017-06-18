<%-- 
    Document   : Docente
    Created on : 29/05/2017, 06:19:05 PM
    Author     : Alexander_BV
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="ofelia.model.entity.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ListaPersona" scope="request" type="java.util.List<Persona>"/>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Biblioteca | Reg. Docente</title>
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
        <link rel="stylesheet" href="DataTables/media/css/jquery.dataTables.min.css">
        <!-- jQuery -->
        <script type="text/javascript" language="javascript" src="DataTables/media/js/jquery.js"></script>
        <!-- Datatable -->
        <script type="text/javascript" language="javascript" src="DataTables/media/js/jquery.dataTables.js"></script>
        <script>
            $(function () {
                $("#tablaDocentes").DataTable({
                    "language": {
                        "sProcessing": "Procesando...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "No se encontraron resultados",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sInfoPostFix": "",
                        "sSearch": "Buscar:",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        }
                    }
                });
            });
        </script>
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">

                <a href="inicio.html" class="logo">
                    <span class="logo-mini"><b>BI</b>BL</span>
                    <span class="logo-lg"><b>BIBLIOTECA </b> OFELIA</span>
                </a>

                <nav class="navbar navbar-static-top">

                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">USUARIO</span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li class="user-header">
                                        <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        <p>
                                            USUARIO - ADMIN
                                            <small>OFELIA VELASQUEZ</small>
                                        </p>
                                    </li>

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

            <aside class="main-sidebar">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>

                        <div class="pull-left info">
                            <p>Usuario - Admin</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Conectado</a>
                        </div>
                    </div>

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
                                <li><a href="Libro.html"><i class="fa fa-book"></i>Libro</a></li>
                            </ul>

                            <ul class="treeview-menu">
                                <li><a href="Docente.html"><i class="fa fa-suitcase"></i>Docente</a></li>
                            </ul>

                            <ul class="treeview-menu">
                                <li><a href="ListarPersona"><i class="fa fa-mortar-board"></i>Alumno</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="Prestamo.html">
                                <i class="glyphicon glyphicon-book"></i>
                                <span> Préstamo</span>
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="glyphicon glyphicon-edit"></i>
                                <span>Reporte</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>

                            <ul class="treeview-menu">
                                <li><a href="leen_mas.html"><i class="fa fa-circle-o"></i>Leen más</a></li>
                            </ul>

                            <ul class="treeview-menu">
                                <li><a href="alertaPrestamo.html"><i class="fa fa-circle-o"></i>Alerta de préstamo</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </aside>

            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                        MÓDULO REGISTRO
                        <small>Registrar Docente</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="inicio.html"><i class="glyphicon glyphicon-home"></i> Inicio</a></li>
                        <li class="active">Registro</li>
                        <li class="active">Registrar Docente</li>
                    </ol>
                </section>

                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#addDocente">
                                <i class="ion-person-add"></i> Registrar docente</button>
                            <a class="btn btn-primary" href="ListarPersona"><i class="glyphicon glyphicon-refresh"></i> Actualizar</a>
                        </div>

                    </div>

                    <section class="content">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box collapsed-box">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Registro de docentes</h3>
                                        <div class="box-tools pull-right">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="container-fluid">
                                            <div class="col-lg-12">
                                                <div class="table-responsive">
                                                    <table id="tablaDocentes" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th>
                                                        <center>#</center>
                                                        </th>
                                                        <th>
                                                        <center>Nombres</center>
                                                        </th>
                                                        <th>
                                                        <center>Apellidos</center>
                                                        </th>
                                                        <th>
                                                        <center>Género</center>
                                                        </th>
                                                        <th>
                                                        <center>Nacimiento</center>
                                                        </th>
                                                        <th>
                                                        <center>Documento</center>
                                                        </th>
                                                        <th>
                                                        <center>N°Doc</center>
                                                        </th>
                                                        <th>
                                                        <center>Dirección</center>
                                                        </th>


                                                        <th>
                                                        <center>Condición laboral</center>
                                                        </th>
                                                        <th>
                                                        <center>Teléfono</center>
                                                        </th>
                                                        <th>
                                                        <center>Acción</center>
                                                        </th>

                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                int contador1 = 0;
                                                                for (Persona p : ListaPersona) {
                                                                    contador1++;
                                                            %>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1"><%= contador1%></td>
                                                                <td><%= p.getNombres()%></td>
                                                                <td><%=p.getApellidos()%></td>
                                                                <td><%=p.getGenero()%></td>
                                                                <td><%= p.getFecha_nac()%></td>
                                                                <td><%
                                                                    
                                                                    if (p.getIdtipo_doc() == 1) {
                                                                        out.write("DNI");
                                                                    }
                                                                    if (p.getIdtipo_doc() == 2) {
                                                                        out.write("Pasaporte");
                                                                    }
                                                                    

                                                                    %></td>
                                                                <td><%=p.getNro_doc()%></td>
                                                                <td><%= p.getDireccion()%></td>
                                                                <td><%=p.getCondicion()%></td>
                                                                <td><%=p.getTelefono()%></td>

                                                                <td>
                                                        <center>
                                                            <a class="btn btn-warning btn-xs" href="#"><i class="fa fa-pencil" aria-hidden="true"></i> </a>
                                                            <a class="btn btn-danger btn-xs" href="ControlPersona?op=delete_Docente&idpersona=<%=p.getIdpersona()%>" role="button"><i class="fa fa-trash" aria-hidden="true"></i> </a>
                                                        </center>
                                                        </td>

                                                        </tr>  
                                                        <% }%>
                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </section>
                </section>
            </div>

            <div class="modal fade" id="addDocente" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"><i class="ion-person-add"></i> Agregar docente</h4>
                        </div>

                        <div class="modal-body">

                            <!--<div class="alert alert-warning" role="alert" style="opacity: 1.5">
                                <strong style="color: #ffffff;"><i class="icon fa fa-warning"></i>Advertencia: </strong>Asegúrate de llenar todos los campos *
                            </div>-->

                            <form action="ControlPersona" method="post" class="form-horizontal">

                                <input type="hidden" name="op" value="add_Docente">
                                <div class="row">
                                    <div class="col-lg-12">

                                        <div class="form-group col-md-12">

                                            <div class="form-group">
                                                <label for="nombreDocente" class="col-sm-2 control-label">*Nombres:</label>
                                                <div class="col-sm-4">
                                                    <input name="nombres" type="text" autocomplete="off" class="form-control" placeholder="Nombre del docente" title="Nombre del docente">
                                                </div>

                                                <label for="apellidoDocente" class="col-sm-2 control-label">*Apellidos: </label>
                                                <div class="col-sm-4">
                                                    <input name="apellidos" type="text" autocomplete="off" class="form-control" placeholder="Apellidos del docente" title="Apellidos del docente">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="generoDocente" class="col-sm-2 control-label ">*Género: </label>
                                                <div class="col-sm-4 ">
                                                    <select name="genero" class="form-control" title="Género del docente">
                                                        <option>-- Seleccione uno--</option>
                                                        <option value="M">Masculino</option>
                                                        <option value="F">Femenino</option>
                                                    </select>
                                                </div>

                                                <label for="fecha_nacDocente" class="col-sm-2 control-label">*Fecha de nacimiento: </label>
                                                <div class="col-sm-4">
                                                    <input name="fecha_nac" type="date" class="form-control" placeholder="Fecha de nacimiento" title="Fecha de nacimiento">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="tipodocumento" class="col-sm-2 control-label">*Tipo de doc:</label>
                                                <div class="col-sm-2">
                                                    <select name="idtipo_doc" class="form-control" title="Tipo de documento">
                                                        <option value="1">DNI</option>
                                                        <option value="2">Pasaporte</option>
                                                    </select>
                                                </div>

                                                <label for="númeroDocumento" class="col-sm-2 col-sm-offset-2 control-label">*Número Doc:</label>
                                                <div class="col-sm-4">
                                                    <input name="nro_doc" type="text" autocomplete="off" class="form-control" placeholder="Número de documento" title="Número de documento">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="direccionDocente" class="col-sm-2 control-label">*Dirección:</label>
                                                <div class="col-sm-4">
                                                    <input name="direccion" type="text" autocomplete="off" class="form-control" placeholder="Dirección del docente" title="Dirección del docente">
                                                </div>

                                                <label for="turnoDocente" class="col-sm-2 control-label">*Condición: </label>
                                                <div class="col-sm-4">
                                                    <select name="condicion" class="form-control" title="Turno de enseñanza">
                                                        <option>-- Seleccione uno --</option>
                                                        <option>Cotratado</option>
                                                        <option>Nombraado</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="telefonoDocente" class="col-sm-2 control-label">*Teléfono:</label>
                                                <div class="col-sm-4">
                                                    <input name="telefono" type="text" autocomplete="off" class="form-control" placeholder="Número de teléfono">
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary"><i class="fa fa-floppy-o" aria-hidden="true"></i> Registrar</button>
                                                <a class="btn btn-default" data-dismiss="modal"><i class="fa fa-close" aria-hidden="true"></i> Cerrar</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.8
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
            </footer>

            <!-- Bootstrap 3.3.6 -->
            <script src="js/bootstrap.min.js"></script>
            <!-- AdminLTE App -->
            <script src="js/app.min.js"></script>
        </div>

    </body>

</html>

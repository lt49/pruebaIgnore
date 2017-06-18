<%@page import="ofelia.model.entity.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ofelia.model.dao.impl.PersonaDaoImpl"%>
<%@page import="ofelia.model.dao.PersonaDAO"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Biblioteca | Reg. Alumno</title>
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
                $("#tablaAlumnos").DataTable({
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
                $("#tablaBibliotecarios").DataTable({
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

            function secundaria() {
                alert('hola¡¡');

            }

        </script>
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
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
                                    <span class="hidden-xs">USUARIO</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            USUARIO - ADMIN
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
                            <p>Usuario - Admin</p>
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
                                <li><a href="Libro.html"><i class="fa fa-book"></i>Libro</a></li>
                            </ul>
                            <ul class="treeview-menu">
                                <li><a href="Docente.html"><i class="fa fa-suitcase"></i>Docente</a></li>
                            </ul>
                            <ul class="treeview-menu">
                                <li><a href="alumno.jsp"><i class="fa fa-mortar-board"></i>Alumno</a></li>
                            </ul>
                            <a href="Prestamo.html"><i class="glyphicon glyphicon-book"></i>
                                <span>Prestamo</span>

                            </a>
                        </li>
                        <li>
                            <a href="rep_libro.html"><i class="glyphicon glyphicon-stats"></i>
                                <span>Reporte</span>
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
                        MÓDULO REGISTRO
                        <small>Registrar Alumno</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="inicio.html"><i class="glyphicon glyphicon-home"></i> Inicio</a></li>
                        <li class="active">Registro</li>
                        <li class="active">Registrar alumno</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#addAlumno"><i class="ion-person-add"></i> Registrar alumno</button>

                            <br><br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box collapsed-box">
                                <div class="box-header with-border">
                                    <h3 class="box-title"> Registro de alumnos</h3>

                                </div>
                                <div class="">
                                    <div class="row">
                                        <div class="container-fluid">
                                            <div class="col-lg-12">
                                                <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                                    <div class="table-responsive">
                                                        <table id="tablaAlumnos" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th>#</th>
                                                                    <th>Nombres</th>
                                                                    <th>Apellidos</th>
                                                                    <th>Género</th>
                                                                    <th>Fecha de nacimiento</th>
                                                                    <th>Dni</th>
                                                                    <th>Nivel</th>
                                                                    <th>Grado</th>
                                                                    <th>Sección</th>
                                                                    <th>Dirección</th>
                                                                    <th>Turno</th>
                                                                    <th>Acción</th>
                                                                </tr>
                                                            </thead>

                                                            <tbody>
                                                                <%
                                                                    PersonaDAO pdao = new PersonaDaoImpl();
                                                                    List<Persona> p = pdao.listarPersona();
                                                                    for (Persona per : p) {
                                                                %>

                                                                <tr role="row" class="odd">
                                                                    <td class="sorting_1">1</td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getApellidos()%></td>
                                                                    <td><%=per.getCondicion()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td><%=per.getNombres()%></td>
                                                                    <td>
                                                            <center>
                                                                <a class="btn btn-info btn-xs" href="#"><i class="fa fa-pencil" aria-hidden="true"></i> </a>
                                                                <a class="btn btn-danger btn-xs" href="#" role="button"><i class="fa fa-trash" aria-hidden="true"></i> </a>
                                                            </center>
                                                            </td>
                                                            </tr>
                                                            <%
                                                                }
                                                            %>
                                                            </tbody>

                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>


                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.8
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
            </footer>
            <!--MODAL DE AGREGAR ALUMNO-->
            <div class="modal fade" id="addAlumno" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">

                        <!--CABECERA DEL MODAL AGREGAR ALUMNO-->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Agregar Alumno</h4>
                        </div>
                        <!--FIN de la CABECERA DEL MODAL AGREGAR ALUMNO-->

                        <!--CUERPO DEL MODAL AGREGAR ALUMNO-->
                        <div class="modal-body">

                            <!--ALERTA DEL MODAL AGREGAR ALUMNO-->
                            <div class="alert alert-warning" role="alert" style="opacity: 1.5">
                                <strong style="color: #ffffff;"><i class="icon fa fa-warning"></i>Advertencia: </strong>Asegúrate de llenar todos los campos *
                            </div>
                            <!--FIN de ALERTA DEL MODAL AGREGAR ALUMNO-->

                            <!--FORMULARIO DEL MODAL AGREGAR ALUMNO-->
                            <form action="ControlPersona" method="post" class="form-horizontal">


                                <input type="hidden" name="op" value="add">
                                <!--GRUPO 1-->
                                <div class="form-group">

                                    <label for="nombreAlumno" class="col-sm-2 control-label">* Nombre:</label>
                                    <div class="col-sm-4">
                                        <input name="nombreAlumno" type="text" autocomplete="off" class="form-control" placeholder="Nombre del alumno" title="Nombre del alumno">
                                    </div>
                                    <label for="apellidoAlumno" class="col-sm-2 control-label">* Apellido: </label>
                                    <div class="col-sm-4">
                                        <input name="apellidoAlumno" type="text" autocomplete="off" class="form-control" placeholder="Apellido de alumno" title="Apellido del alumno">
                                    </div>

                                </div>
                                <!--FIN del GRUPO 1-->
                                <!--GRUPO 1-->
                                <div class="form-group">

                                    <label for="generoAlumno" class="col-sm-2 control-label">* Género: </label>
                                    <div class="col-sm-4">
                                        <select name="generoAlumno" class="form-control" title="Género del Alumno">
                                            <option value="1">Masculino</option>
                                            <option value="2">Femenino</option>
                                        </select>
                                    </div>
                                    <label for="fechaNacimiento" class="col-sm-2 control-label">* Fecha de nacimiento: </label>
                                    <div class="col-sm-4">
                                        <input name="fechaNacimiento" type="date" autocomplete="off" class="form-control" placeholder="" title="Fecha de nacimiento">
                                    </div>

                                </div>
                                <!--FIN del GRUPO 1-->
                                <!--GRUPO 1-->
                                <div class="form-group">

                                    <label for="dniAlumno" class="col-sm-2 control-label">* Dni:</label>
                                    <div class="col-sm-4">
                                        <input name="dniAlumno" type="text" autocomplete="off" class="form-control" placeholder="DNI del alumno" title="DNI del Alumno">
                                    </div>

                                    <label for="nivelAlumno" class="col-sm-2 control-label">* Nivel: </label>
                                    <div class="col-sm-4">
                                        <select name="nivelAlumno" class="form-control" onchange="if (this.options[1].selected)
                                                    secundaria()" title="Nivel de estudios">
                                            <option value="1">Secundaria</option>
                                        </select>
                                    </div>
                                </div>
                                <!--FIN del GRUPO 1-->
                                <div class="form-group">
                                    <div>

                                        <label for="gradoAlumno" class="col-sm-2 control-label">* Grado: </label>
                                        <div class="col-sm-4">
                                            <select name="gradoAlumno" class="form-control" title="Grado del Alumno">
                                                <option value="1">1°</option>
                                                <option value="2">2°</option>
                                                <option value="3">3°</option>
                                                <option value="4">4°</option>
                                                <option value="5">5°</option>
                                            </select>
                                        </div>

                                    </div>

                                    <label for="seccionAlumno" class="col-sm-2 control-label">* Sección: </label>
                                    <div class="col-sm-4">
                                        <select name="seccionAlumno" class="form-control" title="Sección del alumno">
                                            <option value="1">A</option>
                                            <option value="2">B</option>
                                            <option value="3">C</option>
                                            <option value="4">D</option>
                                            <option value="5">E</option>
                                            <option value="6">F</option>
                                        </select>
                                    </div>
                                </div>
                                <!--GRUPO 1-->
                                <div class="form-group">

                                    <label for="direccionAlumno" class="col-sm-2 control-label">* Dirección:</label>
                                    <div class="col-sm-4">
                                        <input name="direccionAlumno" type="text" autocomplete="off" class="form-control" placeholder="Direccion del alumno" title="Dirección del alumno">
                                    </div>
                                    <label for="turnoAlumno" class="col-sm-2 control-label">* Turno: </label>
                                    <div class="col-sm-4">
                                        <select name="turnoAlumno" class="form-control" title="Turno de estudios">
                                            <option value="1">Mañana</option>
                                            <option value="2">Tarde</option>
                                        </select>
                                    </div>
                                </div>
                                <!--FIN del GRUPO 1-->

                                <!--FOOTER O PIE DE PAGINA DEL MODAL AGREGAR ALUMNO-->
                                <div class="modal-footer">

                                    <button type="submit" class="btn btn-success"><i class="fa fa-floppy-o" aria-hidden="true"></i> Registrar</button>
                                    <a class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close" aria-hidden="true"></i> Cerrar</a>


                                </div>
                                <!--FIN del FOOTER O PIE DE PAGINA DEL MODAL AGREGAR ALUMNO-->
                            </form>
                            <!--FIN del FORMULARIO DEL MODAL AGREGAR ALUMNO-->

                        </div>
                        <!--FIN del CUERPO DEL MODAL AGREGAR ALUMNO-->

                    </div>
                </div>
            </div>
            <!--FIN del MODAL DE AGREGAR ALUMNO-->

            <!-- Bootstrap 3.3.6 -->
            <script src="js/bootstrap.min.js"></script>
            <!-- AdminLTE App -->
            <script src="js/app.min.js"></script>
        </div>
        <!-- ./wrapper -->


    </body>

</html>

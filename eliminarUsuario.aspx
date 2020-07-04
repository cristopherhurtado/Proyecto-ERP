<%@ Page Language="VB" AutoEventWireup="false" CodeFile="eliminarUsuario.aspx.vb" Inherits="eliminarUsuario" %>

<!DOCTYPE html>

<html  class="bg-gray" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi RRHH</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<link href="css/AdminLTE.css"  rel="stylesheet" type="text/css" />

</head>
<body  class="bg-gray">
    <nav class="navbar navbar-dark bg-black-gradient">
                <img src="./img/LOGO DS 3.PNG" width="200"/>
                    <ul class="nav justify-content-center">
                      <li class="nav-item">
                        <!--<a class="nav-link active" href="#">Inicio</a>-->
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="registro.aspx">Registro</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="ver.aspx">Ver</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="usuario.aspx">Usuario</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-aqua" href="login.aspx">Cerrar Secion</a>
                      </li>
                    </ul>
            </nav><br>
    <form id="form5" runat="server">
        <div class="container">
            <h3 class="text-success" style="text-align:center">Eliminar Usuario</h3><br>
               <div class="form-row">
                   <div class="form-group col-md-6">
                  <label for="inputEliminarUsu">Usuario a Eliminar</label>
                  <select id="inputEliminarUsu" class="form-control">
                    <option selected>Seleccione...</option>
                    <option>Usuario 1</option>
                    <option>Usuario 2</option>
                  </select>
                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                <a class="nav-link" href="usuario.aspx">Volver</a>
                 <asp:Button ID="Button1" type="submit" class="btn btn-danger" runat="server" Text="Eliminar" />
                </div>
           </div>
    </form>
</body>
</html>

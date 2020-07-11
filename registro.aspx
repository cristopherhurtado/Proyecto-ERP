﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registro.aspx.cs" Inherits="Registro" %>

<!DOCTYPE html>

<html class="bg-gray" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi RRHH</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<link href="css/AdminLTE.css"  rel="stylesheet" type="text/css" />
</head>
<body class="bg-gray">
     <nav class="navbar navbar-dark bg-black-gradient">
                <img src="./img/LOGO DS 3.PNG" width="200"/>
                    <ul class="nav justify-content-center">
                      <li class="nav-item">
                        <a class="nav-link" href="registro.aspx">Personal</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="usuario2.aspx">Usuario</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-aqua" href="login.aspx">Cerrar Secion</a>
                      </li>
                    </ul>
            </nav><br>
        
     <form id="form2" runat="server">
        <div class="container">
            <h3 class="text-success" style="text-align:center">Registro de Personal</h3>
               <div class="form-row">
                <div class="form-group col-md-3">
                    <asp:Label ID="lbRut" runat="server" Text="Rut"></asp:Label>
                    <asp:TextBox type="text" ID="txt_rut" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox type="text" ID="txt_nombre" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                   <div class="form-group col-md-3">
                    <asp:Label ID="lbApellido1" runat="server" Text="Apellido 1"></asp:Label>
                    <asp:TextBox type="text" ID="txt_apellido1" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-3">
                    <asp:Label ID="lbApellido2" runat="server" Text="Apellido 2"></asp:Label>
                    <asp:TextBox type="text" ID="txt_apellido2" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
 
                   <div class="form-group col-md-3">
                    <asp:Label ID="lbFechaNacimiento" runat="server" Text="Fecha Nacimiento"></asp:Label>
                    <asp:TextBox type="date" ID="txt_fechaNacimiento" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                 <div class="form-group col-md-3">
                    <asp:Label ID="lbEstadoCivil" runat="server" Text="Estado Civil"></asp:Label>
                    <asp:TextBox type="text" ID="txt_estadoCivil" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-3">
                    <asp:Label ID="lbNacionalidad" runat="server" Text="Nacionalidad"></asp:Label>
                    <asp:TextBox type="text" ID="txt_nacionalidad" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lbCalle" runat="server" Text="Calle / Avenida"></asp:Label>
                    <asp:TextBox type="text" ID="txt_calle" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                   <div class="form-group col-md-2">
                    <asp:Label ID="lbNumero" runat="server" Text="Casa / Depto"></asp:Label>
                    <asp:TextBox type="text" ID="txt_numero" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                 <div class="form-group col-md-3">
                    <asp:Label ID="lbComuna" runat="server" Text="Comuna"></asp:Label>
                    <asp:TextBox type="text" ID="txt_comuna" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-3">
                    <asp:Label ID="lbCiudad" runat="server" Text="Ciudad"></asp:Label>
                    <asp:TextBox type="text" ID="txt_ciudad" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                 <div class="form-group col-md-2">
                  <asp:Label ID="lbFonIsa" runat="server" Text="Fonasa / Isapre"></asp:Label>
                  <asp:TextBox type="text" ID="txt_fonasaIsapre" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-3">
                    <asp:Label ID="lbAfp" runat="server" Text="AFP"></asp:Label>
                    <asp:TextBox type="text" ID="txt_afp" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                   <div class="form-group col-md-2">
                    <asp:Label ID="lbTelefono" runat="server" Text="Telefono"></asp:Label>
                    <asp:TextBox type="text" ID="txt_telefono" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-5">
                    <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox type="email" ID="txt_email" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                  <hr width="100%"/><br><br>
               <div class="form-group col-md-2">
                   <asp:Label ID="lbSueldoBase" runat="server" Text="Sueldo Base"></asp:Label>
                   <asp:TextBox type="text" ID="txt_sueldoBase" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                   <div class="form-group col-md-2">
                    <asp:Label ID="lbBMovilizacion" runat="server" Text="Bono Movilizacion"></asp:Label>
                    <asp:TextBox type="text" ID="txt_movilizacion" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                 <div class="form-group col-md-2">
                    <asp:Label ID="lbBColacion" runat="server" Text="Bono Colacion"></asp:Label>
                    <asp:TextBox type="text" ID="txt_colacion" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbBAsistencia" runat="server" Text="Bono Asistencia"></asp:Label>
                    <asp:TextBox type="text" ID="txt_asistencia" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbBono1" runat="server" Text="Bono"></asp:Label>
                    <asp:TextBox type="text" ID="txt_bono" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbTipoContrato" runat="server" Text="Tipo de Contrato"></asp:Label>
                    <asp:TextBox type="text" ID="txt_tipoContrato" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbFechaIng" runat="server" Text="Fecha de Ingreso"></asp:Label>
                    <asp:TextBox type="date" ID="txt_fechaIng" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                     <asp:Label ID="lbCargo" runat="server" Text="Cargo"></asp:Label>
                     <asp:TextBox type="text" ID="txt_cargo" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbArea" runat="server" Text="Area"></asp:Label>
                    <asp:TextBox type="text" ID="txt_area" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                 <div class="form-group col-md-2">
                    <asp:Label ID="lbCajaCom" runat="server" Text="Caja Compensacion"></asp:Label>
                    <asp:TextBox type="text" ID="txt_cajaCom" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <asp:Label ID="lbMutualidad" runat="server" Text="Mutualidad"></asp:Label>
                    <asp:TextBox type="text" ID="txt_mutualidad" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </div>
                </div>
              <div class="form-group">
                  <asp:Button ID="btn_buscar" type="submit" class="btn btn-secondary" runat="server" Text="Buscar"/>
                  <asp:Button ID="btn_guardar" type="submit" class="btn btn-primary" runat="server" Text="Guardar"/>
                  <asp:Button ID="btn_actualizar" type="submit" class="btn btn-success" runat="server" Text="Actualizar"/>
                  <asp:Button ID="btn_eliminar" type="submit" class="btn btn-danger" runat="server" Text="Eliminar"/>
          </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usuario2.aspx.cs" Inherits="usuario2" %>

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
                      <li class="nav-item"></li>
                      <li class="nav-item">
                        <a class="nav-link" href="registro.aspx">Personal</a>
                      </li>
                      <li class="nav-item">
                        <!--<a class="nav-link" href="verRegistro.aspx">Ver</a>-->
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="usuario2.aspx">Usuario</a>
                      </li>
                        <li class="nav-item">
                            <a class="nav-link text-aqua" href="login.aspx">Cerrar Secion</a>
                        </li>
                    </ul>
            </nav><br>
    <form id="form9" runat="server">
          <h3 class="text-success" style="text-align:center">Usuario</h3><br><br><br>
 <div class="container">
    <div class= "row">
     <div class="container col-6">
         <table class="table table-hover">
                <tr>
                  <th>Codigo:</th>
                    <td><asp:TextBox ID="txt_codigo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <th>Nombre:</th>
                    <td><asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                  <th>Perfil:</th>
                    <td><asp:DropDownList ID="cbo_perfil" runat="server" Height="30px" Width="183px" DataSourceID="SqlDataSource3" DataTextField="nom_perfil" DataValueField="cod_perfil" OnSelectedIndexChanged="cbo_perfil_SelectedIndexChanged" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MI_RRHHConnectionString %>" SelectCommand="SELECT * FROM [perfiles]"></asp:SqlDataSource>
                    </td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MI_RRHHConnectionString %>" SelectCommand="SELECT [nom_perfil] FROM [perfiles]"></asp:SqlDataSource>
                </tr>
                <tr>   
                    <th>Password:</th>
                    <td><asp:TextBox ID="txt_password" runat="server"></asp:TextBox></td>
                </tr>
              </table>                     
           
             <div class="form-group">
                 <asp:Button ID="btn_buscar"  type="submit" cssClass="btn btn-secondary" runat="server" Text="Buscar" OnClick="btn_buscar_Click"/>
                 <asp:Button ID="btn_guardar"  type="submit" cssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btn_guardar_Click"/>
                 <asp:Button ID="btn_editar"  type="submit" cssClass="btn btn-success" runat="server" Text="Actualizar" OnClick="btn_editar_Click"/>
                 <asp:Button ID="btn_eliminar"  type="submit" cssClass="btn btn-danger" runat="server" Text="Eliminar" OnClick="btn_eliminar_Click"/>               
                 <asp:Label ID="mensaje" runat="server" class="text-danger" Text="*"></asp:Label>
             </div>
        
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>    
      
          
          <br />
        <div class="container col-6">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
              <Columns>
                  <asp:BoundField DataField="codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo" />
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                  <asp:BoundField DataField="perfil" HeaderText="Perfil" SortExpression="perfil" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MI_RRHHConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [usuario] ([codigo], [nombre], [password], [perfil]) VALUES (@codigo, @nombre, @password, @perfil)" SelectCommand="SELECT [codigo], [nombre], [password], [perfil] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [nombre] = @nombre, [password] = @password, [perfil] = @perfil WHERE [codigo] = @codigo">
              <DeleteParameters>
                  <asp:Parameter Name="codigo" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="codigo" Type="String" />
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="perfil" Type="Int32" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="perfil" Type="Int32" />
                  <asp:Parameter Name="codigo" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <br />
    </div>
  </div>
</div>
   </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html class="bg-dark" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi RRHH</title>
    
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<link href="css/AdminLTE.css"  rel="stylesheet" type="text/css" />

</head>
	<body class="bg-dark">
		<form id="form1" runat="server">
			<div class="container-fluid"> <br><br>		
 				<div class="row">
					 <div class="col-sm-1"></div>
    				<div class="col-sm-5"><img src="./img/connections.png" width="450" height="450" class="Avatar" ></div>
    					<div class="col-sm-6">
    						 <br> <br>
								<div class="float-center"> <img src="./img/LOGO DS 3.PNG" width="475"/></div><br>
									<div class="container-fluid">
										<div class="row">
											<div class="col-sm-9"> 
												<h3 class="text-light" style="text-align:center">Iniciar Sesión</h3>
											</div>
											<div class="col-3"></div>
										</div>
											<div class="form-group">
												<label class="text-light" for="">Login</label><br>
													<asp:TextBox ID="textLogin" runat="server" CssClass="form-control" Width="450px"></asp:TextBox>
											</div>
											<div class="form-group">
												<label class="text-light" for="">Password</label><br>
													<asp:TextBox ID="textPassword" runat="server" CssClass="form-control" Width="450px"></asp:TextBox>
											</div><br>
											<div class="form-group">
												<asp:Button ID="btnIngresar" runat="server" Text="INGRESAR" CssClass="btn float-center btn-success" Width="450px" OnClick="btnIngresar_Click1"/>
											</div>
										</div>
 						</div>
				</div> 
			<br><br><br><br>
				<footer class="page-footer font-small green"><a href="#" class="btn btn-info btn-sm">Soporte</a>
     				<div class="footer-copyright text-center py-3">© 2020 Copyright:
						<a href="#">Decimal Service</a><footer>Desarrollado por: <a href="#">Cristopher Hurtado  | Programacion.net |</a></footer>
					</div>
				</footer>
		</div>
	</form>
			<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	</body>
</html>
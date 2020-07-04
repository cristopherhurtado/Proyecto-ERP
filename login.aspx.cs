using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
        string loginGuardado1 = "dsalinas@decimalservice.cl";
        string passwordGuardado1 = "1234";
        string loginGuardado2 = "churtado@decimalservice.cl";
        string passwordGuardado2 = "5678";

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnIngresar_Click1(object sender, EventArgs e)
    {
        string login = textLogin.Text;
        string password = textPassword.Text;



        if (login.Equals(loginGuardado1) && password.Equals(passwordGuardado1))
        {
            Response.Redirect("registro.aspx");
        }
        else if (login.Equals(loginGuardado2) && password.Equals(passwordGuardado2))
        {
            Response.Redirect("registro.aspx");
        }
        else
        {
            Response.Write("<script>alert('Datos incorrectos')</script>");
        }
    }
}
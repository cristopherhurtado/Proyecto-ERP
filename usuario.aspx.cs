using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEliminarUsu_Click(object sender, EventArgs e)
    {
             
            Response.Redirect("eliminarUsuario.aspx");
        
    }

    protected void btnEditarUsu_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Button Desactivado')</script>");
    }

    protected void btnNuevoUsu_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Button Desactivado')</script>");
    }
}
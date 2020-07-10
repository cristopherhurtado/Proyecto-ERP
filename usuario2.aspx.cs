using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Mi_RRHH;




    public partial class usuario2 : System.Web.UI.Page
    {
        ClaseConexionBD con = new ClaseConexionBD();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void limpiar()
        {
            txt_codigo.Text = "";
            txt_nombre.Text = "";
            txt_password.Text = "";
            txt_codigo.Enabled = true;
            //txt_nombre.Enabled = false;
            cbo_perfil.SelectedIndex = -1;
        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            if (txt_codigo.Enabled)
            {
                int per;
                per = int.Parse(cbo_perfil.SelectedValue.ToString());
                con.insertar(txt_codigo.Text, txt_nombre.Text, txt_password.Text, per);
                GridView1.DataBind();
                mensaje.Text = "registro ok";
                limpiar();
            }
            else
            {
                int per;
                per = int.Parse(cbo_perfil.SelectedValue.ToString());
                con.modificar(txt_codigo.Text, txt_nombre.Text, txt_password.Text, per);
                GridView1.DataBind();
                mensaje.Text = "registro Actualizado";
                limpiar();
            }

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            DataSet dset;
            dset = con.Buscar_Codigo(txt_codigo.Text);
            if (dset.Tables[0].Rows.Count > 0)
            {
                txt_codigo.Text = dset.Tables[0].Rows[0][0].ToString();
                txt_nombre.Text = dset.Tables[0].Rows[0][1].ToString();
                txt_password.Text = dset.Tables[0].Rows[0][2].ToString();
                cbo_perfil.Text = dset.Tables[0].Rows[0][3].ToString();
                txt_codigo.Enabled = false;
                //txt_nombre.Enabled = false;
                mensaje.Text = "registro encontrado";
            }
            else
            {
                mensaje.Text = "registro no encontrado";
            }
        }

        protected void btn_editar_Click(object sender, EventArgs e)
        {
            int per;
            per = int.Parse(cbo_perfil.SelectedValue.ToString());
            con.modificar(txt_codigo.Text, txt_nombre.Text, txt_password.Text, per);
            GridView1.DataBind();
            mensaje.Text = "registro Actualizado";
            limpiar();
        }

        protected void cbo_perfil_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            con.eliminar(txt_codigo.Text);
            mensaje.Text = "Eliminado ok";
            GridView1.DataBind();
            limpiar();
        }


    }


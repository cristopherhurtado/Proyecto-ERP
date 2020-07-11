using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using registro;

public partial class Registro : System.Web.UI.Page
{
    ClaseConexionRegistroBD con = new ClaseConexionRegistroBD();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void limpiar()
    {
        txt_rut.Text = "";
        txt_nombre.Text = "";
        txt_apellido1.Text = "";
        txt_apellido2.Text = "";
        txt_fechaNacimiento.Text = "";
        txt_estadoCivil.Text = "";
        txt_nacionalidad.Text = "";
        txt_calle.Text = "";
        txt_casa.Text = "";
        txt_comuna.Text = "";
        txt_ciudad.Text = "";
        txt_afp.Text = "";
        txt_telefono.Text = "";
        txt_email.Text = "";
        txt_sueldoBase.Text = "";
        txt_movilizacion.Text = "";
        txt_colacion.Text = "";
        txt_asistencia.Text = "";
        txt_bono.Text = "";
        txt_tipoContrato.Text = "";
        txt_fechaIng.Text = "";
        txt_cargo.Text = "";
        txt_area.Text = "";
        txt_cajaCom.Text = "";
        txt_mutualidad.Text = "";
        cbo_salud.SelectedIndex = -1;
    }

    protected void btn_buscar_Click(object sender, EventArgs e)
    {
        DataSet dset;
        dset = con.Buscar_Rut(txt_rut.Text);
        if (dset.Tables[0].Rows.Count > 0)
        {
            txt_rut.Text = dset.Tables[0].Rows[0][0].ToString();
            txt_nombre.Text = dset.Tables[0].Rows[0][1].ToString();
            txt_apellido1.Text = dset.Tables[0].Rows[0][2].ToString();
            txt_apellido2.Text = dset.Tables[0].Rows[0][3].ToString();
            txt_fechaNacimiento.Text = dset.Tables[0].Rows[0][4].ToString();
            txt_estadoCivil.Text = dset.Tables[0].Rows[0][5].ToString();
            txt_nacionalidad.Text = dset.Tables[0].Rows[0][6].ToString();
            txt_calle.Text = dset.Tables[0].Rows[0][7].ToString();
            txt_casa.Text = dset.Tables[0].Rows[0][8].ToString();
            txt_comuna.Text = dset.Tables[0].Rows[0][9].ToString();
            txt_ciudad.Text = dset.Tables[0].Rows[0][10].ToString();
            txt_afp.Text = dset.Tables[0].Rows[0][11].ToString();
            txt_telefono.Text = dset.Tables[0].Rows[0][12].ToString();
            txt_email.Text = dset.Tables[0].Rows[0][13].ToString();
            txt_sueldoBase.Text = dset.Tables[0].Rows[0][14].ToString();
            txt_movilizacion.Text = dset.Tables[0].Rows[0][15].ToString();
            txt_colacion.Text = dset.Tables[0].Rows[0][16].ToString();
            txt_asistencia.Text = dset.Tables[0].Rows[0][17].ToString();
            txt_bono.Text = dset.Tables[0].Rows[0][18].ToString();
            txt_tipoContrato.Text = dset.Tables[0].Rows[0][19].ToString();
            txt_fechaIng.Text = dset.Tables[0].Rows[0][20].ToString();
            txt_cargo.Text = dset.Tables[0].Rows[0][21].ToString();
            txt_area.Text = dset.Tables[0].Rows[0][22].ToString();
            txt_cajaCom.Text = dset.Tables[0].Rows[0][23].ToString();
            txt_mutualidad.Text = dset.Tables[0].Rows[0][24].ToString();
            cbo_salud.Text = dset.Tables[0].Rows[0][25].ToString();
            mensaje.Text = "registro encontrado";
        }
        else
        {
            mensaje.Text = "registro no encontrado";
        }
    }

    protected void btn_actualizar_Click(object sender, EventArgs e)
    {
        int reg;
        reg = int.Parse(cbo_salud.SelectedValue.ToString());
        con.update(txt_rut.Text, txt_nombre.Text, txt_apellido1.Text, txt_apellido2.Text, txt_fechaNacimiento.Text, txt_estadoCivil.Text, txt_nacionalidad.Text, txt_calle.Text, txt_casa.Text, txt_comuna.Text, txt_ciudad.Text, txt_afp.Text, txt_telefono.Text, txt_email.Text, txt_sueldoBase.Text, txt_movilizacion.Text, txt_colacion.Text, txt_asistencia.Text, txt_bono.Text, txt_tipoContrato.Text, txt_fechaIng.Text, txt_cargo.Text, txt_area.Text, txt_cajaCom.Text, txt_mutualidad.Text, reg);
        GridView1.DataBind();
        mensaje.Text = "registro Actualizado";
        limpiar();
    }

    protected void btn_guardar_Click(object sender, EventArgs e)
    {
        if (txt_rut.Enabled)
        {
            int reg;
            reg = int.Parse(cbo_salud.SelectedValue.ToString());
            con.insert(txt_rut.Text, txt_nombre.Text, txt_apellido1.Text, txt_apellido2.Text, txt_fechaNacimiento.Text, txt_estadoCivil.Text, txt_nacionalidad.Text, txt_calle.Text, txt_casa.Text, txt_comuna.Text, txt_ciudad.Text, txt_afp.Text, txt_telefono.Text, txt_email.Text, txt_sueldoBase.Text, txt_movilizacion.Text, txt_colacion.Text, txt_asistencia.Text, txt_bono.Text, txt_tipoContrato.Text, txt_fechaIng.Text, txt_cargo.Text, txt_area.Text, txt_cajaCom.Text, txt_mutualidad.Text, reg);
            GridView1.DataBind();
            mensaje.Text = "registro ok";
            limpiar();
        }
        else
        {
            int reg;
            reg = int.Parse(cbo_salud.SelectedValue.ToString());
            con.update(txt_rut.Text, txt_nombre.Text, txt_apellido1.Text, txt_apellido2.Text, txt_fechaNacimiento.Text, txt_estadoCivil.Text, txt_nacionalidad.Text, txt_calle.Text, txt_casa.Text, txt_comuna.Text, txt_ciudad.Text, txt_afp.Text, txt_telefono.Text, txt_email.Text, txt_sueldoBase.Text, txt_movilizacion.Text, txt_colacion.Text, txt_asistencia.Text, txt_bono.Text, txt_tipoContrato.Text, txt_fechaIng.Text, txt_cargo.Text, txt_area.Text, txt_cajaCom.Text, txt_mutualidad.Text, reg);
            GridView1.DataBind();
            mensaje.Text = "registro Actualizado";
            limpiar();
        }
    }

    protected void btn_eliminar_Click(object sender, EventArgs e)
    {
        con.delete(txt_rut.Text);
        mensaje.Text = "Eliminado ok";
        GridView1.DataBind();
        limpiar();
    }
}
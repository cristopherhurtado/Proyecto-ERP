using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace registro
{

    public class ClaseConexionRegistroBD
    {
        public SqlConnection conexion;
        public SqlCommand comando;
        public SqlDataAdapter da;
        public DataSet dset;

        public ClaseConexionRegistroBD()
        {
            conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["Mi_RRHHConnectionString1"].ConnectionString);
        }

        public void insert(string codigo, string nombre, string apellido1, string apellido2, string fecha_nac, string estado_civil, string nacionalidad, string calle, string casa, string comuna, string ciudad, string afp, string telefono, string email, string sueldo_base, string movilizacion, string colacion, string asistencia, string bono, string tipo_contrato, string fecha_ing, string cargo, string area, string caja_compensacion, string mutualidad, int prevision)
        {
            string guardar = "insert into registros(codigo,nombre,apellido1,apellido2,fecha_nac,estado_civil,nacionalidad,calle,casa,comuna,ciudad,afp,telefono,email,sueldo_base,movilizacion,colacion,asistencia,bono,tipo_contrato,fecha_ing,cargo,area,caja_compensacion,mutualidad, prevision )values('" + codigo + "','" + nombre + "','" + apellido1 + "','" + apellido2 + "','" + fecha_nac + "','" + estado_civil + "','" + nacionalidad + "','" + calle + "','" + casa + "','" + comuna + "','" + ciudad + "','" + afp + "','" + telefono + "','" + email + "','" + sueldo_base + "','" + movilizacion + "','" + colacion + "','" + asistencia + "','" + bono + "','" + tipo_contrato + "','" + fecha_ing + "','" + cargo + "','" + area + "','" + caja_compensacion + "','" + mutualidad + "','" + prevision + "')";
            ejecutar(guardar);
        }

        public void update(string codigo, string nombre, string apellido1, string apellido2, string fecha_nac, string estado_civil, string nacionalidad, string calle, string casa, string comuna, string ciudad, string afp, string telefono, string email, string sueldo_base, string movilizacion, string colacion, string asistencia, string bono, string tipo_contrato, string fecha_ing, string cargo, string area, string caja_compensacion, string mutualidad, int prevision)
        {
            string actualizar = "update registros set codigo= '" + codigo + "', nombre= '" + nombre + "', apellido1= '" + apellido1 + "', apellido2= '" + apellido2 + "', fecha_nac= '" + fecha_nac + "', estado_civil= '" + estado_civil + "', nacionalidad= '" + nacionalidad + "', calle= '" + calle + "', casa= '" + casa + "', comuna= '" + comuna + "', ciudad= '" + ciudad + "', afp= '" + afp + "', telefono= '" + telefono + "', email= '" + email + "', sueldo_base= '" + sueldo_base + "', movilizacion= '" + movilizacion + "', colacion= '" + colacion + "', asistencia= '" + asistencia + "', bono= '" + bono + "', tipo_contrato= '" + tipo_contrato + "', fecha_ing= '" + fecha_ing + "', cargo= '" + cargo + "', area= '" + area + "', caja_compensacion= '" + caja_compensacion + "', mutualidad= '" + mutualidad + "', prevision= '" + prevision + "' where codigo= '" + codigo + "'";
            ejecutar(actualizar);
        }

        public void delete(string codigo)
        {
            string borrar = "delete from registros where codigo= '" + codigo + "'";
            ejecutar(borrar);
        }

        public DataSet Buscar_Rut(string codigo)
        {
            dset = new DataSet();
            ClaseConexionRegistroBD con = new ClaseConexionRegistroBD();
            con.conexion.Open();
            string select = "select * from registros where codigo= '" + codigo + "'";
            da = new SqlDataAdapter(select, con.conexion);
            da.Fill(dset);
            con.conexion.Close();
            return dset;
        }

        public void ejecutar(string cadena)
        {
            ClaseConexionRegistroBD con = new ClaseConexionRegistroBD();
            con.conexion.Open();
            con.comando = new SqlCommand(cadena, con.conexion);
            con.comando.ExecuteNonQuery();
            con.conexion.Close();
        }
    }

}
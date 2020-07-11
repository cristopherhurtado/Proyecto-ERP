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
            conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["MI_RRHHConnectionString"].ConnectionString);
        }

        public void insert(string rut, string nombre, string apellido1, string apellido2, string fecha_nacimiento, string estado_civil, string nacionalidad, string calle, string casa, string comuna, string ciudad, string afp, string telefono, string email, string sueldo_base, string movilizacion, string colacion, string asistencia, string bono, string tipo_contrato, string fecha_ing, string cargo, string area, string caja_compensacion, string mutualidad, int salud)
        {
            string guardar = "insert into registros(rut,nombre,apellido1,apellido2,fecha_nacimiento,estado_civil,nacionalidad,calle,casa,comuna,ciudad,afp,telefono,email,sueldo_base,movilizacion,colacion,asistencia,bono,tipo_contrato,fecha_ing,cargo,area,caja_compensacion,mutualidad, salud )values('" + rut + "','" + nombre + "','" + apellido1 + "','" + apellido2 + "','" + fecha_nacimiento + "','" + estado_civil + "','" + nacionalidad + "','" + calle + "','" + casa + "','" + comuna + "','" + ciudad + "','" + afp + "','" + telefono + "','" + email + "','" + sueldo_base + "','" + movilizacion + "','" + colacion + "','" + asistencia + "','" + bono + "','" + tipo_contrato + "','" + fecha_ing + "','" + cargo + "','" + area + "','" + caja_compensacion + "','" + mutualidad + "','" + salud + "')";
            ejecutar(guardar);
        }

        public void update(string rut, string nombre, string apellido1, string apellido2, string fecha_nacimiento, string estado_civil, string nacionalidad, string calle, string casa, string comuna, string ciudad, string afp, string telefono, string email, string sueldo_base, string movilizacion, string colacion, string asistencia, string bono, string tipo_contrato, string fecha_ing, string cargo, string area, string caja_compensacion, string mutualidad, int salud)
        {
            string actualizar = "update registros set rut= '" + rut + "', nombre= '" + nombre + "', apellido1= '" + apellido1 + "', apellido2= '" + apellido2 + "', fecha_nacimiento= '" + fecha_nacimiento + "', estado_civil= '" + estado_civil + "', nacionalidad= '" + nacionalidad + "', calle= '" + calle + "', casa= '" + casa + "', comuna= '" + comuna + "', ciudad= '" + ciudad + "', afp= '" + afp + "', telefono= '" + telefono + "', email= '" + email + "', sueldo_base= '" + sueldo_base + "', movilizacion= '" + movilizacion + "', colacion= '" + colacion + "', asistencia= '" + asistencia + "', bono= '" + bono + "', tipo_contrato= '" + tipo_contrato + "', fecha_ing= '" + fecha_ing + "', cargo= '" + cargo + "', area= '" + area + "', caja_compensacion= '" + caja_compensacion + "', mutualidad= '" + mutualidad + "', salud= '" + salud + "', where rut= '" + rut + "'";
            ejecutar(actualizar);
        }

        public void delete(string rut)
        {
            string borrar = "delete from registros where rut= '" + rut + "'";
            ejecutar(borrar);
        }

        public DataSet Buscar_Rut(string rut)
        {
            dset = new DataSet();
            ClaseConexionRegistroBD con = new ClaseConexionRegistroBD();
            con.conexion.Open();
            string select = "select * from registros where rut= '" + rut + "'";
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
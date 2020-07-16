using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Mi_RRHH
{

    public class ClaseConexionBD
    {
        public SqlConnection conexion;
        public SqlCommand comando;
        public SqlDataAdapter da;
        public DataSet dset;

        public ClaseConexionBD()
        {
            conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["Mi_RRHHConnectionString1"].ConnectionString);

        }

        public void insertar(string codigo, string nombre, string password, int perfil)
        {
            string guardar = "insert into usuario(codigo,nombre,password, perfil )values('"+codigo+"','"+nombre+"','"+password+"','"+perfil+"')";
            ejecutar(guardar);
        }

        public void modificar(string codigo, string nombre, string password, int perfil)
        {
            string update = "update usuario set codigo= '" + codigo + "', nombre= '" + nombre + "', password= '" + password + "', perfil= " + perfil + " where codigo= '" + codigo + "'";
            ejecutar(update);
        }

        public void eliminar(string codigo)
        {
            string borrar = "delete from usuario where codigo= '" + codigo + "'";
            ejecutar(borrar);
        }

        public DataSet Buscar_Codigo(string codigo)
        {
            dset = new DataSet();
            ClaseConexionBD con = new ClaseConexionBD();
            con.conexion.Open();
            string select = "select * from usuario where codigo= '" + codigo + "'";
            da = new SqlDataAdapter(select, con.conexion);
            da.Fill(dset);
            con.conexion.Close();
            return dset;
        }

        public void ejecutar(string cadena)
        {
            ClaseConexionBD con = new ClaseConexionBD();
            con.conexion.Open();
            con.comando = new SqlCommand(cadena, con.conexion);
            con.comando.ExecuteNonQuery();
            con.conexion.Close();
        }

    }

}
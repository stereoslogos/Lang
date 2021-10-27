using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CEntidades;


namespace CDatos
{
    public class CDatCitas
    {
        CConexion objconexion = new CConexion();
        SqlCommand cmd = new SqlCommand();

        public bool guardar_citas(CEntCitas oentcitas)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_guardar_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
                cmd.Parameters.Add("@pfecha", oentcitas.Fecha);
                cmd.Parameters.Add("@phora", oentcitas.Hora);
                cmd.Parameters.Add("@pid_paciente", oentcitas.Id_paciente);
                cmd.Parameters.Add("@pid_medico", oentcitas.Id_medico);
                cmd.Parameters.Add("@pvalor", oentcitas.Valor);
                cmd.Parameters.Add("@pobservaciones", oentcitas.Observaciones);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool anular_citas(CEntCitas oentcitas)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_anular_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consultar_citas(CEntCitas oentcitas)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_consultar_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;
using System.Data;

namespace CReglas
{
    public class CRegPaciente
    {
        CDatPaciente odatpaciente = new CDatPaciente();

        public bool guardar_paciente(CEntPaciente oentpaciente)
        {
            return odatpaciente.guardar_paciente(oentpaciente);
        }

        public bool anular_paciente(CEntPaciente oentpaciente)
        {
            return odatpaciente.anular_paciente(oentpaciente);
        }

        public DataSet consultar_paciente(CEntPaciente oentpaciente)
        {
            return odatpaciente.consultar_paciente(oentpaciente);
        }
    }
}

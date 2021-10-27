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
    public class CRegMedico
    {
        CDatMedico odatmedico = new CDatMedico();

        public bool guardar_medico(CEntMedico oentmedico)
        {
            return odatmedico.guardar_medico(oentmedico);
        }

        public bool anular_medico(CEntMedico oentmedico)
        {
            return odatmedico.anular_medico(oentmedico);
        }

        public DataSet consultar_medico(CEntMedico oentmedico)
        {
            return odatmedico.consultar_medico(oentmedico);
        }

    }
}

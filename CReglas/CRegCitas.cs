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
    public class CRegCitas
    {
        CDatCitas odatcitas = new CDatCitas();
        public bool guardar_citas(CEntCitas oentcitas)
        {
            return odatcitas.guardar_citas(oentcitas);
        }

        public bool anular_citas(CEntCitas oentcitas)
        {
            return odatcitas.anular_citas(oentcitas);
        }

        public DataSet consultar_citas(CEntCitas oentcitas)
        {
            return odatcitas.consultar_citas(oentcitas);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CEntidades;
using CReglas;
using System.Windows.Forms;

using System.Data.SqlClient;
using CDatos;

namespace Hospital_intersofware
{
    public partial class FrmMedico : System.Web.UI.Page
    {
        CEntMedico oentmedico = new CEntMedico();
        CRegMedico oregmedico = new CRegMedico();

        protected void BtnConsultarMedico_Click(object sender, EventArgs e)
        {
            if(TxtCodigoMedico.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite una identificación";
                TxtCodigoMedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                ds = oregmedico.consultar_medico(oentmedico);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "Medico no existe";
                    TxtCodigoMedico.Enabled = true;
                    TxtCodigoMedico.Focus();
                    BtnConsultarMedico.Enabled = true;
                    BtnGuardar.Enabled = true;

                }
                else
                {
                    LblMensaje.Text = "";
                    TxtCodigoMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    TxtNombreMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    TxtEspecilidadMedico.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                    LblConsultaMedico.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                    TxtNombreMedico.Enabled = false;
                    TxtEspecilidadMedico.Enabled = true;
                    BtnGuardar.Enabled = false;
                    BtnGeneral.Enabled = false;
                    BtnActivar.Enabled = true;
                    BtnAnular.Enabled = true;
                    TxtCodigoMedico.Focus();

                    

                    if (LblConsultaMedico.Text == "True")
                    {
                        LblConsultaMedico.Text = "Medico activo";

                    }
                    else
                    {
                        LblConsultaMedico.Text = "Medico inactivo";
                    }
                }
                
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (TxtCodigoMedico.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite la identificación del Medico";
                TxtCodigoMedico.Focus();
            }
            else
            {
                if (TxtNombreMedico.Text.Trim() == "")
                {
                    LblMensaje.Text = "Digite el nombre del Medico";
                    TxtNombreMedico.Enabled = true;
                    TxtNombreMedico.Focus();
                }
                else
                {
                    if(TxtEspecilidadMedico.Text.Trim() == "")
                    {
                        LblMensaje.Text = "Digite la especialidad del Medico";
                        TxtEspecilidadMedico.Enabled = true;
                        TxtEspecilidadMedico.Focus();
                    }
                    else
                    {
                        oentmedico.Id_medico = TxtCodigoMedico.Text;
                        oentmedico.Nom_medico = TxtNombreMedico.Text;
                        oentmedico.Especialidad = TxtEspecilidadMedico.Text;

                        if (oregmedico.guardar_medico(oentmedico))
                        {
                            LblMensaje.Text = "Medico Coronao'";
                            desactivar_campos();
                        }
                        else
                        {
                            LblMensaje.Text = "Error guardando Medico nuevo";
                            TxtCodigoMedico.Focus();
                        }
                    }
                }
            }
        }

        protected void BtnAnular_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("¿Desea anular este medico?","Anular",MessageBoxButtons.YesNo,MessageBoxIcon.Question) == DialogResult.Yes)
            {
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                oentmedico.Tipo = 0;

                if (oregmedico.anular_medico(oentmedico))
                {
                    LblMensaje.Text = "Medico anulado";

                }
                else
                {
                    LblMensaje.Text = "Error anulando medico";
                }
            }
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            desactivar_campos();
            limpiar_campos();
        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea activar este medico?", "Activar", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                oentmedico.Tipo = 1;

                if (oregmedico.anular_medico(oentmedico))
                {
                    LblMensaje.Text = "Medico activado";

                }
                else
                {
                    LblMensaje.Text = "Error activando medico";
                }
            }
        }

        public void limpiar_campos()
        {
            TxtCodigoMedico.Text = "";
            TxtNombreMedico.Text = "";
            TxtEspecilidadMedico.Text = "";
            LblMensaje.Text = "";
            LblConsultaMedico.Text = "";
            TxtCodigoMedico.Focus();
        }

        public void desactivar_campos()
        {

            TxtNombreMedico.Enabled = false;
            TxtEspecilidadMedico.Enabled = false;

            BtnGeneral.Enabled = false;
            BtnActivar.Enabled = false;
            BtnAnular.Enabled = false;
            BtnGuardar.Enabled = false;
        }

        

        protected void BtnGeneral_Click(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
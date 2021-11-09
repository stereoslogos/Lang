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

namespace Hospital_intersofware
{
    public partial class FrmPacientes : System.Web.UI.Page
    {
        CEntCitas oentcitas = new CEntCitas();
        CEntPaciente oentpaciente = new CEntPaciente();
        CEntMedico oentmedico = new CEntMedico();
        CRegCitas oregcitas = new CRegCitas();
        CRegPaciente oregpaciente = new CRegPaciente();
        CRegMedico oregmedico = new CRegMedico();
        protected void BtnConsultarPaciente_Click(object sender, EventArgs e)
        {
            if (TxtIdPaciente.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite una identificación";
                TxtIdPaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentpaciente.Id_paciente = TxtIdPaciente.Text;
                ds = oregpaciente.consultar_paciente(oentpaciente);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "El paciente no existe";
                    TxtIdPaciente.Enabled = true;
                    TxtIdPaciente.Focus();
                    BtnConsultarPaciente.Enabled = true;
                    BtnGuardarPaciente.Enabled = true;

                }
                else
                {
                    LblMensaje.Text = "";
                    TxtIdPaciente.Text = ds.Tables[0].Rows[0]["id_paciente"].ToString();
                    TxtNombrePaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    TxtDireccionPaciente.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                    TxtTelefonoPaciente.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                    LblCodigoPaciente.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                    TxtNombrePaciente.Enabled = false;
                    TxtDireccionPaciente.Enabled = true;
                    TxtTelefonoPaciente.Enabled = true;
                    BtnGuardarPaciente.Enabled = true;
                    BtnAnularPaciente.Enabled = true;
                    TxtIdPaciente.Focus();



                    if (LblCodigoPaciente.Text == "True")
                    {
                        LblCodigoPaciente.Text = "Paciente activo";

                    }
                    else
                    {
                        LblCodigoPaciente.Text = "Paciente inactivo";
                    }
                }

            }
        }

        protected void BtnGuardarPaciente_Click(object sender, EventArgs e)
        {
            if (TxtIdPaciente.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite la identificación del paciente";
                TxtIdPaciente.Focus();
            }
            else
            {
                if (TxtNombrePaciente.Text.Trim() == "")
                {
                    LblMensaje.Text = "Digite el nombre del paciente";
                    TxtNombrePaciente.Enabled = true;
                    TxtNombrePaciente.Focus();
                }
                else
                {
                    if (TxtDireccionPaciente.Text.Trim() == "")
                    {
                        LblMensaje.Text = "Digite la dirección del paciente";
                        TxtDireccionPaciente.Enabled = true;
                        TxtDireccionPaciente.Focus();
                    }
                    else
                    {
                        if(TxtTelefonoPaciente.Text.Trim() == "")
                        {
                            LblMensaje.Text = "Digite el telefono del paciente";
                            TxtTelefonoPaciente.Enabled = true;
                            TxtTelefonoPaciente.Enabled = true;
                            TxtTelefonoPaciente.Focus();
                        }
                        else
                        {
                            oentpaciente.Id_paciente = TxtIdPaciente.Text;
                            oentpaciente.Nom_paciente = TxtNombrePaciente.Text;
                            oentpaciente.Dir_paciente = TxtDireccionPaciente.Text;
                            oentpaciente.Tel_paciente = TxtTelefonoPaciente.Text;

                            if (oregpaciente.guardar_paciente(oentpaciente))
                            {
                                LblMensaje.Text = "Paciente Coronao'";
                                desactivar_campos();
                            }
                            else
                            {
                                LblMensaje.Text = "Error guardando nuevo paciente";
                                TxtIdPaciente.Focus();
                            }
                        }
                    }
                }
            }
        }

        protected void BtnAnularPaciente_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea anular este paciente?", "Anular", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                oentpaciente.Id_paciente = TxtIdPaciente.Text;
                oentpaciente.Tipo = 0;

                if (oregpaciente.anular_paciente(oentpaciente))
                {
                    LblMensaje.Text = "Paciente anulado";

                }
                else
                {
                    LblMensaje.Text = "Error paciente medico";
                }
            }
        }

        public void limpiar_campos()
        {
            TxtIdPaciente.Text = "";
            TxtNombrePaciente.Text = "";
            TxtDireccionPaciente.Text = "";
            TxtTelefonoPaciente.Text = "";
            LblMensaje.Text = "";
            LblCodigoPaciente.Text = "";
            TxtIdPaciente.Focus();
        }

        public void desactivar_campos()
        {

            TxtNombrePaciente.Enabled = false;
            TxtDireccionPaciente.Enabled = false;
            TxtTelefonoPaciente.Enabled = false;
            BtnAnularPaciente.Enabled = false;
            BtnGuardarPaciente.Enabled = false;
        }

        protected void BtnLimpiarCampos_Click(object sender, EventArgs e)
        {
            desactivar_campos();
            limpiar_campos();
        }
    }
}
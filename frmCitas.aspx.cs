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


namespace Hospital_Noche
{
    public partial class frmCitas : System.Web.UI.Page
    {
        CEntCitas oentcitas = new CEntCitas();
        CEntPaciente oentpaciente = new CEntPaciente();
        CEntMedico oentmedico = new CEntMedico();
        CRegCitas oregcitas = new CRegCitas();
        CRegPaciente oregpaciente = new CRegPaciente();
        CRegMedico oregmedico = new CRegMedico();

        protected void btnConsultarCita_Click(object sender, EventArgs e)
        {
            if (txtCodCita.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite un codigo";
                txtCodCita.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentcitas.Cod_cita = txtCodCita.Text;
                ds = oregcitas.consultar_citas(oentcitas);
                if (ds.Tables[0].Rows.Count==0)
                {
                    LblMensaje.Text = "Cita no existe";
                    txtFecha.Text = System.DateTime.Today.ToShortDateString();
                    txtHora.Text = System.DateTime.Now.ToShortTimeString();
                    txtCodPaciente.Enabled = true;
                    txtCodPaciente.Focus();
                    btnConsPaciente.Enabled = true;
                }
                else
                {
                    LblMensaje.Text = "";
                    txtFecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txtHora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtCodPaciente.Text = ds.Tables[0].Rows[0]["id_paciente"].ToString();
                    lblPaciente.Text = ds.Tables[1].Rows[0]["nom_paciente"].ToString();
                    txtCodMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    lblMedico.Text = ds.Tables[2].Rows[0]["nom_medico"].ToString();
                    txtVlrConsulta.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtDiagnostico.Text = ds.Tables[0].Rows[0]["observaciones"].ToString();

                    txtFecha.Enabled = true;
                    txtHora.Enabled = true;
                    txtDiagnostico.Enabled = true;
                    txtVlrConsulta.Enabled = true;
                    BtnAnular.Enabled = true;
                    btnGuardarCita.Enabled = true;
                    txtFecha.Focus();
                }
            }
        }

        protected void BtnAnular_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea anular este registro?", "Anular", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                oentcitas.Cod_cita = txtCodCita.Text;
                oentcitas.Tipo = 0;
                if (oregcitas.anular_citas(oentcitas))
                {
                    LblMensaje.Text = "Cita anulada";
                    desactivar_campos();
                    limpiar_campos();
                }
                else
                {
                    LblMensaje.Text = "Error anulando cita";
                }
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            desactivar_campos();
            limpiar_campos();
        }

        protected void btnGuardarCita_Click(object sender, EventArgs e)
        {
            if (txtVlrConsulta.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite el valor de la cita";
                txtVlrConsulta.Focus();
            }
            else
            {
                if (txtDiagnostico.Text.Trim() == "")
                {
                    LblMensaje.Text = "Digite el diagnostico de la cita";
                    txtDiagnostico.Focus();
                }
                else
                {
                    oentcitas.Cod_cita = txtCodCita.Text;
                    oentcitas.Fecha = Convert.ToDateTime(txtFecha.Text);
                    oentcitas.Hora = Convert.ToDateTime(txtHora.Text);
                    oentcitas.Id_paciente = txtCodPaciente.Text;
                    oentcitas.Id_medico = txtCodMedico.Text;
                    oentcitas.Valor = Convert.ToInt32(txtVlrConsulta.Text);
                    oentcitas.Observaciones = txtDiagnostico.Text;

                    if (oregcitas.guardar_citas(oentcitas))
                    {
                        LblMensaje.Text = "Coronao'";
                        desactivar_campos();
                        limpiar_campos();
                    }
                    else
                    {
                        LblMensaje.Text = "Error guardando cita";
                        txtCodCita.Focus();
                    }
                }
            }
        }

        public void limpiar_campos()
        {
            txtCodCita.Text = "";
            txtCodMedico.Text = "";
            txtCodPaciente.Text = "";
            txtDiagnostico.Text = "";
            txtFecha.Text = "";
            txtHora.Text = "";
            txtVlrConsulta.Text = "";
            lblMedico.Text = "";
            lblPaciente.Text = "";
            txtCodCita.Focus();
        }

        public void desactivar_campos()
        {
            txtCodMedico.Enabled = false;
            txtCodPaciente.Enabled = false;
            txtDiagnostico.Enabled = false;
            txtVlrConsulta.Enabled = false;
            BtnAnular.Enabled = false;
            btnBuscarMedico.Enabled = false; 
            btnConsPaciente.Enabled = false;
            btnGuardarCita.Enabled = false;
        }

        protected void btnConsPaciente_Click(object sender, EventArgs e)
        {
            if (txtCodPaciente.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite un codigo de paciente";
                txtCodPaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentpaciente.Id_paciente = txtCodPaciente.Text;
                ds = oregpaciente.consultar_paciente(oentpaciente);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "Paciente no registado";
                    txtCodPaciente.Focus();
                }
                else
                {
                    LblMensaje.Text = "";
                    lblPaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    txtCodMedico.Enabled = true;
                    txtCodMedico.Focus();
                    btnBuscarMedico.Enabled = true;
                }
            }
        }



        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            if (txtCodMedico.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite un codigo de medico";
                txtCodMedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentmedico.Id_medico = txtCodMedico.Text;
                ds = oregmedico.consultar_medico(oentmedico);

                if(ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "Medico no registrado";
                    txtCodMedico.Focus();
                }
                else
                {
                    LblMensaje.Text = "";
                    lblMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    txtVlrConsulta.Enabled = true;
                    txtDiagnostico.Enabled = true;
                    btnGuardarCita.Enabled = true;
                    txtVlrConsulta.Focus();
                }
            }
        }
    }    
}
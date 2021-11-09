
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCitas.aspx.cs" Inherits="Hospital_Noche.frmCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style5 {
            width: 209px;
        }
        .auto-style6 {
            color: #CC3300;
            font-family: "Calibri Light";
            font-size: large;
        }
        .auto-style7 {
            width: 199px;
            height: 30px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            width: 209px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 604px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style11 {
            width: 604px;
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            font-family: "Calibri Light";
            font-size: large;
            text-decoration: none;
        }
        .auto-style13 {
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style14 {
            width: 209px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 199px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            font-family: "Calibri Light";
        }
        .auto-style17 {
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style18 {
            font-size: xx-large;
        }
        .auto-style19 {
            font-family: "Calibri Light";
            font-size: xx-large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style21 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong><span class="auto-style16"><span class="auto-style18">
            <span class="auto-style1">
            <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span class="auto-style21">ASIGNACIÓN DE CITAS</span><span class="auto-style1"><span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></strong>
            <br class="auto-style19" />
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style15">Codigo Cita</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCodCita" runat="server" Width="300px" MaxLength="10" CssClass="auto-style13"></asp:TextBox>
                </td>               <td>
                    
                    <asp:Button ID="btnConsultarCita" runat="server" OnClick="btnConsultarCita_Click" Text="Consultar Cita" style="height: 26px" CssClass="auto-style13" />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td><strong>
                    <asp:Label ID="lblCita" runat="server" CssClass="auto-style6"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15">Fecha</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFecha" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Hora</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHora" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Codigo Paciente</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCodPaciente" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnConsPaciente" runat="server" Text="Buscar Paciente" Width="129px" OnClick="btnConsPaciente_Click" Enabled="False" CssClass="auto-style13" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblPaciente" runat="server" CssClass="auto-style6" Text="Paciente"></asp:Label>
                    </strong></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Codigo Medico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCodMedico" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnBuscarMedico" runat="server" Text="Buscar Medico" Width="131px" OnClick="btnBuscarMedico_Click" Enabled="False" CssClass="auto-style13" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblMedico" runat="server" CssClass="auto-style6" Text="Medico"></asp:Label>
                    </strong></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Vlr Consulta</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtVlrConsulta" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Diagnostico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDiagnostico" runat="server" Width="300px" Enabled="False" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="LblMensaje" runat="server" Font-Size="X-Large" ForeColor="Red" CssClass="auto-style13"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnGuardarCita" runat="server" Text="Guardar Cita" Width="139px" OnClick="btnGuardarCita_Click" Enabled="False" CssClass="auto-style13" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnAnular" runat="server" OnClick="BtnAnular_Click" Text="Anular" Width="166px" Enabled="False" CssClass="auto-style13" />
                </td>
                <td>
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" Width="140px" CssClass="auto-style13" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style3">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:HyperLink ID="HplMedicos" runat="server" NavigateUrl="~/FrmMedico.aspx" CssClass="auto-style12">Gestión de personal Médico</asp:HyperLink>
                </td>
                <td class="auto-style17">
                    <asp:HyperLink ID="HplPacientes" runat="server" NavigateUrl="~/FrmPacientes.aspx" CssClass="auto-style12">Gestión de Pacientes</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

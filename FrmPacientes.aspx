<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPacientes.aspx.cs" Inherits="Hospital_intersofware.FrmPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 608px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style4 {
            width: 608px;
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style6 {
            width: 218px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style7 {
            width: 390px;
            font-family: "Calibri Light";
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            width: 390px;
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            width: 218px;
            text-align: center;
        }
        .auto-style11 {
            font-family: "Calibri Light";
            font-size: large;
            text-decoration: none;
        }
        .auto-style12 {
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style13 {
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style14 {
            font-family: "Calibri Light";
            font-size: xx-large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style16 {
            font-family: "Calibri Light";
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style17 {
            font-family: "Calibri Light";
            font-size: xx-large;
        }
        .auto-style18 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div class="auto-style1">
               <strong><span class="auto-style1">
               <span class="auto-style17"><span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style18">GESTIÓN DE PACIENTES</span><span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><br class="auto-style14" />
        </div>
    
    <table class="auto-style2">
        <tr>
            <td class="auto-style6">Identificación del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtIdPaciente" runat="server" Width="266px" MaxLength="15" CssClass="auto-style12"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Button ID="BtnConsultarPaciente" runat="server" OnClick="BtnConsultarPaciente_Click" Text="Consultar Paciente" Width="224px" CssClass="auto-style12" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="LblCodigoPaciente" runat="server" ForeColor="Red" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Nombre del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtNombrePaciente" runat="server" Width="266px" MaxLength="50" CssClass="auto-style12"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Dirección del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtDireccionPaciente" runat="server" Width="266px" MaxLength="50" CssClass="auto-style12"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Teléfono del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTelefonoPaciente" runat="server" Width="266px" MaxLength="10" CssClass="auto-style12"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="LblMensaje" runat="server" ForeColor="Red" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="BtnGuardarPaciente" runat="server" OnClick="BtnGuardarPaciente_Click" Text="Guardar Paciente" Width="224px" CssClass="auto-style12" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="BtnAnularPaciente" runat="server" OnClick="BtnAnularPaciente_Click" Text="Anular Paciente" Width="224px" CssClass="auto-style12" />
            </td>
            <td class="auto-style1">
                <asp:Button ID="BtnLimpiarCampos" runat="server" OnClick="BtnLimpiarCampos_Click" Text="Limpiar Campos" Width="224px" CssClass="auto-style12" />
            </td>
        </tr>
    </table>
           <table class="auto-style2">
               <tr>
                   <td class="auto-style3">&nbsp;</td>
                   <td class="auto-style12">&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:HyperLink ID="HplCitas" runat="server" NavigateUrl="~/frmCitas.aspx" CssClass="auto-style11">Gestión de Citas</asp:HyperLink>
                   </td>
                   <td class="auto-style13">
                       <asp:HyperLink ID="HplMedicos" runat="server" NavigateUrl="~/FrmMedico.aspx" CssClass="auto-style11">Gestion de Medicos</asp:HyperLink>
                   </td>
               </tr>
           </table>
  </form>
</body>
</html>

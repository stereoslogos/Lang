<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMedico.aspx.cs" Inherits="Hospital_intersofware.FrmMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            border-style: none;
            }
        .auto-style4 {
            width: 209px;
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style5 {
            width: 209px;
            text-align: center;
        }
        .auto-style6 {
            width: 304px;
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style7 {
            width: 304px;
            text-align: center;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 606px;
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style10 {
            width: 606px;
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            font-family: "Calibri Light";
            font-size: large;
        }
        .auto-style13 {
            text-align: center;
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style14 {
            text-align: center;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style15 {
            font-family: "Calibri Light";
            font-size: large;
            font-weight: bold;
        }
        .auto-style16 {
            font-family: "Calibri Light";
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style17 {
            font-family: "Calibri Light";
            font-size: large;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style2">
             <strong><span class="auto-style1">
             <span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GESTIÓN DE PERSONAL MÉDICO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong>
        </div>
         <table align="center" class="auto-style3">
             <tr>
                 <td class="auto-style4">Identificación del Medico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtCodigoMedico" runat="server" Width="238px" MaxLength="15" CssClass="auto-style15"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Button ID="BtnConsultarMedico" runat="server" OnClick="BtnConsultarMedico_Click" Text="Consultar Médico" Width="201px" CssClass="auto-style15" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>
                     <b>
                     <asp:Label ID="LblConsultaMedico" runat="server" ForeColor="Red" CssClass="auto-style12"></asp:Label>
                     </b>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">Nombre del Médico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtNombreMedico" runat="server" Width="238px" MaxLength="50" CssClass="auto-style15"></asp:TextBox>
                 </td>
                 <td class="auto-style15">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style15">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">Especialidad del Médico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtEspecilidadMedico" runat="server" Width="238px" MaxLength="20" CssClass="auto-style15"></asp:TextBox>
                 </td>
                 <td class="auto-style15">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>
                     <b>
                     <asp:Label ID="LblMensaje" runat="server" ForeColor="Red" CssClass="auto-style12"></asp:Label>
                     </b>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style15">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar Registro" Width="201px" CssClass="auto-style15" />
                 </td>
                 <td class="auto-style7">
                     <asp:Button ID="BtnAnular" runat="server" OnClick="BtnAnular_Click" Text="Anular Registro Médico" Width="201px" CssClass="auto-style15" />
                 </td>
                 <td class="auto-style2">
                     &nbsp;<asp:Button ID="BtnActivar" runat="server" OnClick="BtnActivar_Click" Text="Activar Registro Medico" Width="180px" CssClass="auto-style15" />
                     <span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </span>
                     <asp:Button ID="BtnLimpiar" runat="server" OnClick="BtnLimpiar_Click" Text="Limpiar Campos" Width="201px" CssClass="auto-style15" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Button ID="BtnGeneral" runat="server" OnClick="BtnGeneral_Click" Text="Consulta General" Width="182px" CssClass="auto-style15" />
                 </td>
                 <td class="auto-style7">
                     <asp:GridView ID="GvGeneral" runat="server" AutoGenerateColumns="false" CssClass="auto-style15">
                         <Columns>
                             <asp:BoundField HeaderText="ID Medico" DataField="id_medico" />
                             <asp:BoundField HeaderText="Nombre" DataField="nom_medico" />
                         </Columns>
                     </asp:GridView>
                 </td>
                 <td class="auto-style13">
                     &nbsp;&nbsp;</td>
             </tr>
         </table>
         <table class="auto-style8">
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style15">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10">
                     <asp:HyperLink ID="HplCitas" runat="server" NavigateUrl="~/frmCitas.aspx" CssClass="auto-style17">Gestión de Citas</asp:HyperLink>
                 </td>
                 <td class="auto-style14">
                     <asp:HyperLink ID="HplPacientes" runat="server" NavigateUrl="~/FrmPacientes.aspx" CssClass="auto-style17">Gestión de Pacientes</asp:HyperLink>
                 </td>
             </tr>
         </table>
    </form>
</body>
</html>

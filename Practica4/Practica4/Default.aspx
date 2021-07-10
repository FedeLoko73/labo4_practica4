<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Practica4._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lbl1" runat="server" Text="Datos Cliente"></asp:Label>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Nro. Cliente: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="86px"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Apellido y Nombre: "></asp:Label>
        <asp:TextBox ID="txtbapelnomb" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <asp:Label ID="Label3" runat="server" Text="Direccion de Facturacion"></asp:Label>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Direccion y Numero: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="228px"></asp:TextBox>
    </p>
    <asp:Label ID="Label5" runat="server" Text="Unidad: "></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Localidad(CP): "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="79px"></asp:TextBox>
    </p>
    <asp:Label ID="Label7" runat="server" BackColor="Silver" BorderColor="#CCCCCC" 
        BorderStyle="Double" Text="Medios de Cobro"></asp:Label>
    <p>
        Modo de Cobro:
        <asp:DropDownList ID="ddlcobro" runat="server" AutoPostBack="True" 
            Height="19px" Width="158px">
            <asp:ListItem Value="TAR">Targeta de credito</asp:ListItem>
            <asp:ListItem Value="CBU">Transferencia</asp:ListItem>
        </asp:DropDownList>
    </p>
    <asp:Panel ID="PanelCbu" runat="server" Visible="False">
        <asp:Label ID="Label8" runat="server" Text="Nro cbu: "></asp:Label>
        <asp:TextBox ID="txtboxcbu" runat="server" Width="234px"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Paneltarg" runat="server" Visible="False">
        <asp:Label ID="Label9" runat="server" Text="Targeta: "></asp:Label>
        <asp:DropDownList ID="ddltarg" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="descripcion" 
            DataValueField="cod_tarjeta" Width="158px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Labo4_pugnoConnectionString %>" 
            SelectCommand="SELECT [cod_tarjeta], [descripcion] FROM [tarjetas]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Labo4_pugnoConnectionString %>" 
            SelectCommand="SELECT [cod_tarjeta], [marca] FROM [tarjetas]">
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Button ID="btnenviar" runat="server" Text="Enviar" />
    </form>
</body>
</html>

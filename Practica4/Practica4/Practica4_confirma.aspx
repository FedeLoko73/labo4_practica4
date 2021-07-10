<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practica4_confirma.aspx.vb" Inherits="Practica4.Practica4_confirma" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Confirmar Datos De Pago"></asp:Label>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Apellido y Nombre: "></asp:Label>
    <asp:TextBox ID="txtapelnomb" runat="server" ReadOnly="True" Width="171px"></asp:TextBox>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Medio De Pago: "></asp:Label>
        <asp:TextBox ID="txtmedio" runat="server" Width="173px"></asp:TextBox>
    </p>
    <asp:Label ID="Labeltarg" runat="server" Text="Targeta: "></asp:Label>
    <asp:TextBox ID="txttarg" runat="server" ReadOnly="True" Width="224px"></asp:TextBox>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Cbu: "></asp:Label>
        <asp:TextBox ID="txtcbu" runat="server" Width="218px"></asp:TextBox>
    </p>
    </form>
</body>
</html>

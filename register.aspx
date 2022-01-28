<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="fvUsuario" runat="server" DataKeyNames="idUsuario" DataSourceID="sqlDsUsuarios">
                <InsertItemTemplate>
                    nombre:
                    <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
                    <br />
                    apellidos:
                    <asp:TextBox ID="apellidosTextBox" runat="server" Text='<%# Bind("apellidos") %>' />
                    <br />
                    usuario:
                    <asp:TextBox ID="usuarioTextBox" runat="server" Text='<%# Bind("usuario") %>' />
                    <br />
                    clave:
                    <asp:TextBox ID="claveTextBox" runat="server" Text='<%# Bind("clave") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="sqlDsUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:yuumediaConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [idUsuario] = @idUsuario" InsertCommand="INSERT INTO [Usuario] ([nombre], [apellidos], [usuario], [clave]) VALUES (@nombre, @apellidos, @usuario, @clave)" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [nombre] = @nombre, [apellidos] = @apellidos, [usuario] = @usuario, [clave] = @clave WHERE [idUsuario] = @idUsuario">
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellidos" Type="String" />
                    <asp:Parameter Name="usuario" Type="String" />
                    <asp:Parameter Name="clave" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Monitoramentocad.aspx.cs" Inherits="ProjWeb1.Monitoramentocad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;
            <asp:Label ID="lblNomecliente" runat="server" Text="Nome do Cliente :"></asp:Label>
        &nbsp;
            <asp:TextBox ID="txtNomecliente" runat="server" Width="300px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblQtdcamera" runat="server" Text="Quantidade de Cameras :"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtQtdcamera" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblDescricao" runat="server" Text="Descricao : "></asp:Label>
&nbsp;
            <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblValor" runat="server" Text="Valor : "></asp:Label>
&nbsp;
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblFidelidade" runat="server" Text="Fidelidade : "></asp:Label>
&nbsp;
            <asp:RadioButtonList ID="rblFidelidade" runat="server">
                <asp:ListItem Text="Sim" Value="1" />
                <asp:ListItem Text="Nao" Value="0" />
            </asp:RadioButtonList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
            <asp:GridView ID="gridMonitoramento" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <%--<asp:GridView ID="gridMonitoramento" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"  >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" SortExpression="id"></asp:TemplateField>
                    <asp:TemplateField HeaderText="NomeCliente" SortExpression="nomecliente"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantidade de Cam" SortExpression="qtdcameras"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Descricao" SortExpression="descricao"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Valor" SortExpression="valorpacote"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Fidelidade" SortExpression="fidelidade"></asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>--%>
            <asp:SqlDataSource ID="dbcameras" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>

    </form>
</body>
</html>

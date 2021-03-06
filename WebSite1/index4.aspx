﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="index4.aspx.cs" Inherits="index4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PasteId" DataSourceID="SqlDataSource1" Width="536px">
    <Columns>
        <asp:TemplateField HeaderText="帖名" SortExpression="PasteName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PasteName") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PasteId", "paste.aspx?id={0}") %>' Text='<%# Eval("PasteName") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" SelectCommand="SELECT [PasteId], [PasteName] FROM [Paste] WHERE ([PasteKind] = @PasteKind)">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox2" Name="PasteKind" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
</asp:Content>


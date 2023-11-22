<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="ExamenUH.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="contanie text-center">   
    <h1>EQUIPOS</h1>
</div>
    <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />

        <br />
        <br />
        <br />
          
    </div>
    <div class="container text-center">
        EquipoID: <asp:TextBox ID="tequipo" class="form-control" runat="server"></asp:TextBox>
        Tipo de equipo: <asp:TextBox ID="ttipo" class="form-control" runat="server"></asp:TextBox>
        Modelo: <asp:TextBox ID="tmodelo" class="form-control" runat="server"></asp:TextBox>
        UsuarioID: <asp:TextBox ID="tusuario" class="form-control" runat="server"></asp:TextBox>
    </div>

       <html lang="en">

<head>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <!--   <button style="--clr:#EA00FF"><span>Button</span><i></i></button> -->
  <!-- <button style="--clr:#FFF01F"><span>Button</span><i></i></button> -->
  <!-- <button style="--clr:#7FFF00"><span>Button</span><i></i></button> -->
  <!-- <button style="--clr:#FF5E00"><span>Button</span><i></i></button> -->
  <button style="--clr:#39FF14"><span>Agregar</span><i></i></button>
  <!-- <button style="--clr:#FF3131"><span>Button</span><i></i></button> -->
  <!-- <button style="--clr:#1F51FF"><span>Button</span><i></i></button> -->
  <button style="--clr:#FF44CC"><span>Eliminar</span><i></i></button>
  <!-- <button style="--clr:#BC13FE"><span>Button</span><i></i></button> -->
  <button style="--clr:#0FF0FC"><span>Modificar</span><i></i></button>
  <!-- <button style="--clr:#E7EE4F"><span>Button</span><i></i></button> -->
  <button style="--clr:#8A2BE2"><span>Consultar</span><i></i></button>
  <!-- <button style="--clr:#FF1493"><span>Button</span><i></i></button> -->
  <!-- <button style="--clr:#CCFF00"><span>Button</span><i></i></button> -->
</body>
<!--  From Online Tutorials YT Channel -->
</html>
</asp:Content>

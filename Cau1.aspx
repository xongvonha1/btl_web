<%@ Page Title="" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="Cau1.aspx.cs" Inherits="BTLweb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="css/ChiTietKhuyenMai.css" rel="stylesheet" />
    <style>
        .container {
            display: float;

            flex-wrap: wrap;
            
        }

        .column {
            width: 100%;
            flex: 1;
            margin: 10px;
            padding: 20px;
            background-color: #f2f2f2;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
    </style>


    <div class="container">
        <div class="column">Cột  1</div>
        <div class="column">Cột 2</div>
        <div class="column">Cột 3</div>
        <div class="column">Cột 4</div>
        <div class="column">Cột 5</div>
    </div>

</asp:Content>

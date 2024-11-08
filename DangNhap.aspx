<%@ Page Title="ĐĂNG NHẬP" Language="C#" MasterPageFile="~/codeALL.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTLweb.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/DangNhapStyle.css" rel="stylesheet" />
    <div class="breadcrumbs">
        <a href="/">Trang chủ</a> /
        <a href="/Tai-Khoan/">Tài khoản</a> /
        <span id="titleSpan"></span>
    </div>
    <div class="login-form">
        <h2>ĐĂNG NHẬP TÀI KHOẢN</h2>
        <h6>Bạn chưa có tài khoản? <a href="DangKy.aspx">Đăng ký tại đây</a></h6>
        <form action="DangNhap.aspx" method="POST" onsubmit="return validatePassword();">
            <div class="form-group">
                <label for="email">Email:<span class="required" title="Không được để trống">*</span></label>
                <input type="text" id="email" name="email" placeholder="Nhập Email">
            </div>

            <div class="form-group">
                <label for="password">Mật khẩu:<span class="required" title="Không được để trống">*</span></label>
                <input type="password" id="password" name="password" placeholder="Nhập mật khẩu">
            </div>
            <asp:Label ID="lblNoResult" runat="server" Visible="false" Style="color: red" CssClass="no-result-label"></asp:Label>
            <asp:HiddenField ID="WrongLoginCount" runat="server" Value="0" />

            <div class="QuenMK">
                <p>Quên mật khẩu? <a href="#">Nhấn vào đây</a></p>
            </div>

            <button type="submit" class="BtnDangNhap" value="true" name="btnlogin">Đăng Nhập</button>
            <%--                    <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" CssClass="BtnDangNhap" />--%>
        </form>
    </div>
    <script src="JS/BeadcrumbsJS.js"></script>
    <script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            
            if (password.length < 8) {
                alert("Mật khẩu phải có ít nhất 8 kí tự");
                return false;
            }
           
            if (!/^\d{3}/.test(password)) {
                alert("Mật khẩu phải bắt đầu bằng 3 chữ số");
                return false;
            }
            
            if (!/[A-Z]/.test(password)) {
                alert("Mật khẩu phải có ít nhất 1 kí tự viết hoa");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

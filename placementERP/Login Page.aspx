<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="placementERP.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS added -->
    <link href="my%20style/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>

<body>
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="my%20style/plugins/bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="my%20style/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <form id="form1" runat="server">

        <div class="container-fluid py-1">
            <div class="row bg-info">
                <div class="col-4">
                    <img src="images/CHRIST%20COLLEGE%20BLUE%20LOGO.jpg" class="rounded float-left img-thumbnail" />
                </div>
            </div>
        </div>

        <div class="container">
            <br />
            <br />
            <br />

            <form>
              <div class="form-group">
                <label for="exampleInputEmail1">College ID</label>
                
                <asp:TextBox ID="userid" CssClass="auto-style1" runat="server"></asp:TextBox>
                <small id="emailHelp" class="form-text text-muted">Eg: 2017001</small>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                  <asp:TextBox ID="password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <asp:Button ID="loginBtn" runat="server" Text="Login" CssClass="btn-info" OnClick="loginBtn_Click"/>
            </form>

        </div>

    </form>
</body>

</html>

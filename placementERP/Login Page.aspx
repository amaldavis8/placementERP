<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="myERP.Login_Page" %>

<!DOCTYPE html>


<!-- Amalettan pwoliya -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="my%20style/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!--Amal -->
    <title>Login</title>
</head>
<body>
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) cmmd added. -->
    <script src="my%20style/plugins/bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="my%20style/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <form id="form1" runat="server">

        <div class="container-fluid">
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
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">Eg: 2017001</small>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>

        </div>
    </form>
</body>
</html>

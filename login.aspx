<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-secondary">
    <form id="form1" runat="server">
            <div class="container"  style="margin:150px 150px 150px 300px">

        <div class="card o-hidden border-0 shadow-lg my-5" >
            <div class="card-body p-0" >
                <!-- Nested Row within Card Body -->
                <div class="row">
                        <img src="chanh.png" alt="hugenerd"  class="col-lg-6 d-none d-lg-block" style="max-height:400px;max-width:500px">                     
                         <div class="col-lg-6" style="margin-top:50px">
                                <div class="p-5" style="max-width:400px" >
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome</h1>
                                    </div>
                                    <div class="user" >
                                        <div class="form-group"  >
                                            <asp:TextBox ID="accountname" runat="server" class="form-control form-control-user"
                                                    aria-describedby="emailHelp"
                                                   placeholder="Enter ID..."></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="password" runat="server"  type="password" class="form-control form-control-user"
                                                   placeholder="Password"></asp:TextBox>

                                        </div>
                                        <asp:Button ID="loginbtn" runat="server" Text="Login" class="btn btn-primary btn-user btn-block" OnClick="loginbtn_Click"/>
                                      

                                        <div class="text-danger" style="margin-top:30px; text-align:center" >
                                        <asp:Literal ID="alert" runat="server" ></asp:Literal>
                                         </div>
                                        <hr >
                                    </div>
                                </div>
                            </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>


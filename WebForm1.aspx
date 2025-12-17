<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjercicioASP.NET2023.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Ejercicio de registro</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
          crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- Card para el formulario -->
                <div class="card shadow">
                    <div class="card-header text-center">
                        <h3>Registro</h3>
                    </div>
                    <div class="card-body">
                        <form runat="server" id="formulario">
                            <div class="form-group">
                                <label for="Name">Nombre</label>
                                <asp:TextBox runat="server" ID="Name" CssClass="form-control" placeholder="Tu nombre" />
                            </div>
                            <div class="form-group">
                                <label for="Email">Correo electrónico</label>
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" placeholder="Tu email" />
                            </div>
                            <div class="form-group">
                                <label for="Password">Contraseña</label>
                                <asp:TextBox runat="server" ID="Password" CssClass="form-control" TextMode="Password" placeholder="Contraseña" />
                            </div>
                            <div class="text-center">
                                <asp:Button runat="server" ID="Registro" CssClass="btn btn-primary btn-block" Text="Registrar" OnClick="Registro_Click" />
                            </div>
                        </form>
                        <br />
                        <div>
                            <asp:Label runat="server" CssClass="alert-danger" ID="Error"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>







































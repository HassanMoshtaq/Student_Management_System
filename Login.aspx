<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HW5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <%-- Bootstrap --%>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.3/dist/lux/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <%--<link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <%-- Left background --%>
            <div class="col-md-8" style="background-image:url(images/image1.jpg); background-size:cover"></div>
            <%-- End Left background --%>
            <%-- Login form --%>
            <div class="col d-flex justify-content-center bg-light" style="height: 100vh;">                
                <div class="my-auto " >
                    <div class="row1">
                        <h2 class="d-flex justify-content-center" style="color: red;"> Welcome to Login Page</h2>
                    </div>
                    <br />
                    <%-- End icon --%>
                
                    <div class="row">
                        <h2 class="d-flex justify-content-center" > Please Enter your name to Continue</h2>
                    </div>
                    <%-- form group --%>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <div class=" form-group">
                                <label class="form-label mt-4" style="color: blue;">Enter Your first Name</label>
                                <asp:TextBox ID="FNameTB" CssClass="form-control" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FNameTB" runat="server" ValidationGroup="login" ErrorMessage="Please Enter Your name!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class=" form-group">
                                <label class="form-label mt-4" style="color: blue;"> Enter Your Last Name</label>
                                <asp:TextBox ID="LNameTB" CssClass="form-control"  runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="LNameTB" runat="server" ValidationGroup="login" ErrorMessage="Please Enter Your last name!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <br />
                            <div class=" d-grid gap-2">
                                <asp:Button ID="LoginBTN" CssClass="btn btn-info" OnClick="LoginBTN_Click" runat="server" ValidationGroup="login" Text="Login" />
                            </div>    
                        </div>
                    </div> 
                    <%-- End form group --%>
                </div>
            </div>
            <%-- End Login form --%>
        </div>
    </form>
</body>
</html>

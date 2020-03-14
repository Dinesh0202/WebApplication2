<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication2.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9.10.0/dist/sweetalert2.all.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="card-header" style=" background-color:dodgerblue"">
            <div class="row">
                <div class="col-md-2" style="margin-block-end:-20px;">
                    <img src="Content/Image/pacific-logo.png" style="height:100px;width:100px; margin-left:60px" />
                </div>
                <div class="col-md-8">
                    <h3 style="text-align:center; color:white; margin-top:-9px">Pacific University</h3>
                    <h5 style="text-align:center; color:white; margin-top:-9px">  A Class Opportunity in AI /Data Science / cloud Computing</h5>
                </div>
                <div class="col-md-2">

                </div>
            </div>
            
          
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-2"></div>
            <div class="col-sm-4 form-group">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                 <asp:RequiredFieldValidator ID="sname1" runat="server" ErrorMessage="*" ControlToValidate="sname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="sname" placeholder="Full Name" runat="server"  CssClass="form-control"></asp:TextBox>
                 <asp:Label ID="Label7" runat="server" Text="Mobile No. "></asp:Label>
                <asp:RequiredFieldValidator ID="phone1" runat="server" ErrorMessage="*" ControlToValidate="phone"  ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="phone" MaxLength="10"  runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Class "></asp:Label>
                <asp:DropDownList ID="class1" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Class</asp:ListItem>
                    <asp:ListItem>XI</asp:ListItem>
                    <asp:ListItem>XII</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label6" runat="server" Text="Email-id"></asp:Label>
                <asp:RequiredFieldValidator ID="email1" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                
            </div>
            <div class="col-sm-4">
              <asp:Label ID="Label2" runat="server" Text="Father Name "></asp:Label>
                <asp:RequiredFieldValidator ID="fname1" runat="server" ErrorMessage="*" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:Label ID="Label5" runat="server" Text="Father Mobile No."></asp:Label>
                <asp:RequiredFieldValidator ID="Moblie1" runat="server" ErrorMessage="*" ControlToValidate="mnumber" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="mnumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
               <asp:Label ID="LabelSchool" runat="server" Text="School"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBoxSchool" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBoxSchool" runat="server" ErrorMessage="*" ControlToValidate="School" CssClass="form-control" ></asp:TextBox>
                 <asp:Label ID="Label4" runat="server" Text="Stream" ></asp:Label>
              <asp:RequiredFieldValidator ID="stream" runat="server" ControlToValidate="stream1"  ErrorMessage="* Please select an item." ForeColor="Red"> </asp:RequiredFieldValidator>
                <asp:DropDownList ID="stream1" runat="server" CssClass="form-control">
                     <asp:ListItem>Select Stream</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Biology</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Agriculture</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
            </div>
          <br />
        <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="Button1_Click"/>
            </div>
        
        <br />
      
        <div class="card-footer">
            <p style="text-align:center">© 2020 Copyright: Pacific University IT Team</p>
        </div>
    </form>
    
</body>
   
</html>

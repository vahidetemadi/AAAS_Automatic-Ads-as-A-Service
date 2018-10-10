<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="automatic_ads.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="Stylesheet" type="text/css" href="Style.css" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
   
            <div id="header">
                <h1>Advertise Company</h1>
            </div>
            
            <div id="form">

                        <h1>Login to System</h1>
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="UserName : " AssociatedControlID="name_box"></asp:Label>
                            <asp:TextBox runat="server" ID="name_box"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="Label2" runat="server" Text="Password : " AssociatedControlID="password_box"></asp:Label>
                            <asp:TextBox runat="server" ID="password_box" TextMode="Password"></asp:TextBox>
                        </p>
                        <br /><br /><br /><br />
                        <asp:Button CssClass="button" style="left:790px" runat="server" ID="back" 
                            Text="Exit" onclick="back_Click" />
                    
                        <br /><br />
                        <asp:Button CssClass="button" runat="server" ID="pay" Text="Login" />
                    
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaleForm.aspx.cs" Inherits="automatic_ads.SaleForm" %>

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
                <asp:MultiView ID="Forms" runat="server" ActiveViewIndex="0">
                    
                    <asp:View runat="server" ID="type">
                        <h1> Select your favorite advertise type </h1>
                        <br /><br />
                        <asp:RadioButtonList ID="types" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="types_SelectedIndexChanged">
                            <asp:ListItem Text="Picture" Selected="True" Value="About Picture ..... "></asp:ListItem>
                            <asp:ListItem Text="Sound" Selected="False" Value="About Sound......"></asp:ListItem>
                            <asp:ListItem Text="Video" Selected="False" Value="About Video....."></asp:ListItem>
                            <asp:ListItem Text="Text" Selected="False" Value="About Text......"></asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:Label ID="desc" CssClass="desc" Text="" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button runat="server" CssClass="button"  ID="next" Text="Next" 
                            onclick="next_Click" />
                    </asp:View>

                    <asp:View runat="server" ID="register">
                        <h1>Enter Your Information</h1>
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="Company Name : " AssociatedControlID="name_box"></asp:Label>
                            <asp:TextBox runat="server" ID="name_box"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="Label2" runat="server" Text="Address : " AssociatedControlID="address_box"></asp:Label>
                            <asp:TextBox runat="server" ID="address_box"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Phone Number : " AssociatedControlID="phon_box"></asp:Label>
                            <asp:TextBox runat="server" ID="phon_box"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="Label4" runat="server" Text="Select Your Ads : "></asp:Label>
                            <asp:FileUpload ID="sug" runat="server">
                            </asp:FileUpload>
                        </p>
                        <br /><br /><br /><br /><br /><br />
                        <asp:Button CssClass="button" runat="server" ID="pay" Text="Payment" />
                        <asp:Button CssClass="button" style="left:40px" runat="server" ID="back" 
                            Text="Back" onclick="back_Click" />
                    </asp:View>
                    
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>

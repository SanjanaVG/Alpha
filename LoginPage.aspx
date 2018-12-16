<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="emp_repository.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emplyoee Repository</title>
    <style type="text/css">
        .auto{
            width:100%;
            align-items:center;
            height:20px;
        }
        h2{
            text-align:center;
            color: #247BA0;
        }
    </style>
</head>
<body>
    <h2>Employee Respository</h2>
    <form id="form1" runat="server" class="auto">
    <div >
        <table >
            <tr>
                <td style="text-align:center;vertical-align:top">

                    <asp:Label ID="Label1" runat="server" Text="UserId" CssClass="auto" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="225px" Font-Size="Large"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td style="text-align:center;vertical-align:top">

                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="225px" Font-Size="Large" TextMode="Password"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Log In" BorderStyle="None" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset" BorderStyle="None" Font-Bold="True" Font-Size="Medium" OnClick="Button2_Click" />
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>

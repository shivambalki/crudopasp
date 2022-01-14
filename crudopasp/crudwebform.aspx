<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crudwebform.aspx.cs" Inherits="Crudwebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="wwwroot/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
 
        body{background-image:url('Images/grad.jpg');
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-size:2000px 1400px;
        }
        .auto-style1 {
            height: 160px;
        }
        .div-1{
          
            background-image: linear-gradient(to right,#abbaab,#ffffff);
        }
    </style>
    <script>
        function abc(a) {
            alert(a);
        }

    </script>
</head>
<body>
   
    <form id="form1" runat="server">


        <div class="row justify-content-center m-3">
               <div class="col-sm-8">
                   <div class="card-header">
                       <h1>User Details</h1>
                   </div>
            <div class="card-body text-center">

           
            <table>
                <tr>
                    <td><p class="fs-4">Name</p></td>
                    <td><asp:TextBox ID="Name" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Name cannot be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
               </tr>

                  <tr>
                  <td class="fs-4">DOB</td>
                    <td class="auto-style1"> 
                        
                        <asp:Calendar ID="Dob" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" Width="400px" NextPrevFormat="FullMonth" TitleFormat="Month">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Height="10pt" Font-Size="7pt" ForeColor="#333333" />
                            <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                        
                      </td>
               </tr>

                 <tr>
                    <td><p class="fs-4">Year of Birth</p></td>
                    <td> <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Age should not be less than 18" Font-Bold="True" ForeColor="#CC0000" MaximumValue="2004" MinimumValue="1950"></asp:RangeValidator>
                    </td>
               </tr

                  <tr>
                   <td><p class="fs-4">Email</p></td>
                    <td><asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Email cannot be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                      </td>
               </tr>

                  <tr>
                     <td><p class="fs-4">City</p></td>
                    <td><asp:TextBox ID="City" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="City" ErrorMessage="City cannot be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
               </tr>

                  <tr>
                       <td><p class="fs-4">Phone Number</p></td>
                    <td><asp:TextBox ID="Phone" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone" ErrorMessage="Phone No cannot be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Phone" ErrorMessage="Enter valid 10 digit Phone Number" Font-Bold="True" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                       </td>
               </tr>
                   
          <tr>
              <td colspan="2" align="center">
                  
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp; 
                    <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-warning " OnClick="Button2_Click"/>  &nbsp; &nbsp; &nbsp; 
                    <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger" OnClick="Button3_Click1" />  &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button4" runat="server" Text="View" class="btn btn-info" OnClick="Button4_Click" Visible="False"/>
              </td>
          </tr>
                  <tr>
                     <td><p class="fs-5">Enter ID to Update</p></td>
                    <td><asp:TextBox ID="id2" runat="server" class="form-control"></asp:TextBox>
                      </td>
               </tr>
            </table>
                </div>
                   </div>
           

            <br />
            <div class="div-1">
                &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" class="container"></asp:GridView>
        
            </div>
          
        </div>
    </form>
</body>
</html>

<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationSQLServer.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration</h2>
            <br />
            <asp:Panel ID="enterUserInfoPanel" runat="server">
                <table cellpadding="3" border="0">
                    <tr>
                        <td>First name:</td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="FirstNameRequiredValidator" ControlToValidate="firstNameTextBox" runat="server" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last name:</td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="LastNameRequiredValidator" ControlToValidate="lastNameTextBox" runat="server" ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="AddressRequiredValidator" ControlToValidate="addressTextBox" runat="server" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:TextBox ID="cityTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="CityRequiredValidator" ControlToValidate="cityTextBox" runat="server" ErrorMessage="City is required" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>State or Province:</td>
                        <td>
                            <asp:TextBox ID="stateOrProvinceTextBox" runat="server" />
                            <%--Attribute MaxLength on TextBox limits characters we can type--%>
                            <asp:RequiredFieldValidator ID="ProvinceRequiredValidator" ControlToValidate="stateOrProvinceTextBox" runat="server" ErrorMessage="Province is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="ProvinceRegexValidator" runat="server" ValidationExpression="[A-z]{2}" ControlToValidate="stateOrProvinceTextBox" ErrorMessage="Province should contain 2 characters" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Zip Code/Postal Code:</td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="ZipCodeRequiredValidator" ControlToValidate="zipCodeTextBox" runat="server" ErrorMessage="Zip/Postal is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td>
                            <asp:TextBox ID="countryTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="CountryRequiredValidator" ControlToValidate="countryTextBox" runat="server" ErrorMessage="Country  is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="enterInfoButton" runat="server" Text="Enter user information" OnClick="enterInfoButton_Click" /></td>
                    </tr>
                </table>
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

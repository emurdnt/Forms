<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" Inherits="FormSamples_JobApplication" Codebehind="JobApplication.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="page-header">
        <h1>Job Application</h1>
    </div>
    <div class="row col-md-12">
        <blockquote style="font-style: italic">
            This illustrates some simple controls to fill out an online job application.
        </blockquote>
    </div>
    <div class="row">
        <div class="col-md-6">
            <p>
                Please fill out the following form and click Submit to apply for the listed 
        job(s).
            </p>
            <fieldset>
                <legend>Application Form</legend>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="FullName">Name</asp:Label>
                <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label2" runat="server" AssociatedControlID="EmailAddress">Email</asp:Label>
                <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label3" runat="server" AssociatedControlID="PhoneNumber">Phone</asp:Label>
                <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label4" runat="server" AssociatedControlID="FullOrPartTime">Full/Part Time</asp:Label>
                <asp:RadioButtonList ID="FullOrPartTime" runat="server">
                    <asp:ListItem>Full time</asp:ListItem>
                    <asp:ListItem>Part time</asp:ListItem>
                </asp:RadioButtonList>
                <br />

                <asp:Label ID="Label5" runat="server" AssociatedControlID="JobInSales">Jobs</asp:Label>
                <div>
                    <asp:CheckBox ID="JobInSales" runat="server" Text="Sales" />
                    <br />
                    <asp:CheckBox ID="JobInManufacturing" runat="server" Text="Manufacturing" />
                    <br />
                    <asp:CheckBox ID="JobInAccounting" runat="server" Text="Accounting" />
                    <br />
                    <asp:CheckBox ID="JobInShippingReceiving" runat="server"
                        Text="Shipping/Receiving" />
                </div>
            </fieldset>
            <p>
                <asp:Button ID="Submit" runat="server" Text="Submit" />
            </p>
            <div>
                 <div>
                <%--Validation Controls--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"  HeaderText="Please fix the following problems before sumitting this form." />
                <asp:RequiredFieldValidator ID="ValidatetName" runat="server" Display="None" ControlToValidate="FullName" ErrorMessage="Name is required."/>
                <asp:RegularExpressionValidator ID="ValidateEmail" runat="server" Display="None" ControlToValidate="EmailAddress" ErrorMessage="Invalid email format!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                <asp:RequiredFieldValidator ID="ValidatePhoneNumber" runat="server" Display="None" ControlToValidate="PhoneNumber" ErrorMessage="Phone number is required."/>
                <asp:RegularExpressionValidator ID="ValidatePhoneNumberFormat" runat="server" Display="None" ControlToValidate="PhoneNumber" ErrorMessage="Invalid phone number format!" ValidationExpression="\(\d{3}\)?\s\d{3}-\d{4"/>
                <asp:RequiredFieldValidator ID="ValidateStatus" runat="server" Display="None" ControlToValidate="FullOrPartTime" ErrorMessage="Status is required."/>
              
            </div>
            </div>
        </div>
        <div class="col-md-6">
            <asp:Label ID="MessageLabel" runat="server" />

            <p>Apply the following validation rules:</p>
            <ul>
                <li>Name is required.</li>
                <li>Email must be in the correct format: <code>\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*</code></li>
                <li>Phone is required, and must be in the correct format: (###)###-#### &nbsp;&nbsp;<code>\(\d{3}\)?\s\d{3}-\d{4}</code></li>
                <li>Full/Part Time must be chosen (it's required).</li>
            </ul>
        </div>
    </div>

</asp:Content>


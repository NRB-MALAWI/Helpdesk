<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Final_HelpDesk.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please Sign In</h3>
                </div>
                <div class="panel-body">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" id="Usertexbox" placeholder="Username" name="email" type="text" runat="server">
                        </div>
                        <div class="form-group">
                            <input class="form-control" id="txtpassword" placeholder="Password" name="password" type="password" value="" runat="server">
                        </div>
                        <div>
                            <asp:Label ID="ErrorMSGlbl" Text="" runat="server" />
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <asp:Button CssClass="btn btn-lg btn-success btn-block" ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" />
                        <%--<a class="btn btn-lg btn-success btn-block" runat="server">Login</a>--%>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

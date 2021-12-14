<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddLocation.aspx.cs" Inherits="Final_Helpdesk_v1.Admin.AddLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">ADD NEW LOCATION</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Location Type creation panel
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>District</label>
                                <%--<input class="form-control" type="text">--%>
                                <asp:DropDownList CssClass="form-control" runat="server" ID="DistrictDropdown" />
                            </div>
                            <div class="form-group">
                                <label>Location Type</label>
                                <asp:DropDownList CssClass="form-control" runat="server" ID="LocationTypeDropdown" />
                            </div>
                            <div class="form-group">
                                <label>Location Name</label>
                                <input class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-primary pull-left" runat="server" />
                                <asp:Button ID="btnSend" Text="Add" CssClass="btn btn-success pull-right" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

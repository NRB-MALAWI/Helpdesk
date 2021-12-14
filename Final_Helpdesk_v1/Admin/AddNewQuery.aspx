<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewQuery.aspx.cs" Inherits="Final_Helpdesk_v1.Admin.AddNewQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">ADD NEW QUERY</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Query Creation Panel
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="form-group">
                                <label>Location Type</label>
                                <asp:DropDownList class="form-control" runat="server" id="locationtypeselects" datatextfield="Location_Type_Name" datavaluefield="Location_Type_id" />
                            </div>
                            <div class="form-group">
                                <label>Location Name</label>
                                <asp:DropDownList class="form-control" runat="server" id="Locationnameseletcs" DataTextField="Location_Name" DataValueField="Location_ID" />
                            </div>
                            <div class="form-group">
                                <label>Date of Entry</label>
                                <input class="form-control" type="date">
                            </div>
                            <div class="form-group">
                                <label>Query Description</label>
                                <input class="form-control">
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-primary pull-left" runat="server" />
                                <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn btn-success pull-right" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

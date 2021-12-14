<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageQueries.aspx.cs" Inherits="Final_Helpdesk_v1.Admin.ManageQueries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">MANAGE QUERIES</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Query List
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="true" />
                                </Columns>
                                <EmptyDataTemplate>
                                    No Data to be Displayed
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                 <div class="panel-heading">
                    Query Details
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Query ID:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Designation:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Location Name:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Date Reported:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Description:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Reported by:</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Status:</label>
                        <input class="form-control">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                 <div class="panel-heading">
                    Query Management
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Query Type:</label>
                                <asp:DropDownList ID="querytypeDropdown" runat="server" CssClass="form-control ">
                                    <asp:ListItem Selected="True" Text="Select Query Type" />
                                    <asp:ListItem Text="NID Network" />
                                    <asp:ListItem Text="eBRS/eDRS Network" />
                                    <asp:ListItem Text="NID System" />
                                    <asp:ListItem Text="eBRS/eDRS System" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Technicans:</label>
                                <asp:DropDownList ID="techniciansDropdown" runat="server" CssClass="form-control" DataTextField="Username" DataValueField="User_id" />
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Notes:</label>
                                <input class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <fieldset style="width: 300px">
                                    <legend><b>Priorities</b></legend>
                                    <asp:RadioButtonList ID="RadPriority" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Value="1">First</asp:ListItem>
                                        <asp:ListItem Value="2">Second</asp:ListItem>
                                        <asp:ListItem Value="3">Third</asp:ListItem>
                                        <asp:ListItem Value="4">Fourth</asp:ListItem>
                                        <asp:ListItem Value="5">Fifth</asp:ListItem>
                                    </asp:RadioButtonList>
                                </fieldset>
                            </div>
                            <div class="form-group">
                                <label>Email Technician</label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">
                                </label>
                            </div>
                                <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-primary pull-left" runat="server" />
                                <asp:Button ID="btnSubmit" Text="Assign Job" CssClass="btn btn-success pull-right" runat="server" />
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <p><center>
                                    <legend>
                                        <asp:Label ID="MSGLabel" runat="server" Text="" />
                                        </legend></center>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>

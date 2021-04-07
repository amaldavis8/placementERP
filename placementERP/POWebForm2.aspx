<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="POWebForm2.aspx.cs" Inherits="placementERP.POWebForm2" MasterPageFile="~/PO Master Page.Master"%>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-11">

                <div class="row">
                    <div class="col-md-3">
                        <label>Company Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="cmpname_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>Year</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="year_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>Session</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="session_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>Levels</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="levels_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                 <br />

                 <div class="row">
                     <div class="col-md-5">
                         </div>
                     <div class="col-md-3">

                         <asp:Button ID="addplcmnt_btn" runat="server" Text="Add Placement" OnClick="addplcmnt_btn_Click" />
                         </div>


                 </div>

            

                 

             </div>
         </div>
     </div>

</asp:Content>

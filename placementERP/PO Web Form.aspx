<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PO Web Form.aspx.cs" Inherits="placementERP.PO_Web_Form" MasterPageFile="~/PO Master Page.Master"%>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-11">

                <div class="row">
                    <div class="col-md-3">
                        <label>Year</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="year_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>Dept.</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="dept_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>CGPA</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="cgpa_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>10th</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="tenth_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <label>12th</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="hs_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>No. of arrears</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="arrearNo_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label>History of arrears</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="arrearHistory_txt" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    

                </div>

                 <div class="row">

                     <div class="col-md-5">
                         </div>
                     <div class="col-md-2">

                         <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />

                         </div>

                 </div>

                 <div class="row">

                     <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                 </div>

             </div>
         </div>
     </div>

</asp:Content>
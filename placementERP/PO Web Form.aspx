<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PO Web Form.aspx.cs" Inherits="placementERP.PO_Web_Form" MasterPageFile="~/PO Master Page.Master"%>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-11">
                
                 <br />

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
                            <asp:DropDownList class="form-control" ID="dept_drop" runat="server">
                                <asp:ListItem Text="CE" Value="CE" />
                                <asp:ListItem Text="CS" Value="CS" />
                                <asp:ListItem Text="EC" Value="EC" />
                                <asp:ListItem Text="EE" Value="EE" />
                                <asp:ListItem Text="ME" Value="ME" />

                            </asp:DropDownList>
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
                            <asp:DropDownList class="form-control" ID="arrearHistory_drop" runat="server">
                                <asp:ListItem Text="Yes" Value="yes" />
                                <asp:ListItem Text="No" Value="no" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    

                </div>
                 <br />

                 
                 <div class="row">

                    <asp:DropDownList class="form-control" ID="drive_drop" runat="server">
                            </asp:DropDownList>

                    </div>


                 <br />
                 <div class="row">

                     <div class="col-md-5">
                         </div>
                     <div class="col-md-2">

                         <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />

                         </div>

                 </div>
                 <br />
                 <div class="row">

                     <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                 </div>

             </div>
         </div>
     </div>

</asp:Content>
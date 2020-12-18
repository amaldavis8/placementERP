<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student WebForm.aspx.cs" Inherits="placementERP.Student_WebForm" MasterPageFile="~/Student Master Page.Master" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <div class="container">

        <!-- Edit & Save Buttons -->
        <div class="row py-5">
            <div class="col-10"></div>
            <div class="col-1">
                <button onclick="undisableField()" type="button" class="btn btn-outline-danger">Edit</button>                
            </div>
            <div class="col-1">
                <asp:Button ID="saveBtn" runat="server" Text="Save" CssClass="btn btn-outline-success" OnClick="saveBtn_Click" />
            </div>
        </div> 

        <div class="row">

            <div class="col-3">
                <!-- Navigation bar tabs are defined here -->
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="true">Personal Details</a>
                    <a class="nav-link" id="v-pills-academics-tab" data-toggle="pill" href="#v-pills-academics" role="tab" aria-controls="v-pills-academics" aria-selected="false">Academic Details</a>
                    <a class="nav-link" id="v-pills-internships-tab" data-toggle="pill" href="#v-pills-internships" role="tab" aria-controls="v-pills-internships" aria-selected="false">My Internships</a>
                </div>
            </div>

            <div class="col-9">
                <div class="container">
                    <fieldset id="myFieldset" disabled>
                        <div class="tab-content" id="v-pills-tabContent">

                            <!-- Profile tab begins -->
                            <div class="tab-pane fade show active" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-11">
                                                <div class="card">
                                                    <div class="card-body">

                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="100px" <img src="images/generaluser.png"> 
                                                                </center>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h4>Your Profile</h4>                           
                                                                </center>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col">
                                                                <hr>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <label>Full Name</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox CssClass="form-control" ID="fullname_txt" runat="server" placeholder="Full Name"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <label>Date of Birth</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox CssClass="form-control" ID="dob_txt" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <label>Contact No</label>
                                                                    <div class="form-group">
                                                                        <asp:TextBox CssClass="form-control" ID="cnt_no_txt" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                                                    </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <label>Email ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox CssClass="form-control" ID="email_txt" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <label>State</label>
                                                                <div class="form-group">
                                                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                                                        <asp:ListItem Text="Select" Value="select" />
                                                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                                        <asp:ListItem Text="Assam" Value="Assam" />
                                                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                        <asp:ListItem Text="Goa" Value="Goa" />
                                                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label>City</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox class="form-control" ID="city_txt" runat="server" placeholder="City"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label>Pincode</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox class="form-control" ID="pin_txt" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col">
                                                                <label>Full Address</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox CssClass="form-control" ID="address_txt" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col">
                                                                <hr>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                                                </center>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <label>User ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox class="form-control" ID="userID" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label>Old Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox class="form-control" ID="oldPSW" runat="server" placeholder="Old Password" TextMode="Password"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label>New Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox class="form-control" ID="newPSW" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!-- password change button -->
                                                        <div class="row">
                                                            <div class="col-md text-center">
                                                                <asp:Button ID="changePSW" runat="server" OnClick="changePSW_Click" Text="Change" class="btn btn-primary btn-sm" />
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-8 mx-auto">
                                                                <center>
                           
                                                                </center>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>            
                                            </div>
                                        </div>
                                    </div>                                  
                            </div>

                            <!-- Academics tab begins -->
                            <div class="tab-pane fade" id="v-pills-academics" role="tabpanel" aria-labelledby="v-pills-academics-tab">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-lg-11">
                                            <div class="card">
                                                <div class="card-body">

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>SSLC Marks Percentage:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="sslc" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>HSE Marks Percentage:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="hse" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>Study Gap:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="studyGap" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>B.Tech Current CGPA:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="cgpa" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>B.Tech Percentage:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="btechPer" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label>No. of Existing Arrears:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="arrears" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>History of Arrears:</label>
                                                            <div class="form-group">
                                                                <asp:TextBox CssClass="form-control" ID="arrearHistory" runat="server"></asp:TextBox> 
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!-- Internships tab begins -->
                            <div class="tab-pane fade" id="v-pills-internships" role="tabpanel" aria-labelledby="v-pills-internships-tab">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-lg-11">
                                            <div class="card">
                                                <div class="card-body">
                                                    . . .
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>                                        
                    </fieldset>
                </div>
            </div>

        </div>
        
    </div>

    <!-- Edit Button's Scripts -->
    <script>

        function undisableField() {
            document.getElementById("myFieldset").disabled = false;
        }

    </script>


</asp:Content>
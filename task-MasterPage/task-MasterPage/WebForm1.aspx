<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_MasterPage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
          
<%--        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">--------------------------------------------%>
                    <div class="divider d-flex align-items-center my-4">
            <h2 class="text-center fw-bold mx-3 mb-0" style="color:#0d6efd;">Sign Up</h2>
          </div>
          
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="txtemail" runat="server" class="form-control form-control-lg"
              placeholder="Enter a valid email address" />
            <label class="form-label" for="form3Example3">Email address</label>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ErrorMessage="write your e-mail" ValidationGroup="signup" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" runat="server" ValidationGroup="signup" ErrorMessage="check your e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
            
          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="txtpass" runat="server" class="form-control form-control-lg"
              placeholder="Enter password" />
            <label class="form-label" for="form3Example4">Password</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtpass"  ForeColor="Red" ValidationGroup="signup" runat="server" ErrorMessage="this field is empty"></asp:RequiredFieldValidator>
          </div>
          <!-- Confirm Password input -->
            <div class="form-outline mb-3">
            <input type="password" id="txtconfirmpass" runat="server" class="form-control form-control-lg"
              placeholder="Confirm password" />
            <label class="form-label" for="form3Example5">Confirm Password</label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ValidationGroup="signup"  ControlToValidate="txtconfirmpass" ErrorMessage="wrong password" ControlToCompare="txtpass"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtconfirmpass" ValidationGroup="signup" ErrorMessage="fill this blank" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

            <!-- Checkbox -->
           
          <asp:Button ID="Signup" ValidationGroup="signup" runat="server" Text="Sign up" OnClick="Signup_Click" />

      </div>
        
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        
<%--          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <h2 class="lead fw-normal mb-0 me-3">Sign in</h2>
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-linkedin-in"></i>
            </button>
          </div>--%>

          <div class="divider d-flex align-items-center my-4">
            <h2 class="text-center fw-bold mx-3 mb-0" style="color:#0d6efd;">Login</h2>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="txtemail2" runat="server" class="form-control form-control-lg"
              placeholder="Enter a valid email address" />
            <label class="form-label" for="form3Example3">Email address</label>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail2" ErrorMessage="write your e-mail" ValidationGroup="loging" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" ControlToValidate="txtemail2" runat="server" ValidationGroup="loging" ErrorMessage="check your e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
            
          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="txtpasslog" runat="server" class="form-control form-control-lg"
              placeholder="Enter password" />
            <label class="form-label" for="form3Example4">Password</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass1" ControlToValidate="txtpasslog" ValidationGroup="loging" runat="server" ErrorMessage="this field is empty"></asp:RequiredFieldValidator>
          </div>

            <!-- Checkbox -->
           
          <asp:Button ID="btnlogin" ValidationGroup="loging" runat="server"  Text="Login" />
         

        
        
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    
    <!-- Right -->
  </div>
</section>
</asp:Content>

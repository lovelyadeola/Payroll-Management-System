<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PayrollManagementSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payroll Management System</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <div class="container-fluid">
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                  <div class="item active">
                    <center><img src="/Images/home.jpg" alt="Vote 1" width="740" height="493"></center>
                  </div>

                  <div class="item">
                    <center><img src="/Images/home1.jpg" alt="Vote 2" width="740" height="493"></center>
                  </div>
    
                  <div class="item">
                    <center><img src="/Images/home2.jpg" alt="Vote 3" width="740" height="493"></center>
                  </div>
  
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
                <br/>
                <div class="jumbotron">
                            <h1>Payroll Management System</h1>
                            <p>This is an payroll management system, used to maintain records of all the users working in an organization,providing an easy GUI to user.</p>
                            <p>Designed & Developed by Sachin.H.Rana &Dhruvin.B.Radadiya</p>
                            <button class="btn btn-info btn-lg" onclick="window.open('about.aspx','_self')">Learn More</button>
                        </div>
    </div>
</asp:Content>
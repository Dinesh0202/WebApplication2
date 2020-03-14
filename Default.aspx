<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <div class="card-header" style=" background-color:dodgerblue"">
            <div class="row">
                <div class="col-md-2" style="margin-block-end:-20px;">
                    <img src="Content/Image/pacific-logo.png" style="height:100px;width:100px; margin-left:60px" />
                </div>
                <div class="col-md-8">
                    <h3 style="text-align:center; color:white; margin-top:-9px">Pacific University</h3>
                    <h5 style="text-align:center; color:white; margin-top:-9px">  A Class Opportunity in AI /Data Science / cloud Computing</h5>
                </div>
            </div>
        </div>
     <div class="container-fluid">

        <div class="row">
            <div class="col-sm-1">
            </div>
            <div class="col-sm-10">
                <br />
                <svg viewBox="0,0,300,10">
                    <text x="" y="5" style="font-size:5px;text-transform:uppercase;" >
       
        <animate attributeName="x" from="300" to="-100" dur="25s" repeatCount="indefinite" >
    </text>
                </svg>
                <br />
                <div class="card border-primary mb-3" style="max-width: 100%">
                    <div class="card-header">
                       <%-- <h3>HOW TO Register ?</h3>--%>
                    </div>
                    <div class="card-body">                        
                        <p style="font-size: large"><b>New Age Industry Inspired B. Tech Programs</b></p>
                        <br />
                        <ul style="text-align:justify">
                        <li style="font-size: large">As per Forbes report, Artificial Intelligence to create 58 Million New Jobs By 2022.</li>
                        <br />
                        <li style="font-size: large">By 2020, insights-driven businesses will steal $1.2 trillion per annum from their less-informed peers. Forrester Predictions 2017: Artificial Intelligence will drive the Insights Revolution. NASSCOM says by 2020, the artificial intelligence market will surpass $60 billion. Here are some of the roles an AI professional can look forward to in major organizations.</li>
                           <br />
                        <li style="font-size: large">Government of India has appointed a task force planning to boost the AI sector in India, for developing AI technologies and infrastructure, to data usage and research to work with the private sector to develop technologies, with a focus on smart cities, power and water infrastructure, crop management to fighting terrorism, there's a plan to deploy AI in 10 sectors in India.</li>
                           <br />
                        </ul>
                        <br/>
                        <p>Here are some of the roles an AI professional can look forward to in major organizations.</p>
                        <br />
                        <ul style="text-align:justify">
                            <li>Data Engineer</li>
                            <li>Research Scientist</li>
                            <li>Natural Language Processing Scientist</li>
                            <li>Machine Learning developer</li>
                            <li>Automation and Optimization Engineer</li>
                            <li>Game developer</li>
                        </ul>
                         <br/>
                        
                        <p style="font-size: large">
                           <b>Come and meet the Industry Experts on Career Opportunities in Artificial Intelligence, Data Science & Analytics and upcoming technologies.</b> 
                        </p>
                        <br />
                        <p style="font-size:large"><b>Time: 11:00 AM to 1:00 PM</b></p>
                        <p style="font-size: large">
                            <b>Pacific University</b><br />
                            Pacific Hills, Pratap Nagar Extn., Near Transport Nagar,Airport Road, Debari, Udaipur - 313003,<br />
                            Phone : +91-294 - 3065000,<br />
                            Mobile : +91 9672970940,7665017854<br />
                        </p>
                        <br />
                        <br />
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <asp:Button ID="Button1" runat="server" Text="Click To Register" CssClass="btn-danger" Width="100%" Height="48px" Font-Size="Large" OnClick="Button1_Click"  />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1">
            </div>
        </div>

    </div>
    <div class="card-footer">
            <p style="text-align:center">© 2020 Copyright: Pacific University IT Team</p>
        </div>
        </form>
</body>
</html>

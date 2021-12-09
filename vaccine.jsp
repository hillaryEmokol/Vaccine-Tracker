<%-- 
    Document   : vaccine
    Created on : Dec 6, 2021, 5:18:04 AM
    Author     : Mujuni Simon Peter
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.health.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/tlds/database" prefix="database"%>
           <% String vaccine = request.getParameter("vaccine"); %>
           <% String batchno = request.getParameter("batchno"); %>
           <% String expdate = request.getParameter("expdate"); %>
           <database:insertintotablevaccine
               table="vaccines" values="<%=vaccine + ','+batchno + ','+expdate  %>">
           </database:insertintotablevaccine>
<!DOCTYPE html>
<html>
	<head>
		<title>C-19 Vaccine Tracker | Home </title>
		<link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="assets/css/responsiveslides.css">
                <link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
                <script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
		<!--start-wrap-->
		
			<!--start-header-->
			<div class="header">
				<div class="wrap">
				<!--start-logo-->
				<div class="logo">
                                    <a href="index.jsp"><img src="assets/images/logotracker.jpg" title="logo"></a>
				</div>
				<!--end-logo-->
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="administration.jsp">Vaccine Administration</a></li>
						<li><a href="booking.jsp">Booking</a></li>
						<li><a href="vaccine.jsp">Vaccination Inventory</a></li>
						<li><a href="health.jsp">Health Centers</a></li>
                                                <li><a href="sysadministration.jsp">System Administration</a></li>
					</ul>					
				</div>
				<div class="clear"> </div>
				<!--end-top-nav-->
			</div>
			<!--end-header-->
		</div>
                        
             <%
         DBConnect Conn = new DBConnect();
         Connection newConn  = Conn.getConnection();
         Statement St = newConn.createStatement();
        %>
        <%
          String []vaccines;
          ResultSet vaccineslist  =St.executeQuery("select * from vaccine ");
          while(vaccineslist.next()){
              //healthCentres [centres.getString("healthCenterName")];
          } 
        %>            
                        
                        
		<div class="clear"> </div>
                    <!--two column section---->
		    <div class="clear"> </div>
		    <div class="content-grids">
		    	<div class="wrap">
		    	<div class="section group ">				
				<div class="listview_1_of_2 images_1_of_2" style="margin-right: 45px;">
                                    <div>
                                        <!-- registration form -->
                                        <div style="font-size: larger; text-align: center; margin: 24px 0 12px 0; font-weight: 500;">
                                                <h1>VACCINE REGISTRATION</h1>
                                            </div>
                                        <form action="Inventory" method="post" style="border: 3px solid #f1f1f1;">
                                            
                                           <div style="padding: 20px 70px 20px 70px;">
                                               <div style="background-color:#f1f1f1; ">
                                                    <label for="vaccine"><b>Vaccine Type:</b</label>
                                                    <br>
                                                       <select name="vaccine">
                                                         <option value="Pfizer">Pfizer-BioNTech</option>
                                                         <option value="Moderna">Moderna</option>
                                                         <option value="Janssen">Johnson & Johnson’s Janssen</option>
                                                         <option value="Astrazeneca">Astrazeneca</option>
                                                       </select>
                                                    </br>
                                                    </br>
                                                    <label for="batchno"><b>Batch Number</b></label>
                                                    </br>
                                                    <input type="text" placeholder="Enter Batch Number" name="batchno" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                                                    </br>
                                                    </br>
                                                    <label for="expdate"><b>Expiry Date</b></label>
                                                    </br>
                                                    <input type="text" placeholder="Enter Expiration Date" name="expdate" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                                                    </br>
                                                    </br>
                                                    <button type="submit"
                                                    style="
                                                       border-radius: 5px;
                                                       background-color: #3285d1;
                                                       color: white;
                                                       padding: 14px 20px;
                                                       margin: auto;
                                                       border: none;
                                                       cursor: pointer;
                                                       width: 50%;">        
                                                    Register</button>
                                                    </br>
                                                    </br>
                                               </div>
                                           </div>
                                         </form>
                                    </div>
				</div>
                                <div class="listview_1_of_2 images_1_of_2" >
                                    <div>
                                        <!-- table -->
                                        <div class="container " style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
                                            <div style="text-align: center; ">
                                                <div>
                                                    <h2 style="font-size:40px; color: #333; margin-bottom: 30px;">Distribution Status</h2>
                                                </div>
                                            </div>
                                             <table id="myTable" class="responsive-table"> 
                                                 <tr>
                                                   <th>Health Center</th>
                                                   <th>Number of Vaccines</th>
                                                 </tr>
                                                 <tr>
                                                   <td>Alfreds Futterkiste</td>
                                                   <td>Maria Anders</td>
                                                 </tr>
                                             </table>
                                           </div>
                                    </div>
				</div>
			</div>
		    </div>
		   </div>
                
		   <div class="clear"> </div>
                   
                   <!-- authentication of users -->
                   
                   <div class="container wrap" style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
                       <div style="text-align: center; ">
                           <div>
                               <h2 style="font-size:40px; color: #333; margin-bottom: 10px;">Inventory Status</h2>
                           </div>
                           <div style="max-width: 1150px;">
                               <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for vaccine.." title="Type in a name">
                           </div>
                       </div>
                        <table id="myTable" class="responsive-table"> 
                            <tr>
                              <th>Name of Vaccine</th>
                              <th>Batch Number</th>
                              <th>Expiry Date</th>
                            </tr>
                            <tr>
                              <td>Astrazeneca</td>
                              <td>12032021</td>
                              <td>03/07/2022</td>
                            </tr>
                        </table>
                      </div>
                  
                   <!-- footer -->
                   <div class="footer" style="margin-top: 0px;">
		   	 <div class="wrap">
		   	<div class="footer-left">
                            <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Vaccine Administration</a></li>
                                    <li><a href="#">Booking</a></li>
                                    <li><a href="#">Vaccination</a></li>
                                    <li><a href="#">Health</a></li>
                                    <li><a href="#">System Administration</a></li>
                            </ul>
		   	</div>   
		   	<div class="footer-right">
		   		<p>&copy; 2021 COVID-19 VACCINE TRACKER. All Rights Reserved | Design by <a href="#">GROUP</a></p>
		   	</div>
		   	<div class="clear"> </div>
		   </div>
		   </div>
		<!--end-wrap-->
	</body>  
        <script type="text/javascript">
            <script>
            function myFunction() {
              var input, filter, table, tr, td, i, txtValue;
              input = document.getElementById("myInput");
              filter = input.value.toUpperCase();
              table = document.getElementById("myTable");
              tr = table.getElementsByTagName("tr");
              for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                  txtValue = td.textContent || td.innerText;
                  if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                  } else {
                    tr[i].style.display = "none";
                  }
                }       
              }
            }
        </script>
        <script>
        function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("myTable");
          tr = table.getElementsByTagName("tr");
          for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
              txtValue = td.textContent || td.innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
              } else {
                tr[i].style.display = "none";
              }
            }       
          }
        }
        </script>
</html>


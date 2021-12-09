<%-- 
    Document   : booking
    Created on : Dec 6, 2021, 5:17:11 AM
    Author     : joshmyles
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.health.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "/WEB-INF/tlds/database" prefix="database" %>
        <% String name = request.getParameter("name"); %>
        <% String healthcenter = request.getParameter("healthcenter"); %>
        <% String dateadmin = request.getParameter("dateadmin"); %>
        <% String vaccine = request.getParameter("vaccine"); %>
        <database:insertintotablebooking
            table="booking" values="<%=name +','+healthcenter +','+dateadmin +','+vaccine %>">

         </database:insertintotablebooking>
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
          String []booking;
          ResultSet bookinglist  =St.executeQuery("select * from booking ");
          while(bookinglist.next()){
              //healthCentres [centres.getString("healthCenterName")];
          } 
        %> 
                        
		<div class="clear"> </div>
                    <!--two column section---->
		    <div class="clear"> </div>
		    <div class="content-grids">
		    	<div class="wrap">
		    	<div class="section group ">
                            <div class="listview_1_of_2 images_1_of_2" style="margin-right: 20px;">
                                    <div>
                                        <!-- advisory section -->
                                        <div class="span_1_of_3 frist" style="width: 100%"></br>
                                            <h3 style="text-align: center;">Did You Know?</h3></br>
                                            <span style="font-size: 1em; text-decoration: underline;">
                                                Approved or Authorized Vaccines</br>
                                            </span>
                                            <p style="font-size: 1em;">
                                                Below are the vaccines that are approved or authorized in Uganda to prevent COVID-19:

Pfizer-BioNTech, Moderna, Johnson & Johnson’s Janssen, Astrazeneca</br></br>
                                                Different COVID-19 Vaccines

COVID-19 vaccines are now widely available for people ages 5 years and older. In most cases, you do not need an appointment. Learn how to find a COVID-19 vaccine so you can get vaccinated as soon as possible.

</br></br>All currently approved or authorized COVID-19 vaccines are safe and effective and reduce your risk of severe illness. CDC does not recommend one vaccine over another.

                                            </p></br>
                                            <a href="#">Readmore</a>
                                        </div>
                                    </div>
				</div>				
				<div class="listview_1_of_2 images_1_of_2">
                                    <div>
                                        <!-- registration form -->
                                        <form action="bookings" method="post" style="border: 3px solid #f1f1f1;">
                                            <div style="text-align: center; margin: 24px 0 12px 0;">
                                                <h1 style="font-size: larger; font-weight: 500;">PICK A DATE FOR VACCINATION</h1>
                                            </div>
                                           <div style="padding: 20px 70px 20px 70px;">
                                               <div style="background-color:#f1f1f1; "> 
                                                    <label for="name"><b>Name</b></label>
                                                    </br>
                                                    <input type="text" placeholder="Enter Name" name="name" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                                                    </br>
                                                    </br>
                                                    <label for="healthcenter"><b>Health Center:</b</label>
                                                    <br>
                                                       <select name="healthcenter">
                                                         <option value="kampala">Mulago-Kampala</option>
                                                         <option value="gulu">Mulago-Gulu</option>
                                                         <option value="mbarara">Mulago-Mbarara</option>
                                                         <option value="arua">Mulago-Arua</option>
                                                         <option value="mbale">Mulago-Mbale</option>
                                                       </select>
                                                    </br>
                                                    </br>
                                                    <label for="dateadmin"><b>Date of Vaccination</b></label>
                                                    </br>
                                                    <input type="date"  name="dateadmin" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                                                    </br>
                                                    </br>
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
                                                    Book</button>
                                                    </br>
                                                    </br>
                                               </div>
                                           </div>
                                         </form>
                                    </div>
				</div>							
			</div>
		    </div>
		   </div>
                
		   <div class="clear"> </div>
                   
                   <!-- table for vaccines -->
                   
                   <div class="container wrap" style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
                       <div style="text-align: center; ">
                           <div>
                               <h2 style="font-size:40px; color: #333; margin-bottom: 10px;">Available Vaccines</h2>
                           </div>
                           <div style="max-width: 1150px;">
                               <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for vaccine.." title="Type in a name" name="b">
                           </div>
                       </div>
                        <table id="myTable" class="responsive-table"> 
                            <tr>
                              <th>Vaccine Type</th>
                              <th>Number of Recommended Doses</th>
                              <th>Recommended age</th>
                              <th>Summary on each Vaccine</th>
                              <th>Full Vaccination</th>
                            </tr>
                            <tr>
                              <td>Pfizer-BioNTech</td>
                              <td>2 doses
Given 3 weeks (21 days) apart</td>
                              <td>5+ years old</td>
                              <td>

Booster Dose
Everyone ages 18 years and older is eligible at least 6 months after the last dose in their primary series. Any of the three COVID-19 vaccines can be used for the booster dose.
</td>
                            <td>2 weeks after 2nd dose </td>
                            </tr>
                            <tr>
                              <td>Moderna</td>
                              <td>2 doses
Given 4 weeks (28 days) apart</td>
                              <td>18+ years old</td>
                              <td>

Booster Dose
Everyone ages 18 years and older is eligible at least 6 months after the last dose in their primary series. Any of the three COVID-19 vaccines can be used for the booster dose.
</td>
                            <td>2 weeks after 2nd dose </td>
                            </tr>
                            <tr>
                              <td>Johnson & Johnson’s Janssen</td>
                              <td>1 dose</td>
                              <td>18+ years old</td>
                              <td>

Booster Dose
At least 2 months after the first dose for all people ages 18 years and older. Any of the three COVID-19 vaccines can be used for the booster dose.
</td>
                            <td>2 weeks after 1st dose </td>
                            </tr>
                            <tr>
                              <td>Astrazeneca</td>
                              <td>2 doses
Given 4 weeks (28 days) apart</td>
                              <td>18+ years old</td>
                              <td>

Booster Dose
Everyone ages 18 years and older is eligible at least 6 months after the last dose in their primary series. Any of the three COVID-19 vaccines can be used for the booster dose.
</td>
                            <td>2 weeks after 2nd dose </td>
                            </tr>
                        </table>
                      </div>
                   
                   <!-- more advisory -->
                   <div class="about" style="padding: 40px 0 40px 0; max-height: 600px; text-align:center; margin-top: 30px; background-color: #3285d1;">
		   		<h4 style="color: white;">GENERAL REPORTS</h4>
                   </div>
                   <div class="wrap">
		   <div class="content-box">
		   <div class="section group">
				<div class="col_1_of_3 span_1_of_3 frist">
					<h3>Should you get vaccinated?</h3>
					<img src="assets/images/pic1.jpeg" />
                                        <span>
                                            Who Should Get Vaccinated</br>

    The Pfizer-BioNTech vaccine is recommended for people ages 5 years and older.
    Learn more about how the Centers for Disease Control and Prevention (CDC) is making COVID-19 vaccine recommendations.


                                        </span></br></br>
                                        <p>
                                            Who Should NOT Get Vaccinated</br>

    If you have had a severe allergic reaction to any ingredient in the Pfizer-BioNTech COVID-19 vaccine (such as polyethylene glycol), you should not get this vaccine.
    If you had a severe allergic reaction after getting a dose of the Pfizer-BioNTech COVID-19 vaccine, you should not get another dose of an mRNA vaccine.
    A severe allergic reaction can cause a rapid heartbeat, difficulty breathing, swelling of the throat, or a generalized rash or hives. A person with a severe allergic reaction needs to be treated with epinephrine (often given as an EpiPen®) and should seek immediate medical attention.

If you aren’t able to get this vaccine, you may still be able to get a different type of COVID-19 vaccine. Get more information for people with allergies.

                                        </p>
					<a href="#">Readmore</a>
				</div>
				<div class="col_1_of_3 span_1_of_3 second">
					<h3>Recommendations</h3>
                                        <span>
                                             If you had a severe allergic reaction after a previous dose or if you have a known (diagnosed) allergy to a COVID-19 vaccine ingredient, you should not get that vaccine. If you have been instructed not to get one type of COVID-19 vaccine, you may still be able to get another type. Learn more information for people with allergies.

2 You should get your second shot as close to the recommended 3-week or 4-week interval as possible.
                                        </span></br></br>
                                        <p>
                                            Additional Recommendations for Immunocompromised People

Additional primary dose: Moderately to severely immunocompromised people who are 12 years and older and received a Pfizer-BioNTech primary series or 18 years and older and received a Moderna primary series should receive an additional primary dose of the same vaccine at least 28 days after their second dose.

Booster dose:  Moderately to severely immunocompromised people who are 18 years of age and older and received a Pfizer-BioNTech or Moderna primary series are also eligible for a booster dose at least 6 months after their additional primary dose, using any of the three COVID-19 vaccines.

Immunocompromised people who received a J&J/Janssen vaccine are not recommended to receive an additional primary dose, but should receive a booster dose at least 2 months after their initial dose, using any of the three COVID-19 vaccines.

                                        </p>
					<ul>
						<li><a href="#"><img src="assets/images/arrow.png">Report on Vaccine Distribution</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report on Number of COVID case Recoveries</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report on Number of Patient visits in Health Centers</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report on Studies of the Effects of Vaccines</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report for 2019</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report for 2020</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Report for 2021</a></li>
						<li><a href="#"><img src="assets/images/arrow.png">Global Report on Vaccination</a></li>
					</ul>
				</div>
				<div class="col_1_of_3 span_1_of_3 frist">
					<h3>Clinical Results & Side Effects</h3>
					<img src="assets/images/pic2.jpg" />
                                        <span>
                                            Safety Data Summary

    Side effects that happen within 7 days of getting vaccinated are common but are mostly mild. Some people have side effects that affect their ability to do daily activities.
    Side effects (such as fever, chills, tiredness, and headache) throughout the body are more common after the second dose of the vaccine.
    Rare cases of myocarditis and pericarditis in adolescents and young adults have been reported more often after getting the second dose than after the first dose of one of the two mRNA COVID-19 vaccines (Pfizer-BioNTech or Moderna). These reports are rare and the known and potential benefits of COVID-19 vaccination outweigh the known and potential risks, including the possible risk of myocarditis or pericarditis.
    All FDA-approved or authorized COVID-19 vaccines have undergone and will continue to undergo the most intensive safety monitoring in Uganda history. This monitoring includes using both established and new safety monitoring systemspdf icon to make sure that COVID-19 vaccines are safe.

Learn more about vaccine safety monitoring after a vaccine is authorized or approved for use.

                                        </span> <br /><br />
					<img src="assets/images/pic3.png" />
                                        <span>
                                            How Well the Vaccine Works

    Based on evidence from clinical trials in people ages 16 years and older, the Pfizer-BioNTech (COMIRNATY) vaccine was 95% effective at preventing laboratory-confirmed infection with the virus that causes COVID-19 in people who received two doses and had no evidence of being previously infected.
    In clinical trials, the Pfizer-BioNTech vaccine had >90% efficacy in preventing laboratory-confirmed COVID-19 infection in children ages 5–15 years, and the immune response in children ages 5–15 years was at least as strong as the immune response in people ages 16–25 years.
    In clinical trials, the vaccine also had >90% efficacy in preventing COVID-19 among people of diverse age, sex, race, and ethnicity categories and among people with underlying medical conditions.
    Evidence shows mRNA COVID-19 vaccines offer similar protection in real-world conditionsas they have in clinical trial settings―reducing the risk of COVID-19, including severe illness, by 90% or more among people who are fully vaccinated.
    CDC will continue to provide updates as we learn more.

                                        </span>
				</div>
			</div>
		   </div>
		   </div>
		   </div>
                   
                   <!-- comment -->
                   
                   
                   
                  
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
            };
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

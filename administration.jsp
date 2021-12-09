 <%-- 
    Document   : administration
    Created on : Dec 6, 2021, 5:17:42 AM
    Author     : Etyang Simon Peter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <script src="https://cdn.anychart.com/releases/8.0.0/js/anychart-base.min.js"></script>
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
		<div class="clear"> </div>
                    <!--two column section---->
		    <div class="clear"> </div>
		    <div class="content-grids" style="padding: 40px 0 40px 0;">
		    	<div class="wrap">
		    	<div class="section group ">
                            <div class="listview_1_of_2 images_1_of_2" style="margin-right: 20px;">
                                    <div>
                                        <!-- advisory section -->
                                        <div class="span_1_of_3 frist" style="width: 100%"></br>
                                            <canvas id="myChart" style="width:100%;max-width:600px">
                                                
                                            </canvas>
                                        </div>
                                    </div>
				</div>				
				<div class="listview_1_of_2 images_1_of_2">
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
                                                   <th>Data</th>
                                                   <th>Number of People</th>
                                                 </tr>
                                                 <tr>
                                                   <td>Target</td>
                                                   <td>4,000,000</td>
                                                 </tr>
                                                 <tr>
                                                   <td>People Vaccinated</td>
                                                   <td>2,358,983</td>
                                                 </tr>
                                             </table>
                                           </div>
                                    </div>
				</div>							
			</div>
		    </div>
		   </div>
                
		   <div class="clear"> </div>
                   
                   
                   <!-- chart for vaccinated in months -->
                   <div class="clear"> </div>
		    <div style="padding: 40px 0 40px 0;">
		    	<div class="wrap">
		    	<div class="section group ">
                            <div >
                                <canvas id="myChart2" style="width:100%;max-width:1000px; max-height: 400px; margin: auto;"></canvas>
                            </div>
                        </div>
                        </div>
                    </div>
                   
                   <!-- table for vaccinated -->
                   
                   <div class="container wrap" style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
                       <div style="text-align: center; ">
                           <div>
                               <h2 style="font-size:40px; color: #333; margin-bottom: 10px;">Search Registered User for Authentication</h2>
                           </div>
                           <div style="max-width: 1150px;">
                               <input type="text" id="myInput" onkeyup="myFunction()" name="dj"  placeholder="Search for names.." title="Type in a name">
                           </div>
                       </div>
                        <table id="myTable" class="responsive-table"> 
                            <tr>
                              <th>NIN</th>
                              <th>Name</th>
                              <th>Health Center</th>
                              <th>Date of Administration</th>
                              <th>Batch Number</th>
                              <th>Vaccine Administered</th>
                              <th>Date of Registration</th>
                              <th>Next Date of Vaccination</th>
                              <th>Period Between doses</th>
                              <th>Print</th>
                            </tr>
                            <tr>
                              <td>Alfreds Futterkiste</td>
                              <td>Maria Anders</td>
                              <td>Germany</td>
                              <td>Alfreds Futterkiste</td>
                              <td>Maria Anders</td>
                              <td>Germany</td>
                              <td>Alfreds Futterkiste</td>
                              <td>Maria Anders</td>
                              <td>Germany</td>
                              <td><a href="Certificates.jsp">Print</a></td>
                            </tr>
                        </table>
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
 
 <!-- barchart -->    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>        
        <script>
            var xValues = ["Kampala", "Mbale", "Gulu", "Mbarara", "Arua"];
            var yValues = [902000, 359000, 244000, 624000, 777500];
            var barColors = ["#3285d1","#3285d1","#3285d1","#3285d1", "#3285d1"];

            new Chart("myChart2", {
              type: "bar",
              data: {
                labels: xValues,
                datasets: [{
                  backgroundColor: barColors,
                  data: yValues
                }]
              },
              options: {
                legend: {display:false},
                title: {
                  display: true,
                  text: "Summary Report of Vaccination Campaign Country Wide"
                }
              }
            });
            </script>

                 <!-- doughnutchart -->  
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <script>
            var xValues = ["Kampala", "Mbale", "Gulu", "Mbarara", "Arua"];
            var yValues = [55, 49, 44, 24, 15];
            var barColors = [
              "#b91d47",
              "#00aba9",
              "#2b5797",
              "#e8c3b9",
              "#1e7145"
            ];

            new Chart("myChart", {
              type: "doughnut",
              data: {
                labels: xValues,
                datasets: [{
                  backgroundColor: barColors,
                  data: yValues
                }]
              },
              options: {
                title: {
                  display: true,
                  text: "Country Wide Vaccination"
                }
              }
            });
            </script>
                
         
</html>


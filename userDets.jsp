<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<script src="userDetails.js"></script>
<link rel="stylesheet" href="userDetails.css">
</head>
<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx:bx-user-circle'></i>
			<div class="logo_name">Admin</div>
			<i class='bx bx-menu' id="btn"></i>
		</div>
		<ul class="nav-list">

			<li><a href="home.jsp"> <i class='bx bx-home'></i> <span
					class="links_name">Home</span>
			</a> <span class="tooltip">Home</span></li>
			<li><a href="admin?action=managerDets"> <i class='bx bx-user'></i>
					<span class="links_name">Manager list</span>
			</a> <span class="tooltip">Manager List</span></li>
			<li><a href="admin?action=userDets"> <i class='bx bx-task'></i> <span
					class="links_name">User Logs</span>
			</a> <span class="tooltip">User Log</span></li>
			<li><a href="admin?action=sportsDets"> <i
					class='bx bx-pie-chart-alt-2'></i> <span class="links_name">Sports</span>
			</a> <span class="tooltip">Sports</span></li>
			<li>
			<li class="profile"> <a href="user?action=logout"><i class='bx bx-log-out' id="log_out"></i></a></li>
		</ul>
	</div>

	<script>
      
      let sidebar = document.querySelector(".sidebar");
        let closeBtn = document.querySelector("#btn");
        let searchBtn = document.querySelector(".bx-search");
      
        closeBtn.addEventListener("click", ()=>{
          sidebar.classList.toggle("open");
          menuBtnChange();//calling the function(optional)
        });
      
        searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
          sidebar.classList.toggle("open");
          menuBtnChange(); //calling the function(optional)
        });
      
        // following are the code to change sidebar button(optional)
        function menuBtnChange() {
         if(sidebar.classList.contains("open")){
           closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
         }else {
           closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
         }
        }
        </script>
	<section style="background-color: #22303C;" class="home-section">
		<div class="center">

			<div class="container-lg">
				<div class="table-responsive">
					<div class="table-wrapper">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-8">
									<h2>
										<b> User Details</b>
									</h2>
								</div>
							</div>
						</div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>User Name</th>
									<th>Sport Name</th>
									<th>Batch Name</th>
									<th>Timming</th>
									<th>Days</th>
									<th>Enrolled Status</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="itr" items="${requestScope.enrolledList}">
									<tr>
										<td>${itr.userId.name}</td>
										<td>${itr.sportsId.sportsName}</td>
										<td>${itr.batchId.batchName}</td>
										<td>${itr.batchId.timing}</td>

										<td>${itr.batchId.days}</td>
										<c:choose>
											<c:when test="${itr.membershipStatus  eq 2}">

												<td>REJECTED</td>
											</c:when>
											<c:when test="${itr.membershipStatus eq 1}">

												<td>ENROLLED</td>
											</c:when>
											<c:when test="${itr.membershipStatus  eq 0}">

												<td>PENDING</td>
											</c:when>
										

										</c:choose>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="center">
			<div class="container-lg">
				<div class="table-responsive">
					<div class="table-wrapper">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-8">
									<h2>
										<b>Membership Details</b>
									</h2>
								</div>
							</div>
						</div>
						<table class="table table-bordered">
							<thead>

								<tr>
									<th>User Name</th>

									<th>Membership Type</th>
									<th>Start date</th>
									<th>End Date</th>

								</tr>
							</thead>
							<tbody>

								<sql:setDataSource var="myDb" driver="com.mysql.cj.jdbc.Driver"

									url="jdbc:mysql://localhost:3306/deccanSports" user="cybage"
									password="cybage123" />


								<sql:query dataSource="${myDb}" var="mem">
								select m.membershipId,m.membershipType,m.startDate,m.endDate,u.name from  Membership m inner join user u on u.userId=m.userId;

								</sql:query>
								<c:forEach var="mtr" items="${mem.rows}">

									<tr>
										<th>${mtr.name}</th>
										<th>${mtr.membershipType}</th>
										<th>${mtr.startDate}</th>
										<th>${mtr.endDate}</th>
									</tr>

								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports list</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
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
<script src="AddSport.js"></script>
<link rel="stylesheet" href="ManagerTable.css">
</head>
<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx :bx-user-circle'></i>
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
			<li><a href="admin?action=userDets"> <i class='bx bx-task'></i>
					<span class="links_name">User Logs</span>
			</a> <span class="tooltip">User Log</span></li>
			<li><a href="admin?action=sportsDets"> <i
					class='bx bx-pie-chart-alt-2'></i> <span class="links_name">Sports</span>
			</a> <span class="tooltip">Sports</span></li>
			<li>
			<li class="profile">
			<a href="user?action=logout">
			<i class='bx bx-log-out' id="log_out"></i>
			</a>
			</li>
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
										<b>Sport Details</b>
									</h2>
								</div>
								<div class="col-sm-4">
									
									<button type="button" class="btn btn-info add-new">
									<a style="color:white" href="admin?action=sportsReg">	<i class="fa fa-plus"></i> Add New</a>
									</button>
								</div>
							</div>
						</div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Upload Image</th>
									<th>Sport Name</th>
									<th>Manager Assigned</th>
									<th>Catagory</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="itr" items="${requestScope.sports}">
								<tr>
								
									<th class="img"><img src="${pageContext.request.contextPath}/resources/images/4${itr.imagePath}"  width="100%"></th>
									<td>${itr.sportsName}</td>
									<td>${itr.managerId.name}</td>
									<td style="display:none" >${itr.sportsId}</td>
									<th>${itr.sportsCategory}</th>
									<td><a class="add" title="Add" data-toggle="tooltip"><i
											class="material-icons">&#xE03B;</i></a> <a class="edit"
										title="Edit" data-toggle="tooltip"><i
											class="material-icons">&#xE254;</i></a> <a class="delete" href="admin?action=sportRemove&sportId=${itr.sportsId}"
										title="Delete"><i class="material-icons">&#xE872;</i></a></td>
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
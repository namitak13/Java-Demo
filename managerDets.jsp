<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager list</title>
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
<script src="ManagerTable.js"></script>
<link rel="stylesheet" href="ManagerTable.css">
<script>

</script>
</head>
<body  >

	<div class="sidebar">
		<div class="logo-details">
			<i class='bx: bx-user-circle'></i>
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
			
			<li class="profile">
			<a href="user?action=logout"><i class='bx bx-log-out' id="log_out"></i>
			</a>
			</li>
		</ul>
	</div>


	<section style="background-color: #22303C;" class="home-section">
		<div class="center">


			<div class="container-lg">
				<div class="table-responsive">
					<div class="table-wrapper">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-8">
									<h2>
									<b>	Manager Details</b>
									</h2>
								</div>
								<div class="col-sm-4">
									<button type="button" class="btn btn-info add-new">
									<a style="color:white" href="admin?action=managerReg">	<i class="fa fa-plus"></i> Add New</a>
									</button>
								</div>
							</div>
						</div>
						<table class="table table-bordered text-center">
							<thead>
								<tr>
									<th>Manager Name</th>
									<th>Sport Name</th>
									<th>Hiredate</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="itr" items="${requestScope.managers}">
								<tr>
									<td >${itr.name}</td>
									<td >${itr.sportsName}</td>
									<th >${itr.timeStamp}</th>
									<td style="display:none" >${itr.userId}</td>
									<td><a class="add" title="add" data-toggle="tooltip"><i
											class="material-icons">&#xE03B;</i></a> <a  class="edit"
										title="Edit" data-toggle="tooltip"><i
											class="material-icons">&#xE254;</i></a> <a class="delete" href="admin?action=managerRemove&managerId=${itr.userId}"
										title="Delete"><i class="material-icons">&#xE872;</i></a>
										
										</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
        let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");
  
    closeBtn.addEventListener("click", ()=>{
      sidebar.classList.toggle("open");
      menuBtnChange();//calling the function(optional)
    });
  
    searchBtn.addEventListener("click", ()=>{ 
      sidebar.classList.toggle("open");
      menuBtnChange(); 
    });
  
    // following are the code to change sidebar button(optional)
    function menuBtnChange() {
     if(sidebar.classList.contains("open")){
       closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");
     }else {
       closeBtn.classList.replace("bx-menu-alt-right","bx-menu");
     }
    }



</script>
</body>
</html>
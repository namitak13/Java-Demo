<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><meta charset="ISO-8859-1">
 <meta charset='UTF-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <script src=https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<title>Insert title here</title>
    <style>


       
.topnav {
  overflow: hidden;
  background-color: #111;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}


.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav-right {
  float: left;
}
    </style>
 </head>
<body>


    <div class="topnav">
        <div class="topnav-right">
            <a><h4 style="color: white"><b><i>Deccan Sports Club</i></b></h4></a>
            <a href="#">Home</a> 
          <a href="#">Search</a>
          <a href="#">Logout</a>
        </div>
      </div>
 
    <div class="container-fluid">   
        <div class="content">
            <div class="row">
         

                <div class="col-sm-12">
                    <br>
        
                    <table class="table">
                        <thead class="thead-dark">
                        
                          <tr>
                            <th scope="col">Sport Name</th>
                            <th scope="col">Batch Fees</th>
                            <th scope="col">Start Time</th>
                             <th scope="col">Start End</th>
                             <th scope="col">Start Date</th>
                              <th scope="col">Enrollment</th>
                          </tr>
                        </thead>
                        <tbody>
                         
                          <tr>
                          <c:forEach var="batch" items="${list}">
                            <td><c:out value="${batch.batch_id }"></c:out></td>
						<td><c:out value="${batch.batch_fees }"></c:out></td>
						<td><c:out value="${batch.start_time }"></c:out></td>
						<td><c:out value="${batch.end_time }"></c:out></td>
						<td><a href="viewEnrollment.jsp">View Enrollment</a></td>
                            </c:forEach>
                          </tr>  
                        </tbody>
                      </table>
                </div>
            </div>
         </div>
    </div>
</body>
</html>
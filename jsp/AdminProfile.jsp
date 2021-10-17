<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

        .sidenav {
            height: 100%;
            width: 200px;
            position: fixed;
            top: 1;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidenav a  {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 20px;
            color: white;
            display: block;
            border: none;
            background: none;
            width: 100%;
            text-align: left;
            cursor: pointer;
            outline: none;
        }

        .sidenav a:hover{
            color: #f1f1f1;
        }
 

    </style>
    
   
    
</head>
<body>

 
    <div class="container-fluid">   
        <div class="content">
            <div class="row">
                <div class="col-sm-2">
                    <div class="sidenav">
                       
                        <br><br><br>
                        <h2><a href="#" >User</a></h2>
                        <h2><a href="#" >Manager</a></h2>
                    </div>
                </div>

                <div class="col-sm-9">
                    <br>
        
                    <table class="table">
                        <thead class="thead-dark">
                        <h2>Enroll Logs</h2>
                          <tr>
                          <th scope="col">Username</th>
                            <th scope="col">Sport Name</th>
                            <th scope="col">Batch Fees</th>
                            <th scope="col">Start Time</th>
                             <th scope="col">Start End</th>
                             <th scope="col">Start Date</th>
                              <th scope="col">Status</th>
                          </tr>
                        </thead>
                        <tbody>
                         
                          <tr>
                          <c:forEach var="batch" items="${list}">
                            <td><c:out value="${batch.batch_id }"></c:out></td>
						<td><c:out value="${batch.batch_fees }"></c:out></td>
						<td><c:out value="${batch.start_time }"></c:out></td>
						<td><c:out value="${batch.end_time }"></c:out></td>
						<td><c:out value="${batch.start_date }"></c:out></td>
                            </c:forEach>
                          </tr>  
                        </tbody>
                      </table>
                      
                      
                      
                        <div class="col-sm-6">
                      <table class="table">
                        <thead class="thead-dark">
                        <h2>User Logs</h2>
                          <tr>

                          <th scope="col">Username</th>
                              <th scope="col">Membership Status</th>
                          </tr>
                        </thead>
                        <tbody>
                         
                          <tr>
                          <c:forEach var="batch" items="${list}">
                            <td><c:out value="${batch.batch_id }"></c:out></td>
						<td><c:out value="${batch.batch_fees }"></c:out></td>
                            </c:forEach>
                          </tr>  
                        </tbody>
                      </table>
                      </div>
                      
                       <div class="col-sm-6">
                      <table class="table" >
                        <thead class="thead-dark">
                        <h2>Manager Logs</h2>
                          <tr>
                          	<th scope="col">Manager Name</th>
                              <th scope="col">Password</th>
                          </tr>
                        </thead>
                        <tbody>
                         
                          <tr>
                          <c:forEach var="batch" items="${list}">
                            <td><c:out value="${batch.batch_id }"></c:out></td>
						<td><c:out value="${batch.batch_fees }"></c:out></td>
                            </c:forEach>
                          </tr>
                        </tbody>
                      </table>
                      </div>
                </div>
            </div>
         </div>
    </div>
</body>
</html>
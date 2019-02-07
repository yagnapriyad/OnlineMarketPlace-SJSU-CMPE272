<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Developer</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

 <h3>Dear Developer,</h3>
   <h4>Welcome to Online Project Marketplace</h4>
   <br/>
   <p>Please click View button to see all current project requirements. And choose which interests you!!</p>
  

  <a href="all-project"><button>View Project</button></a>
   <h2>Projects information</h2>
 <!-- <ul id="orders" >
   </ul> -->
<div class="container text-center" id="tasksDiv">
				
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Project ID</th>
								 <th>Title</th>
								 <th>Category</th>
								 <th>Description</th>
								 <th>Duration</th>
								 <th>Show Interest</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="task" items="${tasks}">
								<tr>
									<td>${task.id}</td>
									<td>${task.name}</td>
									<td>${task.description}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
									<td>5 month</td>
									<td><button><a href=/developerDetails>Interested</a></button</td></tr>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	

	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
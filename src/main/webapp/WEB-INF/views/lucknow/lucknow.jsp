<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Lucknow Super Giants</title>
</head>
<body style="background-color: #e2e2e2">
<c:choose>
<c:when test="${not empty player}">
<div class="container mt-5">
<h1 align="center" style="font-weight: bold; ">Lucknow Super Giants</h1>
<a href="addLucknow" class="btn btn-info" style="font-weight: bold;">Add New Player</a>
<table class="table mt-5 table-info ">
  <thead>
    <tr>
      <th scope="col">Player</th>
      <th scope="col">Role</th>
      <th scope="col">Price</th>
      <th scope="col">Nationality</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="plr" items="${player}">
    <tr>
      <td><a href="lucknow/${plr.name}"/><c:out value="${plr.name}"/></td>
      <td><c:out value="${plr.role}"/></td>
      <td><c:out value="${plr.price}"/></td>
      <td><c:out value="${plr.nationality}"/></td>
      <td><a href="editLucknow/<c:out value="${plr.name}"/>" class="btn btn-warning">Edit</a>
      <a href="deleteLucknow/<c:out value="${plr.name}"/>" class="btn btn-danger">Delete</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
<div style="text-align:center">
<a href="home" class="btn btn-info" style="font-weight:bold text-align:center;">Home</a>
</div>
</c:when>
<c:otherwise>
<div style="text-align:center">
<h1 style="font-weight: bold; ">No data found</h1><br>
<a href="addLucknow" class="btn btn-info" style="font-weight: bold;">Add New Player</a>
<a href="home" class="btn btn-info" style="font-weight: bold;">Home</a>
</div>
</c:otherwise>
</c:choose>
</body>
</html>


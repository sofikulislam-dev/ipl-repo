<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Royal Challengers Bengaluru</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <c:choose>

        <c:when test="${player != null && not empty player}">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="fw-bold mb-0">Royal Challengers Bengaluru</h2>

                <a href="<c:url value='/bangalore/add'/>"
                   class="btn btn-info fw-bold">
                    Add New Player
                </a>
            </div>

            <div class="card shadow-sm">
                <div class="card-body p-0">

                    <table class="table table-striped table-hover mb-0 text-center">
                        <thead class="table-info">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Role</th>
                            <th>Matches</th>
                            <th>Runs</th>
                            <th>Strike Rate</th>
                            <th>Price</th>
                            <th>Nationality</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="plr" items="${player}">
                            <tr>
                                <td>
                                    <a href="<c:url value='/bangalore/player/${plr.id}'/>"
                                       class="fw-bold text-decoration-none">
                                        <c:out value="${plr.id}"/>
                                    </a>
                                </td>

                                <td><c:out value="${plr.name}"/></td>
                                <td><c:out value="${plr.age}"/></td>
                                <td><c:out value="${plr.role}"/></td>
                                <td><c:out value="${plr.matches}"/></td>
                                <td><c:out value="${plr.runs}"/></td>
                                <td><c:out value="${plr.strike}"/></td>
                                <td><c:out value="${plr.price}"/></td>
                                <td><c:out value="${plr.nationality}"/></td>

                                <td>
                                    <div class="d-flex justify-content-center gap-2">
                                        <a href="<c:url value='/bangalore/edit?id=${plr.id}'/>"
                                           class="btn btn-sm btn-outline-warning">
                                            Edit
                                        </a>

                                        <a href="<c:url value='/bangalore/delete?id=${plr.id}'/>"
                                           class="btn btn-sm btn-outline-danger"
                                           onclick="return confirm('Are you sure you want to delete this player?');">
                                            Delete
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>

            <div class="text-center mt-4">
                <a href="<c:url value='/home'/>"
                   class="btn btn-info fw-bold">
                    Home
                </a>
            </div>

        </c:when>

        <c:otherwise>

            <div class="text-center mt-5">
                <h3 class="fw-bold mb-4">No players found</h3>

                <a href="<c:url value='/bangalore/add'/>"
                   class="btn btn-info fw-bold me-2">
                    Add New Player
                </a>

                <a href="<c:url value='/home'/>"
                   class="btn btn-info fw-bold">
                    Home
                </a>
            </div>

        </c:otherwise>

    </c:choose>

</div>

</body>
</html>

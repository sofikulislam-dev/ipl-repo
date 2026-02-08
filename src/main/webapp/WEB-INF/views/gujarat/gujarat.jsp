<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
    <title>Gujarat Titans</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<c:choose>

    <c:when test="${not empty player}">
        <div class="container mt-5">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="fw-bold mb-0">Gujarat Titans</h2>

                <a href="<c:url value='/gujarat/add'/>"
                   class="btn btn-info fw-bold">
                    Add New Player
                </a>
            </div>

            <div class="card shadow-sm">
                <div class="card-body p-0">

                    <table class="table table-striped table-hover mb-0">
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
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="plr" items="${player}">
                            <tr>
                                <!-- Click ID to go to player-view -->
                                <td>
                                    <a href="<c:url value='/gujarat/player/${plr.id}'/>"
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
        </div>
    </c:when>

    <c:otherwise>
        <div class="container mt-5 text-center">
            <h2 class="fw-bold mb-4">No data found</h2>

            <a href="<c:url value='/gujarat/add'/>"
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

</body>
</html>

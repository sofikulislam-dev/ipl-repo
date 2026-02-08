<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Player Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="fw-bold mb-0">Player Profile</h2>

        <a href="<c:url value='/bangalore/list'/>"
           class="btn btn-info fw-bold">
            Back to List
        </a>
    </div>

    <!-- Player Card -->
    <div class="card shadow-lg border-0">
        <div class="card-header bg-info text-white text-center">
            <h4 class="mb-0 fw-bold">
                <c:out value="${player.name}"/>
            </h4>
        </div>

        <div class="card-body p-4">

            <div class="row mb-3">
                <div class="col-md-6">
                    <p><strong>ID:</strong> <c:out value="${player.id}"/></p>
                    <p><strong>Age:</strong> <c:out value="${player.age}"/></p>
                    <p><strong>Role:</strong> <c:out value="${player.role}"/></p>
                    <p><strong>Nationality:</strong> <c:out value="${player.nationality}"/></p>
                </div>

                <div class="col-md-6">
                    <p><strong>Matches:</strong> <c:out value="${player.matches}"/></p>
                    <p><strong>Runs:</strong> <c:out value="${player.runs}"/></p>
                    <p><strong>Strike Rate:</strong> <c:out value="${player.strike}"/></p>
                    <p><strong>Price:</strong> ₹ <c:out value="${player.price}"/></p>
                </div>
            </div>

            <!-- Actions -->
            <div class="text-center mt-4">
                <a href="<c:url value='/bangalore/edit?id=${player.id}'/>"
                   class="btn btn-warning fw-bold me-2">
                    Edit Player
                </a>

                <a href="<c:url value='/bangalore/delete?id=${player.id}'/>"
                   class="btn btn-danger fw-bold"
                   onclick="return confirm('Are you sure you want to delete this player?');">
                    Delete Player
                </a>
            </div>

        </div>
    </div>

</div>

</body>
</html>

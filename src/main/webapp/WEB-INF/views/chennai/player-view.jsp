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

    <!-- Page Header -->
    <div class="text-center mb-4">
        <h2 class="fw-bold">Player Details</h2>
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
                <tr>
                    <td class="fw-bold">
                        <c:out value="${player.id}"/>
                    </td>
                    <td><c:out value="${player.name}"/></td>
                    <td><c:out value="${player.age}"/></td>
                    <td><c:out value="${player.role}"/></td>
                    <td><c:out value="${player.matches}"/></td>
                    <td><c:out value="${player.runs}"/></td>
                    <td><c:out value="${player.strike}"/></td>
                    <td><c:out value="${player.price}"/></td>
                    <td><c:out value="${player.nationality}"/></td>


                    <td>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="<c:url value='/chennai/edit?id=${player.id}'/>"
                               class="btn btn-sm btn-outline-warning">
                                Edit
                            </a>

                            <a href="<c:url value='/chennai/delete?id=${player.id}'/>"
                               class="btn btn-sm btn-outline-danger"
                               onclick="return confirm('Are you sure you want to delete this player?');">
                                Delete
                            </a>
                        </div>
                    </td>
                </tr>
                </tbody>

            </table>

        </div>
    </div>

    <!-- Footer Actions -->
    <div class="text-center mt-4">
        <a href="<c:url value='/chennai/list'/>"
           class="btn btn-info fw-bold">
            Back to List
        </a>
    </div>

</div>

</body>
</html>

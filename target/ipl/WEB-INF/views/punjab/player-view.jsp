<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Player Details</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
</head>

<body class="bg-light">

<div class="container py-5">

    <!-- Page Header -->
    <div class="row mb-4">
        <div class="col text-center">
            <h2 class="fw-bold">Player Details</h2>
        </div>
    </div>

    <!-- Details Table -->
    <div class="row justify-content-center">
        <div class="col-lg-10">

            <div class="card shadow-sm">
                <div class="card-body p-0">

                    <table class="table table-bordered table-hover mb-0">
                        <thead class="table-info text-center">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Player</th>
                            <th scope="col">Age</th>
                            <th scope="col">Role</th>
                            <th scope="col">Matches</th>
                            <th scope="col">Runs</th>
                            <th scope="col">Strike Rate</th>
                            <th scope="col">Price</th>
                            <th scope="col">Nationality</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>

                        <tbody class="text-center">
                        <tr>
                            <td class="fw-semibold">
                                <c:out value="${player.id}"/>
                            </td>
                            <td class="fw-semibold">
                                <c:out value="${player.name}"/>
                            </td>
                            <td><c:out value="${player.age}"/></td>
                            <td><c:out value="${player.role}"/></td>
                            <td><c:out value="${player.matches}"/></td>
                            <td><c:out value="${player.runs}"/></td>
                            <td><c:out value="${player.strike}"/></td>
                            <td><c:out value="${player.price}"/></td>
                            <td><c:out value="${player.nationality}"/></td>

                            <!-- Action Column -->
                            <td>
                                <a
                                    href="<c:url value='/punjab/edit/${player.id}'/>"
                                    class="btn btn-sm btn-outline-warning">
                                    Edit
                                </a>

                                <a
                                    href="<c:url value='/punjab/delete?id=${player.id}'/>"
                                    class="btn btn-sm btn-outline-danger"
                                    onclick="return confirm('Are you sure you want to delete this player?');">
                                    Delete
                                </a>
                            </td>
                        </tr>
                        </tbody>

                    </table>

                </div>
            </div>

        </div>
    </div>

    <!-- Footer Actions -->
    <div class="row mt-4">
        <div class="col text-center">
            <a
                href="<c:url value='/punjab/list'/>"
                class="btn btn-secondary">
                Back to List
            </a>
        </div>
    </div>

</div>

</body>
</html>

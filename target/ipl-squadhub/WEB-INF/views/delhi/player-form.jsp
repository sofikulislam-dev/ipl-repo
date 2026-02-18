<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delhi Capitals - Player Form</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-sm">
                <div class="card-header bg-info text-white text-center fw-bold">
                    <c:choose>
                        <c:when test="${mode eq 'edit'}">
                            Modify Delhi Player
                        </c:when>
                        <c:otherwise>
                            Add Delhi Player
                        </c:otherwise>
                    </c:choose>
                </div>

                <div class="card-body">

                    <form action="<c:url value='/delhi/save'/>" method="post">

                        <input type="hidden" name="mode" value="${mode}" />

                        <c:choose>
                            <c:when test="${mode eq 'edit'}">
                                <input type="hidden" name="id" value="${player.id}" />
                            </c:when>
                            <c:otherwise>
                                <div class="mb-3">
                                    <label class="form-label">Jersey No</label>
                                    <input type="number"
                                           name="id"
                                           class="form-control"
                                           required />
                                </div>
                            </c:otherwise>
                        </c:choose>

                        <div class="mb-3">
                            <label class="form-label">Player Name</label>
                            <input type="text"
                                   name="name"
                                   class="form-control"
                                   value="${player.name}"
                                   required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Age</label>
                            <input type="number"
                                   name="age"
                                   class="form-control"
                                   value="${player.age}"
                                   required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Role</label>
                            <input type="text"
                                   name="role"
                                   class="form-control"
                                   value="${player.role}"
                                   required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Nationality</label>
                            <input type="text"
                                   name="nationality"
                                   class="form-control"
                                   value="${player.nationality}"
                                   required />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Matches</label>
                            <input type="number"
                                   name="matches"
                                   class="form-control"
                                   value="${player.matches}" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Runs</label>
                            <input type="number"
                                   name="runs"
                                   class="form-control"
                                   value="${player.runs}" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Strike Rate</label>
                            <input type="number"
                                   step="0.01"
                                   name="strike"
                                   class="form-control"
                                   value="${player.strike}" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Price (₹ Cr)</label>
                            <input type="number"
                                   step="0.01"
                                   name="price"
                                   class="form-control"
                                   value="${player.price}" />
                        </div>

                        <div class="d-flex justify-content-center gap-3 mt-4">
                            <button type="submit"
                                    class="btn btn-info fw-bold">
                                Save Player
                            </button>

                            <a href="<c:url value='/delhi/list'/>"
                               class="btn btn-secondary fw-bold">
                                Back
                            </a>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>

</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Player Form</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #1d2671, #c33764);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .form-card {
            background: #fff;
            width: 500px;
            padding: 30px;
            border-radius: 12px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #dc3545;
            color: #fff;
            border: none;
            border-radius: 20px;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="form-card">

    <h2>
        <c:choose>
            <c:when test="${mode eq 'edit'}">
                Modify Delhi Player
            </c:when>
            <c:otherwise>
                Add Delhi Player
            </c:otherwise>
        </c:choose>
    </h2>

    <form action="${pageContext.request.contextPath}/delhi/save" method="post">

        <input type="hidden" name="mode" value="${mode}" />

        <c:if test="${mode ne 'edit'}">
        <input type="number"
               name="id"
               placeholder="Jersey No"
               required />
        </c:if>

        <c:if test="${mode eq 'edit'}">
        <input type="hidden" name="id" value="${player.id}" />
        </c:if>

        <input type="text"
               name="name"
               placeholder="Player Name"
               value="${player.name}"
               required />

        <input type="number"
               name="age"
               placeholder="Age"
               value="${player.age}"
               required />

        <input type="text"
               name="role"
               placeholder="Role"
               value="${player.role}"
               required />

              <input type="text"
               name="nationality"
               placeholder="Nationality"
               value="${player.nationality}"
               required />

        <input type="number"
               name="matches"
               placeholder="Matches"
               value="${player.matches}" />

        <input type="number"
               name="runs"
               placeholder="Runs"
               value="${player.runs}" />

        <input type="number"
               step="0.01"
               name="strike"
               placeholder="Strike Rate"
               value="${player.strike}" />

        <input type="number"
               step="0.01"
               name="price"
               placeholder="Price (₹ Cr)"
               value="${player.price}" />

        <button type="submit">Save Player</button>
    </form>

</div>

</body>
</html>

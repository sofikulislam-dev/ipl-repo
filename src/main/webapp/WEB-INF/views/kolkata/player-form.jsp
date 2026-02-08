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

        .error {
            color: red;
            font-size: 13px;
            margin-top: -8px;
            margin-bottom: 10px;
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
            <c:when test="${mode == 'edit'}">
                Modify Bangalore Player
            </c:when>
            <c:otherwise>
                Add Bangalore Player
            </c:otherwise>
        </c:choose>
    </h2>

    <form action="${pageContext.request.contextPath}/bangalore/save" method="post">

        <!-- Hidden ID for Edit -->
        <input type="hidden" name="id" value="${player.id}" />

        <input type="text" name="name" placeholder="Player Name"
               value="${player.name}" required />

        <input type="number" name="age" placeholder="Age"
               value="${player.age}" required />

        <select name="role" required>
            <option value="">-- Select Role --</option>
            <option ${player.role == 'Batsman' ? 'selected' : ''}>Batsman</option>
            <option ${player.role == 'Bowler' ? 'selected' : ''}>Bowler</option>
            <option ${player.role == 'All-Rounder' ? 'selected' : ''}>All-Rounder</option>
            <option ${player.role == 'Wicket Keeper' ? 'selected' : ''}>Wicket Keeper</option>
        </select>

        <input type="text" name="nationality" placeholder="Nationality"
               value="${player.nationality}" required />

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <input type="number" name="matches" placeholder="Matches"
               value="${player.matches}" />

        <input type="number" name="runs" placeholder="Runs"
               value="${player.runs}" />

        <input type="number" step="0.01" name="strike" placeholder="Strike Rate"
               value="${player.strike}" />

        <input type="number" step="0.01" name="price" placeholder="Price (₹ Cr)"
               value="${player.price}" />

        <button type="submit">Save Player</button>
    </form>

</div>

</body>
</html>

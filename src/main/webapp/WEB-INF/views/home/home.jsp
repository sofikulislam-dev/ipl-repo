<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IPL Home</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #1e3c72, #2a5298);
        min-height: 100vh;
    }

    .page-title {
        color: #fff;
        font-weight: 700;
        text-align: center;
        margin: 30px 0;
    }

    .team-card {
        background: #ffffff;
        border-radius: 15px;
        padding: 25px;
        text-align: center;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .team-card:hover {
        transform: translateY(-8px);
        box-shadow: 0 20px 35px rgba(0,0,0,0.25);
    }

    .team-name {
        font-weight: 600;
        margin-bottom: 15px;
    }

    .btn-team {
        width: 100%;
        border-radius: 30px;
        font-weight: 500;
    }
</style>
</head>

<body>

<div class="container">
    <h1 class="page-title">🏏 Welcome to IPL Teams</h1>

    <div class="row g-4">

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Royal Challengers Bangalore</h5>
                <a href="bangalore/list" class="btn btn-danger btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Chennai Super Kings</h5>
                <a href="chennai/list" class="btn btn-warning btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Mumbai Indians</h5>
                <a href="mumbai/list" class="btn btn-primary btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Kolkata Knight Riders</h5>
                <a href="kolkata/list" class="btn btn-dark btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Delhi Capitals</h5>
                <a href="delhi/list" class="btn btn-info btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Rajasthan Royals</h5>
                <a href="rajasthan/list" class="btn btn-secondary btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Sunrisers Hyderabad</h5>
                <a href="hyderabad/list" class="btn btn-warning btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Punjab Kings</h5>
                <a href="punjab/list" class="btn btn-danger btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="team-card">
                <h5 class="team-name">Lucknow Super Giants</h5>
                <a href="lucknow/list" class="btn btn-primary btn-team">View Team</a>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 mx-auto">
            <div class="team-card">
                <h5 class="team-name">Gujarat Titans</h5>
                <a href="gujarat/list" class="btn btn-success btn-team">View Team</a>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

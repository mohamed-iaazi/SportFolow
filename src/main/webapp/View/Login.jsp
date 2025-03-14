<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 14/03/2025
  Time: 06:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Classes</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/assets/favicon.ico" type="image/x-icon" rel="icon" />

    <link href="css/style.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

<header class="mb-4" style="z-index:999; overflow: hidden;  ">
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light p-2 ">
        <div class="container-fluid p-2">
            <a href="${pageContext.request.contextPath}/" style="text-decoration: none;">
                <button  style="border: none; background: none; cursor: pointer; font-size: 16px; color: black">
                <i class="fas fa-arrow-left"></i> Back
            </button>

            </a>

        </div>
    </nav>
</header>



<!--   Login section -->
<!-- Modal -->
    <form class="w-25 ms-auto me-auto " style="margin-top: 10%" action="Login" method="Post">
        <h2 class="text-center fw-bold  mt-5"> Login </h2>

        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card px-1 py-4">
                    <div class="card-body">
                        <h6 class="information mt-4">Please provide following information</h6>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="input-group"> <input name="email" class="form-control" type="email" placeholder="Email "> </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="input-group"> <input name="password" class="form-control" type="password" placeholder="Password"> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center align-items-center ">
                        <button type="submit" class="btn-primary">Login</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

<script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
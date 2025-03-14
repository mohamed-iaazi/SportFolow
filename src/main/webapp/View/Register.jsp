<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 14/03/2025
  Time: 06:05
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
  <link href="${pageContext.request.contextPath}/css/card.css" rel="stylesheet" >
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" >
  <link href="${pageContext.request.contextPath}/assets/favicon.ico" type="image/x-icon" rel="icon" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>


<header class="mb-4" style="z-index:999; overflow: hidden;  ">
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light p-2 ">
    <div class="container-fluid p-2">
      <a href="${pageContext.request.contextPath}/" style="text-decoration: none">
        <button  style="border: none; background: none; cursor: pointer; font-size: 16px; color: black">
        <i class="fas fa-arrow-left"></i> Back
      </button>
      </a>
    </div>
  </nav>
</header>

<!--The Register Form -->
<!-- Modal -->
    <form class="ms-auto me-auto w-25" style="margin-top: 8%" method="POST" action="Register">
      <h2 class="text-center fw-bold  mt-5"> Register </h2>
      <div class="modal-content">
        <div class="card px-1 py-4">
          <div class="card-body">
            <h6 class="information mt-4">Please provide following information</h6>
            <div class="row">
              <div class="col-sm-12">
                <div class="form-group">
                  <!-- <label for="name">Name</label> --> <input name="username" class="form-control" type="text" placeholder="Name"> </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div class="form-group">
                  <div class="input-group"> <input name="number" class="form-control" type="number" placeholder="Mobile"> </div>
                </div>
              </div>
            </div>
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
            <div class=" d-flex flex-column text-center px-5 mt-3 mb-3"> <small class="agree-text">By Clicking Register  you agree to the</small>
              <a href="#" class="terms">Terms & Conditions</a> </div>
          </div>
          <c:if  test="${not empty errour}">

            <div class="p-2 d-none failed">
              <h5 class="text-danger text-center">Register Failed Try Again ! ${errour}</h5>
            </div>
          </c:if>
          <div class="modal-footer justify-content-center">
            <input type="submit"  class="btn btn-success" value="Register">

          </div>

        </div>

      </div>
    </form>



<script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
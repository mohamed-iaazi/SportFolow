<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 14/03/2025
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sport-Trainer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/framework.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/master.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="${pageContext.request.contextPath}/assets/favicon.ico" type="image/x-icon" rel="icon" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&#038;display=swap" rel="stylesheet" />
</head>
<body>
<div class="page d-flex">
    <div class="sidebar bg-white p-20 p-relative">
        <h3 class="p-relative txt-c mt-0">Sport Admin</h3>
        <ul>
            <li>
                <a class=" d-flex align-center fs-14 c-black rad-6 p-10" href="Dashboard">
                    <i class="fa-regular fa-chart-bar fa-fw"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="classes">
                    <i class="fa-solid fa-gear fa-fw"></i>
                    <span>Classes</span>
                </a>
            </li>

            <li>
                <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="member">
                    <i class="fa-solid fa-gear fa-fw"></i>
                    <span>Member</span>
                </a>
            </li>

            <li>
                <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="trainer">
                    <i class="fa-solid fa-gear fa-fw"></i>
                    <span>Trainer</span>
                </a>
            </li>

        </ul>
    </div>
    <div class="content w-full">
        <!-- Start Head -->
        <div class="head bg-white p-15 between-flex">
            <div class="search p-relative">
                <input class="p-10" type="search" placeholder="Type A Keyword" />
            </div>
            <div class="icons d-flex align-center">
            <span class="notification p-relative">
              <i class="fa-regular fa-bell fa-lg"></i>
            </span>
                <img decoding="async" src="${pageContext.request.contextPath}/assets/avatar.png" alt="" />
            </div>
        </div>
        <!-- End Head -->
        <h1 class="p-relative">Dashboard</h1>
        <div class="wrapper d-grid gap-20">
            <!-- Start Welcome Widget -->
            <div class="welcome bg-white rad-10 txt-c-mobile block-mobile">
                <div class="intro p-20 d-flex space-between bg-eee">
                    <div>
                        <h2 class="m-0">Welcome</h2>
                        <p class="c-grey mt-5">Admin</p>
                    </div>
                    <img decoding="async" class="hide-mobile" src="${pageContext.request.contextPath}/assets/welcome.png" alt="" />
                </div>
                <img decoding="async" src="${pageContext.request.contextPath}/assets/avatar.png" alt="" class="avatar" />
                <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                    <div>Classes<span class="d-block c-grey fs-14 mt-10">10</span></div>
                    <div>Member  <span class="d-block c-grey fs-14 mt-10">80</span></div>
                    <div>Trainers  <span class="d-block c-grey fs-14 mt-10">8</span></div>


                </div>

            </div>


        </div>

    </div>
</div>
</body>
</html>
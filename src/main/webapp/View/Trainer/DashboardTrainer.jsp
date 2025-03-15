<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 14/03/2025
  Time: 06:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/framework.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/master.css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" >

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="${pageContext.request.contextPath}/assets/favicon.ico" type="image/x-icon" rel="icon" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&#038;display=swap" rel="stylesheet" />
</head>
<body>
<div class="page d-flex">
    <div class="sidebar bg-white p-20 p-relative">
        <h3 class="p-relative txt-c mt-0">Sport Traineur</h3>
        <ul>
            <li>
                <a class="active d-flex align-center fs-14 c-black rad-6 p-10" href="DashboardTrainer">
                    <i class="fa-regular fa-chart-bar fa-fw"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a class="d-flex align-center fs-14 c-black rad-6 p-10" href="TrainerSettings">
                    <i class="fa-solid fa-gear fa-fw"></i>
                    <span>Settings</span>
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
                        <p class="c-grey mt-5">Traineur</p>
                    </div>
                    <img decoding="async" class="hide-mobile" src="${pageContext.request.contextPath}/assets/welcome.png" alt="" />
                </div>
                <img decoding="async" src="${pageContext.request.contextPath}/assets/avatar.png" alt="" class="avatar" />
                <div class="body txt-c d-flex p-20 mt-20 mb-20 block-mobile">
                    <div>Total Classes<span class="d-block c-grey fs-14 mt-10">10</span></div>
                    <div>Member Joined <span class="d-block c-grey fs-14 mt-10">80</span></div>

                </div>

            </div>
            <!-- End Welcome Widget -->
            <!-- Start Quick Draft Widget -->
            <div class="quick-draft p-20 bg-white rad-10">
                <h2 class="mt-0 mb-10">Add new Class</h2>
                <p class="mt-0 mb-20 c-grey fs-15">Title of class</p>
                <form action="${pageContext.request.contextPath}/DashboardTrainer/addClass" method="post">
                    <input name="title" class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" type="text" placeholder="Title" />
                    <textarea name="description" class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" placeholder="description "></textarea>
                    <label class="d-block text-secondary"> Data To start The class</label>
                    <input name="date" class="text-bg-light border-0 ps-2 pe-2 pt-1 pb-1" type="datetime-local" placeholder="Date" />

                    <input class="save d-block fs-14 bg-blue c-white b-none w-fit btn-shape" type="submit" value="Add" />
                </form>
            </div>

            <!-- Start Ticket Widget -->
            <div class="tickets p-20 bg-white rad-10">
                <h2 class="mt-0 mb-10">courses reservation</h2>
                <p class="mt-0 mb-20 c-grey fs-15">Everything about sport </p>
                <div class="d-flex txt-c gap-20 f-wrap">
                    <div class="box p-20 rad-10 fs-13 c-grey">
                        <i class="fa-regular fa-rectangle-list fa-2x mb-10 c-orange"></i>
                        <span class="d-block c-black fw-bold fs-25 mb-5">2500</span>
                        Total
                    </div>
                    <div class="box p-20 rad-10 fs-13 c-grey">
                        <i class="fa-solid fa-spinner fa-2x mb-10 c-blue"></i>
                        <span class="d-block c-black fw-bold fs-25 mb-5">500</span>
                        Pending
                    </div>
                    <div class="box p-20 rad-10 fs-13 c-grey">
                        <i class="fa-regular fa-circle-check fa-2x mb-10 c-green"></i>
                        <span class="d-block c-black fw-bold fs-25 mb-5">1900</span>
                        Closed
                    </div>
                    <div class="box p-20 rad-10 fs-13 c-grey">
                        <i class="fa-regular fa-rectangle-xmark fa-2x mb-10 c-red"></i>
                        <span class="d-block c-black fw-bold fs-25 mb-5">100</span>
                        Canceled
                    </div>
                </div>
            </div>
            <!-- End Ticket Widget -->


            <!-- Start Tasks Widget -->
            <div class="tasks p-20 bg-white rad-10">
                <h2 class="mt-0 mb-20">Your classes</h2>
                <div class="task-row between-flex">
                    <div class="info">
                        <h3 class="mt-0 mb-5 fs-15">gym</h3>
                        <p class="m-0 c-grey">every week</p>
                    </div>
                    <button style="padding: 4px 20px ; background-color: blueviolet; border: none; border-radius: 10px; color: white; margin: 0 10px;">Edit</button>
                    <button style="padding: 4px 20px ; background-color: rgba(201, 44, 44, 0.832); border: none; border-radius: 10px; color: white; margin: 0 10px;">Delete</button>
                </div>
            </div>
            <!-- End Tasks -->

        </div>

    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>
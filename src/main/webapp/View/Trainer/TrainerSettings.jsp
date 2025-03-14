<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 14/03/2025
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Settings</title>
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/framework.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&#038;display=swap" rel="stylesheet" />
</head>
<body>
<div class="page d-flex">
    <div class="sidebar bg-white p-20 p-relative">
        <h3 class="p-relative txt-c mt-0">Sport Traineur</h3>
        <ul>
            <li>
                <a class=" d-flex align-center fs-14 c-black rad-6 p-10" href="DashboardTrainer">
                    <i class="fa-regular fa-chart-bar fa-fw"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a class=" active d-flex align-center fs-14 c-black rad-6 p-10" href="TrainerSettings">
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
                <img decoding="async" src="assets/avatar.png" alt="" />
            </div>
        </div>

        <!-- Start Quick Draft Widget -->
        <div class="quick-draft p-20 bg-white rad-10">
            <h2 class="mt-0 mb-10">Modifier  your profile</h2>
            <p class="mt-0 mb-20 c-grey fs-15">modifier</p>
            <form>
                <input class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" type="text" placeholder="username" />
                <input class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" type="text" placeholder="email" />
                <input class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" type="text" placeholder="number phone" />
                <input class="d-block mb-20 w-full p-10 b-none bg-eee rad-6" type="text" placeholder="Title" />


                <input class="save d-block fs-14 bg-blue c-white b-none w-fit btn-shape" type="submit" value="update" />
            </form>
        </div>






    </div>

</div>
</div>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 13/03/2025
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Classes</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link href="css/card.css" rel="stylesheet" >
    <link href="css/style.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>


<!--   classes section -->

<section class="classes mb-5">
    <h3 class="pb-1 text-center ">Our Classes</h3>
    <span class="d-block line ms-auto me-auto mb-5"></span>

    <p  class="text-center w-75 d-block ms-auto me-auto ">Sed ut perspiciatis unde omnis iste natus error sit voluptatem
        accusantium doloremque laudantium, .</p>

    <!--   Card for class One  -->
    <div class=" row row-cols-1 row-cols-md-3 g-4 mt-5 m-4 justify-content-center">
        <div class="col-sm-10 col-lg-3">
            <div class="cards first">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Football</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>5</span>
                        <span>0</span>
                        <span>0</span>
                    </div>
                    <button class="btn-success m-5" href="#">Join Now</button>
                </div>
            </div>

        </div>

        <!--   Card for class two  -->

        <div class=" col-sm-10 col-lg-3">
            <div class="cards second">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Wellness Coach</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>0</span>
                        <span>6</span>
                        <span>0</span>
                    </div>
                    <button class="btn-danger m-5" href="#">Join Now</button>
                </div>
            </div>

        </div>
        <!--   Card for class thre  -->

        <div class=" col-sm-10 col-lg-3">
            <div class="cards thre">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Fitness</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>2</span>
                        <span>8</span>
                        <span>8</span>
                    </div>
                    <button class="btn-info m-5" href="#">Join Now</button>
                </div>
            </div>

        </div>
    </div>
</section>



<!--   classes section -->

<section class="classes pb-5">
    <!--   Card for class One  -->
    <div class=" row row-cols-1 row-cols-md-3 g-4 mt-5 m-4 justify-content-center">
        <div class="col-sm-10 col-lg-3">
            <div class="cards first">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Football</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>5</span>
                        <span>0</span>
                        <span>0</span>
                    </div>
                    <button class="btn-success m-1" href="#">Join Now</button>
                </div>
            </div>

        </div>

        <!--   Card for class two  -->

        <div class=" col-sm-10 col-lg-3">
            <div class="cards second">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Wellness Coach</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>0</span>
                        <span>6</span>
                        <span>0</span>
                    </div>
                    <button class="btn-danger m-1" href="#">Join Now</button>
                </div>
            </div>

        </div>
        <!--   Card for class thre  -->

        <div class=" col-sm-10 col-lg-3">
            <div class="cards thre">
                <div class="imgBx">
                    <img src="/SportFlow/assets/gym.png">
                </div>
                <div class="contentBx">
                    <h2>Fitness</h2>
                    <div class="size mt-3">
                        <h3>Mambers :</h3>
                        <span>0</span>
                        <span>2</span>
                        <span>8</span>
                        <span>8</span>
                    </div>
                    <button class="btn-info m-1" href="#">Join Now</button>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- START Pagination -->
<div aria-label="Page navigation p-5">
    <ul class="pagination pagination-reset justify-content-center">
        <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                <i class="zmdi zmdi-long-arrow-left"></i>
            </a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">2</a></li>
        <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">...</a></li>
        <li class="page-item"><a class="page-link" href="#">8</a></li>
        <li class="page-item">
            <a class="page-link" href="#">
                <i class="zmdi zmdi-long-arrow-right"></i>
            </a>
        </li>
    </ul>
</div>
<!-- END Pagination -->
</div>
</div>
<script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 12/03/2025
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="jakarta.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home-Sport</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link href="css/card.css" rel="stylesheet" >
    <link href="css/style.css" rel="stylesheet" >

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body >
<header >
    <nav class="navbar navbar-expanded-lg">
        <div class="container">
            <a class="navbar-brand h1  ps-5 pt-3 " href="">Sport</a>
            <!-- Navbar toggler -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>


            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav  mb-1">
                    <li  class="nav-item text-center ms-auto me-auto   mb-1"><a class="nav-link " href="">Home</a></li>
                    <li  class="nav-item text-center ms-auto me-auto mb-1"><a class="nav-link " href="">About Us</a></li>
                    <li  class="nav-item text-center ms-auto me-auto mb-1"><a class="nav-link " href="">Our Classes</a></li>
                    <li  class="nav-item text-center ms-auto me-auto mb-1"><a class="nav-link " href="">Our Trainer</a></li>
                    <li  class="nav-item text-center ms-auto me-auto mb-5"><a class="nav-link " href="">Our Price</a></li>
                </ul>
                <Button class="bg-primary ms-auto me-auto d-block ps-5 pe-5 pt-2 pb-2" data-bs-toggle="modal" data-bs-target="#Login" href="">Login</Button>

            </div>
        </div>

    </nav>
</header>


<!--   Intro section -->
<section class="d-flex justify-content-around align-items-center intro">
    <div class="d-flex flex-column  align-items-center gap-0 mt-2">
        <h1>
            Build Your Body & <br>
            <span>Shape Yourself!</span>
        </h1>
        <div></div>
        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem <br>
            accusantium doloremque laudantium, totam rem aperiam, <br>
            eaque ipsa quae ab illo inventore  architecto <br>
            beatae vitae dicta sunt explicabo.</p>
        <button class="join" data-bs-toggle="modal" data-bs-target="#Register" >Join Today</button>
    </div>
    <dotlottie-player src="https://lottie.host/fca73217-a95e-4daf-80a5-c00b0afd0563/mhMW5Z2QUV.lottie"
                      background="transparent" speed="1" style="width: 500px; height: 500px" loop autoplay></dotlottie-player>
</section>




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



<!--   Trainer section -->

<section class="trainer mb-5">
    <h3 class="pb-1 text-center ">Our Trainer</h3>
    <span class="d-block line ms-auto me-auto mb-5"></span>

    <p  class="text-center w-75 d-block ms-auto me-auto ">Sed ut perspiciatis unde omnis iste natus error sit voluptatem
        accusantium doloremque laudantium, totam rem aperiam,
        eaque ipsa quae ab illo inventore veritatis et quasi
        architecto beatae vitae dicta sunt explicabo.</p>
    <!--   Card for trainer One  -->
    <div class="trainer1 row row-cols-1 row-cols-md-3 g-4 mt-5 m-4 justify-content-center">
        <div class="col-sm-10 col-lg-3">
            <div class="card border-success bg-light">
                <div class="info  ">
                    <h4 class="card-title text-center">John Doe</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>
                </div>
                <h5 class="info text-center">Trainer</h5>
            </div>

        </div>

        <!--   Card for trainer two  -->

        <div class="trainer2 col-sm-10 col-lg-3">
            <div class="card border-danger bg-light ">
                <div class="info  ">
                    <h4 class="card-title text-center">John Doe</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>
                </div>
                <h5 class="info text-center">Gym</h5>
            </div>

        </div>
        <!--   Card for trainer thre  -->

        <div class="trainer3 col-sm-10 col-lg-3">
            <div class="card border-primary  bg-light">
                <div class="info  ">
                    <h4 class="card-title text-center">John Doe</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>
                </div>
                <h5 class="info text-center">Trainer</h5>
            </div>

        </div>
    </div>
</section>

<!--   Price section -->

<section class="price">
    <h3 class="pb-1 text-center">Our Pricing</h3>
    <span class="d-block line ms-auto me-auto mb-5"></span>
    <p  class="text-center w-75 d-block ms-auto me-auto ">Sed ut perspiciatis unde omnis iste natus error sit voluptatem
        accusantium doloremque laudantium, totam rem aperiam,
        eaque ipsa quae ab illo inventore veritatis et quasi
        architecto beatae vitae dicta sunt explicabo.</p>


    <div class="w-50 ms-auto me-auto d-flex gap-5 pt-4 justify-content-center">
        <h6>Annual Plan</h6>
        <div class="form-check form-switch">
            <input class="form-check-input" type="checkbox" checked >
        </div>
        <h6>Monthly Plan</h6>




    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mt-5 m-4 justify-content-center">

        <!--   Card for basic  plan  -->
        <div class="col-sm-10 col-lg-3">
            <div class="card ">
                <dotlottie-player class="card-img-top ms-auto me-auto" src="https://lottie.host/8c8947b9-1f3f-4109-ae9a-a78ae5275580/ZLYnpMATa0.lottie"
                                  background="transparent" speed="1" style="width: 140px; height: 140px" loop autoplay></dotlottie-player>
                <div class="card-body">
                    <h4 class="card-title text-center">Basic Plan</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>
                </div>
                <h5 class="text-center">100Dh/Month</h5>
                <button class="btn-light mt-3">Get Started</button>

            </div>
        </div>
        <!--   Card for Professional  plan  -->

        <div class="col-sm-10 col-lg-3">
            <div class="card ">
                <dotlottie-player
                        src="https://lottie.host/c353c81f-207d-4eb8-b2e9-71a70e15027b/GsN1ax8qJ9.lottie"
                        class="card-img-top ms-auto me-auto"
                        background="transparent"
                        speed="1"
                        style="width: 140px; height: 140px"
                        loop
                        autoplay
                ></dotlottie-player>
                <div class="card-body">
                    <h4 class="card-title text-center">Professional  Plan</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>

                </div>
                <h5 class="text-center">300Dh/Month</h5>
                <button class="btn-info mt-3">Get Started</button>

            </div>
        </div>

        <!--   Card for Vip  plan  -->

        <div class="col-sm-10 col-lg-3">
            <div class="card ">

                <dotlottie-player
                        src="https://lottie.host/8f6496e8-5fe3-4f4d-b4f8-dbb3cdf686cf/kzt7qmopcj.lottie"
                        class="card-img-top ms-auto me-auto"
                        background="transparent"
                        speed="1"
                        style="width: 140px; height: 140px"
                        loop
                        autoplay
                ></dotlottie-player>
                <div class="card-body">
                    <h4 class="card-title text-center">Vip Plan</h4>
                    <p class="card-text text-center">Sed ut perspiciatis unde <br>
                        natus error sit  quae ab illo inventor.</p>
                    <span class="lineSepare ms-auto me-auto d-block"></span>
                </div>
                <h5 class="text-center">500Dh/Month</h5>
                <button class="mt-3 btn-success">Get Started</button>

            </div>
        </div>
    </div>
</section>

<!--The Register Form -->
<!-- Modal -->
<div  class="modal fade" id="Register" tabindex="-1" aria-labelledby="RegisterModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form method="POST" action="Register">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="RegisterModal">Register</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
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
                <div class="p-2 d-none failed">
                    <h5 class="text-danger text-center">Register Failed Try Again !</h5>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button"  class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    <input type="submit"  class="btn btn-success" value="Register">

            </div>
        </div>
        </form>
    </div>
</div>



<!--   Login section -->

<!-- Modal -->
<div class="modal fade" id="Login" tabindex="-1" aria-labelledby="LoginModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="LoginModal">Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="card px-1 py-4">
                <div class="card-body">
                    <h6 class="information mt-4">Please provide following information</h6>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <div class="input-group"> <input class="form-control" type="email" placeholder="Email "> </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <div class="input-group"> <input class="form-control" type="password" placeholder="Password"> </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn-primary">Login</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!--footer-->
<footer class="bg-body-tertiary text-center">
    <!-- Copyright -->
    <div class="text-center p-2 pb-3 " style="background-color: rgba(0, 0, 0, 0.05);">
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <a
                        data-mdb-ripple-init
                        class="btn text-white btn-floating m-1"
                        style="background-color: #3b5998;"
                        href="#!"
                        role="button"
                ><i class="fab fa-facebook-f"></i
                ></a>

                <!-- Twitter -->
                <a
                        data-mdb-ripple-init
                        class="btn text-white btn-floating m-1"
                        style="background-color: #55acee;"
                        href="#!"
                        role="button"
                ><i class="fab fa-twitter"></i
                ></a>

                <!-- Google -->
                <a
                        data-mdb-ripple-init
                        class="btn text-white btn-floating m-1"
                        style="background-color: #dd4b39;"
                        href="#!"
                        role="button"
                ><i class="fab fa-google"></i
                ></a>

                <!-- Instagram -->
                <a
                        data-mdb-ripple-init
                        class="btn text-white btn-floating m-1"
                        style="background-color: #ac2bac;"
                        href="#!"
                        role="button"
                ><i class="fab fa-instagram"></i
                ></a>

                <!-- Linkedin -->
                <a
                        data-mdb-ripple-init
                        class="btn text-white btn-floating m-1"
                        style="background-color: #0082ca;"
                        href="#!"
                        role="button"
                ><i class="fab fa-linkedin-in"></i
                ></a>
            </section>
            <!-- Section: Social media -->
        </div >
        <!-- Grid container -->
        © 2020 Copyright:
        <a class="text-body " style="text-decoration: none; font-weight: bolder;" href="https://sportFolow.com/">SportFolow</a>
    </div>
    <!-- Copyright -->
</footer>
<script>
    function  register() {
        fetch("Register",{
            method:"POST",
        })

            .then((res) => {
                if (res.status===200){
                    alert("Successfully Registered");
                    const register = document.getElementById("Register");
                    register.setAttribute('style','display:none;')
                    register.remove();
                    document.querySelector('.modal-backdrop').remove();
                    document.querySelector('.modal-open').style.overflow="visible";
                }
                else{
                    alert("Failed");
                    document.querySelector('.failed').classList.remove('d-none');
                    document.querySelectorAll('input').forEach((i) =>{
                        i.addEventListener('click',()=>{
                            value=''
                        })
                    });
                }
                console.log(res);
            })
            .catch((err) => {
                console.log(err);
            })

    }

    document.getElementById("register_btn").addEventListener("click", function () {
  register()
    })
</script>
<script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
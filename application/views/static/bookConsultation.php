<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('layout/head'); ?>
    <style>
        #hero {
            position: relative;
            margin-top: -120px;
            height: 450px;
            background-image: url('https://kodesolution.com/2022/vizox/wp-content/uploads/2022/09/page-title.jpg');
            background-attachment: fixed;
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .background-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: transparent;
            background-image: linear-gradient(180deg, #00000000 0%, var(--theme-color) 95%);
            opacity: 1;
        }

        .content {
            z-index: 9;
        }

        .teamCard {
            cursor: pointer;
            transition: 0.3s ease-in-out;
        }

        .teamCard .cardImg {
            display: flex;
        }

        .teamCard .cardImg img {
            max-height: 400px;
        }

        #contactForm {
            margin-top: -150px;
        }

        .socials {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .socials i {
            font-size: 25px;
            color: #000;
        }

        .featuredPost {
            overflow: hidden;
            cursor: pointer;
        }

        .featuredPost .featuredImage {
            z-index: 1;
            width: 100%;
            transition: 0.3s ease-in-out
        }

        .featuredImage:hover {
            scale: 1.1;
        }

        .featuredPost .details {
            position: relative;
            z-index: 9;
            background-color: var(--theme-color2);
            padding: 20px;
            transition: 0.3s ease-in-out;
        }

        .featuredPost .details:hover {
            background-color: var(--theme-color);
            border-bottom: 1px solid var(--theme-color2);
        }

        .featuredPost .details .author,
        .recentPost .details .author {
            display: flex;
            gap: 15px;
            align-items: center;
            margin-bottom: 10px;
        }

        .featuredPost .details .author i {
            border: 1px solid #fff;
            border-radius: 50%;
            padding: 7px 9px;
        }

        .recentPost {
            display: flex;
            max-height: 167px;
            margin-bottom: 21px;
        }

        .recentPost .details {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 20px;
            gap: 10px;
            border-top: 1px solid #eee;
            border-right: 1px solid #eee;
            border-bottom: 1px solid #eee;
            transition: 0.3s ease-in-out;
            cursor: pointer;
        }

        .recentPost .details:hover {
            padding: 30px;
            border-right: 1px solid var(--theme-color2);
            border-top: 1px solid var(--theme-color2);
            border-bottom: 1px solid var(--theme-color2);
        }

        #reviews .profile {
            width: 100px;
            height: 100px;
        }

        .reviewCard {
            padding: 20px;
            border: 1px solid #eee;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 15px;
            height: 100%;
        }

        .reviewCard .review {
            font-size: 13px;
        }

        #statementsCover {
            background-image: url(https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/02/mission-bg-2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .statements,
        .playerBtnCover,
        .playerBtn {
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .playerBtn {
            width: 100px;
            height: 100px;
            border: 1px solid #fff;
            border-radius: 50%;
            -webkit-animation: ripple 3s infinite;
            animation: ripple 3s infinite;
            -webkit-transition: all .4s ease;
            cursor: pointer;
        }

        @-webkit-keyframes ripple {
            70% {
                -webkit-box-shadow: 0 0 0 20px rgba(255, 255, 255, 0.4);
                box-shadow: 0 0 0 20px rgba(255, 255, 255, 0.4);
            }

            100% {
                -webkit-box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.6);
                box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.6);
            }
        }

        @keyframes ripple {
            70% {
                -webkit-box-shadow: 0 0 0 20px rgba(255, 255, 255, 0.4);
                box-shadow: 0 0 0 20px rgba(255, 255, 255, 0.4);
            }

            100% {
                -webkit-box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.6);
                box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.6);
            }
        }

        .playerBtn i {
            font-size: 40px;
        }

        .statement {
            background-color: #fff;
            color: #000;
            padding: 20px;
            height: 350px;
            width: 350px;
            border-left: 7px solid var(--theme-color2);

        }

        .statement .title {
            color: var(--theme-color2);
            font-weight: 800;
            margin-bottom: 10px;
        }

        .statement .desc {
            color: #333;
        }

        .switchBtns {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 10px 0 0;
        }

        .switchBtns .switch {
            background-color: #ddd;
            width: 33%;
            border-radius: 0;
            padding: 10px 15px;
            transition: 0.3s ease-in-out;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }

        .switchBtns .switch i {
            color: #000;
            font-size: 20px;
        }

        .switchBtns .switch:hover {
            background-color: var(--theme-color2);
        }

        .switchBtns .switch.switchActive {
            background-color: var(--theme-color2);
            color: #fff;
        }

        #reviews .profile {
            width: 50px;
            height: 50px;
        }

        .reviewCard {
            padding: 20px;
            background-color: #eee;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 20px;
            height: 100%;
        }

        .reviewCard .review,
        .reviewCard .name {
            color: #000;
            font-size: 13px;
        }

        .reviewCard .review i {
            color: #ff7300;
        }

        .overallRating {
            background-color: #eee;
            color: #000;
            padding: 15px;
        }

        .overallRating .rating {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .overallRating h6 {
            color: #000;
            font-size: 25px;
        }

        .overallRating .rating b {
            color: #000;
            font-size: 25px;
        }

        .overallRating .rating i,
        .reviewCard .starRating i {
            color: #ff7300;
        }
        .service {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid #ccc;
            padding: 7px 13px;
            cursor: pointer;
        }
        .service .left {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .service .left .minutes {
            background: var(--theme-color2);
            padding: 10px;
            color: #fff;
            font-weight: 800;
            font-size: 19px;
            border-radius: 5px;
            min-width: 45px;
            text-align: center;
        }
        .service .description .title{
            margin-bottom: 0px;
            font-weight: 500;
            font-size: 20px;
        }
        .service .right{
            color: var(--theme-color2);
            font-weight: 600;
            font-size: 21px;
            text-align: end;
        }
        .services{
            min-height: 500px;
        }
        .serviceDropdown{
            border: 1px solid #ccc;
            padding: 7px 13px;
        }
        .embaded{
            box-sizing: border-box;
        }
        .map{
            border: 3px solid var(--theme-color2);
            box-sizing: border-box;
            height: 506px;
            width: calc(50% - 6px);
        }
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">Book Consultation</h2>
            </div>
        </section>
        <section id="consultation" class="themeBg pb-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-10 m-auto">
                        <div class="services themeBgLight p-2">
                            <h2 class="text-center my-3">Book Consultation Now</h2>
                            <div class="row row-gap-3">
                                <div class="col-md-7 px-4">
                                    <?php if(isset($_GET['service']) && !isset($booked)){ ?>
                                    <h5 class="text-start mb-4">General Information</h5>
                                        <form class="row g-0" method="POST">
                                            <input type="hidden" name="serviceId" value="<?=$_GET['service']?>" >
                                            <div class="col-6 px-2">
                                                <input name="name" type="text" class="form-control mb-3 rounded-0"
                                                    placeholder="Name" required>
                                            </div>
                                            <div class="col-6 px-2">
                                                <input name="mobile" type="tel" class="form-control mb-3 rounded-0"
                                                    placeholder="Mobile" required>
                                            </div>
                                            <div class="col-6 px-2">
                                                <input name="email" type="email" class="form-control mb-3 rounded-0"
                                                    placeholder="Email" required>
                                            </div>
                                            <div class="col-6 px-2">
                                                <select class="form-control mb-3 rounded-0" name="source" id="" required>
                                                    <option disabled selected >How did you hear about us?</option>
                                                    <option value="reffered-by-someone">Referred by someone</option>
                                                    <option value="google">Google</option>
                                                    <option value="facebook">Facebook</option>
                                                    <option value="instagram">Instagram</option>
                                                    <option value="linkedln">Linkedln</option>
                                                    <option value="twitter">Twitter</option>
                                                    <option value="youtube">Youtube</option>
                                                    <option value="other">Other</option>
                                                </select>
                                            </div>
                                            <div class="col-6 px-2">
                                                <select class="form-control mb-3 rounded-0" name="statusInCanada" id="" required>
                                                    <option disabled selected >Your Status In Canada</option>
                                                    <option value="not-in-canada">Not in Canada</option>
                                                    <option value="visitor">Visitor</option>
                                                    <option value="student">Student</option>
                                                    <option value="worker">Worker</option>
                                                    <option value="permanent-resident">Permanent Resident</option>
                                                    <option value="citizen">Citizen</option>
                                                </select>
                                            </div>
                                            <div class="col-6 px-2">
                                                <select class="form-control mb-3 rounded-0" name="discussionAbout" id="" required>
                                                    <option disabled selected >Discussion About?</option>
                                                    <option value="visitor-visa">Visitor Visa</option>
                                                    <option value="study-permit">Study Permit</option>
                                                    <option value="work-permit">Work Permit</option>
                                                    <option value="express-entry">Express Entry</option>
                                                    <option value="family-sponsorship">Family Sponsorship</option>
                                                    <option value="other-permanent-residency">Other Permanent Residency</option>
                                                    <option value="citizenship">Citizenship</option>
                                                    <option value="other">Other</option>
                                                </select>
                                            </div>
                                            <div class="col-12 px-2">
                                                <textarea name="message" class="form-control mb-3 rounded-0" id="" cols="30"
                                                    rows="6" placeholder="write a message here" required ></textarea>
                                            </div>
                                            <div class="col-12 px-2 d-flex justify-content-end mb-4">
                                                <button type="submit" class="btn btn-theme2 rounded-0">Book Now</button>
                                            </div>
                                        </form>
                                    <?php }else if(isset($booked)){ ?>
                                    <div class="d-flex justify-content-center align-items-center flex-column h-100">
                                        <h2 class="text-start text-success mb-4">Thanku</h2>
                                        <p class="text-secondary">Our Team Will Contact You Soon</p>
                                        <a class="navbar-brand" href="<?= site_url() ?>" target="_pg_blank">
                                            <img class="h-100 w-100" src="<?=base_url()?>assets/images/logo.png" alt="mapplewestimmigration" srcset="">
                                        </a>
                                    </div>
                                    
                                    <?php }else{ ?>
                                    <h5 class="text-start mb-4">Choose a Service</h5>
                                    <div class="servicesList px-2">
                                        <?php $i=0; foreach($services as $service): ?>
                                            <div class="service" data-bs-toggle="collapse" data-bs-target="#service<?=$i?>">
                                                <div class="left">
                                                    <span class="minutes"><?=$service['min']?></span>
                                                    <div class="description">
                                                        <p class="title"><?=$service['name']?></p>
                                                        <span class="desc text-secondary"><?=$service['min']?> Min</span>
                                                    </div>
                                                </div>
                                                <span class="right price">
                                                    <!-- <span>
                                                        CA$<?php // $service['priceCA']?>
                                                    </span> -->
                                                    <span>
                                                        INR ₹ <?=$service['priceIN']?>
                                                    </span>
                                                </span>
                                            </div>
                                            <div id="service<?=$i?>" class="collapse serviceDropdown mb-4">
                                                <div class="card-body">
                                                    <p class="desc"><?=$service['description']?></p>
                                                    <div class="cta d-flex align-items-center justify-content-end">
                                                        <a href="?service=<?=$service['rid']?>">
                                                            <button class="btn btn-theme2">Book Now</button>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php $i++; endforeach; ?>
                                    </div>
                                    <?php } ?>
                                </div>
                                <div class="offset-1 col-md-4">
                                    <div class="serviceDetails">
                                        <h5 class="text-start mb-4">Appointment Details</h5>
                                        <div class="details">
                                            <div class="detail location">
                                                <span class="text-secondary"><i class="fa-solid fa-location-dot me-1"></i> Location</span>
                                                <p class="m-0">Online meeting (Google Meet)</p>
                                                <hr>
                                            </div>
                                            <div class="detail people">
                                                <span class="text-secondary"><i class="fa-solid fa-person"></i> Number of People</span>
                                                <p class="m-0">1 Person</p>
                                                <hr>
                                            </div>
                                        </div>
                                    </div>
                                    <?php if(isset($_GET['service'])){ ?>
                                    <div class="serviceDetails">
                                        <h5 class="text-start mb-4">Service Details</h5>
                                        <div class="details">
                                            <div class="detail location">
                                                <span class="text-secondary"><i class="fa-solid fa-bag-shopping"></i> Service Name</span>
                                                <p class="m-0 fw-bold"><?=$service['name']?></p>
                                                <hr>
                                            </div>
                                            <div class="detail people">
                                                <span class="text-secondary"><i class="fa-solid fa-dollar-sign"></i> Price</span>
                                                <!-- <p class="m-0 text-theme fw-bold">CA$<?php //$service['priceCA']?></p> -->
                                                <p class="m-0 text-theme fw-boldR">INR ₹ <?=$service['priceIN']?></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="map" class="themeBg pb-4">
            <div class="embaded d-flex align-items-center flex-wrap">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13696.044954488721!2d75.8309739!3d30.8863466!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a7f72c51820ad%3A0x5d7f6cc2cf114528!2sMaple%20West%20Immigration%20Services%20Inc.!5e0!3m2!1sen!2sin!4v1696104970399!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.747286329695!2d-122.8672541!3d49.14842240000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d982b0d05255%3A0x94547f9d7dadd301!2s8028%20128%20St%20%23214%2C%20Surrey%2C%20BC%20V3W%204E9%2C%20Canada!5e0!3m2!1sen!2sin!4v1696172680118!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </section>
        <section id="contactForm" class="themeBg pb-4">
            <div class="row g-0">
                <div class="col-md-8 m-auto themeBgLight p-5">
                    <div class="row g-0">
                        <div class="col-sm-6 p-3">
                            <h2 class="h1 mb-4 text-dark">Feel Free to Contact us Anytime</h2>
                            <p class="text-start text-dark">Feel free to contact us with any questions or inquiries about our immigration services. We're here to assist you with visa applications, family sponsorship, work permits, citizenship, and more. Your path to a brighter future begins with a simple message.</p>
                            <div class="socials">
                                <a href="">
                                    <i class="fa-brands fa-facebook"></i>
                                </a>
                                <a href="">
                                    <i class="fa-brands fa-instagram"></i>
                                </a>
                                <a href="">
                                    <i class="fa-brands fa-twitter"></i>
                                </a>
                                <a href="">
                                    <i class="fa-brands fa-youtube"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                            <form class="row g-0" method="POST">
                                <div class="col-6 px-2">
                                    <input required name="name" type="text" class="form-control mb-3 rounded-0" placeholder="Name">
                                </div>
                                <div class="col-6 px-2">
                                    <input required name="mobile" type="tel" class="form-control mb-3 rounded-0" placeholder="Mobile">
                                </div>
                                <div class="col-6 px-2">
                                    <input required name="email" type="email" class="form-control mb-3 rounded-0" placeholder="Email">
                                </div>
                                <div class="col-6 px-2">
                                    <input required name="country" type="text" class="form-control mb-3 rounded-0" placeholder="Country">
                                </div>
                                <div class="col-12 px-2">
                                    <textarea required name="message" class="form-control mb-3 rounded-0"  id="" cols="30" rows="6" placeholder="write a message here"></textarea>
                                </div>
                                <div class="col-12 px-2">
                                    <button type="submit" class="btn btn-theme2 rounded-0">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <?php $this->load->view('layout/footer') ?>
    <?php $this->load->view('layout/scripts') ?>
    <script>
        const switchBtns = document.querySelectorAll('.switch');
        switchBtns.forEach(switchBtn => {
            switchBtn.addEventListener('click', () => {
                const active = document.querySelector('.switchActive');
                active.classList.remove('switchActive');
                switchBtn.classList.add('switchActive');
                const statement = document.getElementById(switchBtn.getAttribute('data-statement-id'));
                const activeStatement = document.querySelector('.statementActive');
                activeStatement.classList = "statement d-none";
                statement.classList = "statement statementActive";
            })
        });
        <?php if(isset($_GET['service'])): ?>
            document.getElementById('servicesList').focus();
        <?php endif; ?>
    </script>
</body>

</html>
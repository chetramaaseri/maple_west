<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('layout/head'); ?>
    <link async rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/dark.css">
    <script async src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <style>
        #hero{
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
            background-image: linear-gradient(180deg,#00000000 0%,var(--theme-color) 95%);
            opacity: 1;
        }
        .content{
            z-index: 9;
        }
        .fetchStatus{
            width: 150px;
            height: 50px;
            border: 1px solid #fff;
            -webkit-animation: ripple 3s infinite;
            animation: ripple 3s infinite;
            -webkit-transition: all .4s ease;
            cursor: pointer;
            border-radius: 0;
        }
        @-webkit-keyframes ripple {
            70% {
                -webkit-box-shadow: 0 0 0 10px #152330;
                        box-shadow: 0 0 0 10px #152330;
            }
            100% {
                -webkit-box-shadow: 0 0 0 0 #15233008;
                        box-shadow: 0 0 0 0 #15233008;
            }
        }
        @keyframes ripple {
            70% {
                -webkit-box-shadow: 0 0 0 10px #152330;
                        box-shadow: 0 0 0 10px #152330;
            }
            100% {
                -webkit-box-shadow: 0 0 0 0 #15233008;
                        box-shadow: 0 0 0 0 #15233008;
            }
        }
        #reviews .profile{
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

        .reviewCard .review , .reviewCard .name {
            color: #000;
            font-size: 13px;
        }
        .reviewCard .review i{
            color: #ff7300;
        }
        .overallRating{
            background-color: #eee;
            color: #000;
            padding: 15px;
        }
        .overallRating .rating{
            display: flex;
            align-items: center;
            gap: 15px;
        }
        .overallRating h6{
            color: #000;
            font-size: 25px;
        }
        .overallRating .rating b{
            color: #000;
            font-size: 25px;
        }
        .overallRating .rating i,.reviewCard .starRating i{
            color: #ff7300;
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
                <h2 class="heading text-center">Check Application Status</h2>
            </div>
        </section>
        <section id="checkStatus" class="themeBg pb-4">
            <div class="row g-0">
                <form method="get" class="col-sm-8 m-auto themeBgLight p-5">
                    <h2 class="h1 mb-4 text-dark">Enter Application Number</h2>
                    <input name="applicationNumber" placeholder="Enter Application Number" type="text" class="form-control rounded-0 mb-3">
                    <div class="d-flex justify-content-<?=(isset($status) && !empty($status)) ? "between" : "end"?> align-items-center">
                        <?php if(isset($status) && !empty($status)): ?>
                        <h2 class="mb-0 text-dark mt-4">Application Number : <?=$status['applicationNumber']?></h2>
                        <?php endif; ?>
                        <button type="submit" class="btn btn-theme2 fetchStatus mt-4">Check Status</button>
                    </div>
                </form>
            </div>
            <?php if(isset($status)): ?>
                <div class="row g-0">
                    <div class="col-sm-8 m-auto themeBgLight p-5 status">
                        <?php if(!empty($status)){
                            $currentStatus = json_decode($status['applicationStatus'],true);
                            $currentStatus = $currentStatus[count($currentStatus)-1];

                            $lastUpdate = new DateTime("@{$currentStatus['time']}");
                        ?>
                            <p class="text-center fs-3">Current Status</p>
                            <h2 class="h1 mb-4 text-dark text-center">Application <?=ucwords(str_replace("-"," ",$currentStatus['status']))?><h2>
                            <p class="text-center">Last Updated On - <?=$lastUpdate->format('d M Y')?></p>
                        <?php }else{ ?>
                            <p class="text-center fs-3">Application Not Found</p>
                        <?php } ?>
                    </div>
                </div>
            <?php endif; ?>
        </section>
        <section id="reviews" class="themeBg pb-5">
            <div class="container-lg">
                <div class="sectionHeading">
                    <div class="info">
                        <h2 class="">What People Say About Us</h2>
                        <span>Our immigration services, including visa support, family sponsorship, and citizenship assistance, have transformed lives. Hear from our satisfied clients about their successful immigration journeys</span>
                    </div>
                    <div class="viewAll">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="overallRating rounded-2 mb-3">
                            <h6 class="text-start">Overall Rating</h6>
                            <div class="rating">
                                <b>5.0</b>
                                <span class="star">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row flex-wrap justify-content-center flex-md-nowrap ">
                    <div class="googleReviews splide">
                        <div class="splide__track">
                            <ul class="splide__list">
                                <li class="splide__slide">
                                    <div class="reviewCard">
                                        <span class="starRating">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="<?=base_url()?>assets/images/google.png" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Gursharan Singh</h6>
                                    </div>
                                </li>
                                <li class="splide__slide">
                                    <div class="reviewCard">
                                        <span class="starRating">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                        <p class="review">
                                            Maple West made my dream of settling in Canada a reality. Their knowledge of Canadian immigration laws and personalized guidance throughout the process were exceptional. Thanks to their expertise, my family and I are now proud Canadian residents.
                                        </p>
                                        <div class="profile"><img src="<?=base_url()?>assets/images/google.png" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Amit Patel - Canada Immigrant</h6>
                                    </div>
                                </li>
                                <li class="splide__slide">
                                    <div class="reviewCard">
                                        <span class="starRating">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                        <p class="review">
                                            Maple West is not just an immigration company; they are dream-makers. Their team's dedication to helping me and my family settle in Canada was remarkable. We are now enjoying the beautiful Canadian life, all thanks to their expertise.
                                        </p>
                                        <div class="profile"><img src="<?=base_url()?>assets/images/google.png" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Luis Hernandez - Canada Immigrant</h6>
                                    </div>
                                </li>
                                <li class="splide__slide">
                                    <div class="reviewCard">
                                        <span class="starRating">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                        <p class="review">
                                            My experience with Maple West was exceptional. As a foreign national seeking a new life in the USA, their guidance and support were invaluable. Their deep understanding of U.S. immigration laws and their commitment to excellence made the transition seamless.
                                        </p>
                                        <div class="profile"><img src="<?=base_url()?>assets/images/google.png" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Elena Rodriguez - USA Immigrant</h6>
                                    </div>
                                </li>
                                <li class="splide__slide">
                                    <div class="reviewCard">
                                        <span class="starRating">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                        <p class="review">
                                            Maple West's expertise in UK immigration is commendable. Their team's dedication to helping me meet all the requirements and deadlines made the process smooth. Thanks to them, I am now building my future in the UK.
                                        </p>
                                        <div class="profile"><img src="<?=base_url()?>assets/images/google.png" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Nisha Kapoor - UK Immigrant</h6>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <?php $this->load->view('layout/footer') ?>
    <?php $this->load->view('layout/scripts') ?>
    <script>
        const googleReviews = new Splide( '.googleReviews', {
            type   : 'loop',
            autoplay: true,
            interval: 3000,
            perPage: 4,
            breakpoints: {
            1024: {
              perPage: 3,
            },
            767: {
              perPage: 2,
            },
            640: {
              perPage: 1,
            }},
            perMove: 1,
            gap: '50px',
            autoScroll: {
                speed: 1,
            },
        });
        googleReviews.mount();
        flatpickr("#dateOfBirth", {maxDate: "today"});
    </script>
</body>

</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('layout/head'); ?>
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
            margin-top: 25px;
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
        .post .title:hover{
            color: var(--theme-color2);
        }
        .featuredImage{
            height: 400px;
            width: 100%;
        }
        #contactForm{
            margin-top: -150px;
        }
        .socials{
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .socials i{
            font-size: 25px;
            color: #000;
        }
        .post .text>* {
            color: #000;
        }
        
        .recentPost .details .author{
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 10px;
            margin-left: 5px;
            font-size: 11px;
        }
        
        .recentPost {
            display: flex;
            /* max-height: 167px; */
            margin-bottom: 10px;
            text-decoration: none;
            color: #fff;
        }
        .recentPost .details{
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 10px;
            padding-bottom: 0;
            /* gap: 10px; */
            border-top: 1px solid #eee;
            border-right: 1px solid #eee;
            /* border-bottom: 1px solid #eee; */
            transition: 0.3s ease-in-out;
            cursor: pointer;
        }
        .recentPost .details .title{
            font-size: 17px;
            transition: 0.3s ease-in-out;
            
        }
        .recentPost .details .title:hover{
            font-size: 18px;
            color: var(--theme-color2);
            
        }
        .recentPost .description{
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 10px;
            padding-top: 0;
            gap: 10px;
            font-size: 13px;
            border-right: 1px solid #eee;
            border-bottom: 1px solid #eee;
            transition: 0.3s ease-in-out;
            cursor: pointer;
        }
        .recentPost .details:hover{
            padding: 15px;
            border-right: 1px solid var(--theme-color2);
            border-top: 1px solid var(--theme-color2);
        }
        .recentPost .details .lastUpdated{
            display: none;
        }
        .recentPost>.details:hover+.lastUpdated{
            display: block;
        }
        
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">Latest News</h2>
            </div>
        </section>
        <section id="blogs" class="themeBg pb-5">
            <div class="container-lg">
                <div class="row row-gap-4">
                    <?php $i=0; foreach ($news->entry as $entry):?>
                        <div class="col-sm-6">
                            <a target="_blank" href="<?=$entry->link['href']?>" class="recentPost flex-column">
                                <div class="details">
                                    <h4 class="title"><?=substr($entry->title,0)?></h4>
                                    <span class="author"><i class="fa-solid fa-user"></i><em><?=$entry->author->name?></em></span>
                                    <span class="lastUpdated">
                                        <?php $date = new DateTime($entry->updated); ?>
                                        <?="Updated on : ".$date->format('d M y')?>
                                    </span>
                                </div>
                                <p class="description"><?=substr($entry->summary,0,130)."... "?></p>
                            </a>
                        </div>
                    <?php $i++; endforeach; ?>
                </div>
            </div>
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
        <section id="map" class="themeBg pb-4">
            <div class="embaded">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13696.044954488721!2d75.8309739!3d30.8863466!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a7f72c51820ad%3A0x5d7f6cc2cf114528!2sMaple%20West%20Immigration%20Services%20Inc.!5e0!3m2!1sen!2sin!4v1696104970399!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
    </script>
</body>

</html>
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
        .teamCard{
            cursor: pointer;
            transition: 0.3s ease-in-out;
        }
        .teamCard .cardImg{
            display: flex;
        }
        .teamCard .cardImg img{
            max-height: 400px;
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
        .featuredPost{
            text-decoration: none;
            color: #fff;
            overflow: hidden;
            cursor: pointer;
        }
        .featuredPost .featuredImage{
            z-index: 1;
            width: 100%;
            height: 45%;
            transition: 0.3s ease-in-out
        }
        /* .featuredImage:hover{
            scale: 0.95;
        } */
        .featuredPost .details{
            max-height: 55%;
            position: relative;
            z-index: 9;
            background-color: var(--theme-color2);
            padding: 20px;
            transition: 0.3s ease-in-out;
        }
        .featuredPost .details:hover{
            background-color: var(--theme-color);
            border-bottom: 1px solid var(--theme-color2);
        }
        .featuredPost .details .author ,.recentPost .details .author{
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 10px;
            margin-left: 5px;
            font-size: 11px;
        }
        .featuredPost .details .title{
            font-size: 1.3rem;
        }
        .featuredPost .details .author i{
            /* border: 1px solid #fff;
            border-radius: 50%; */
            padding: 7px 9px;
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
        #reviews .profile{
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
        #statementsCover{
            background-image: url(https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/02/mission-bg-2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .statements,.playerBtnCover ,.playerBtn{
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .playerBtn{
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
        .playerBtn i{
            font-size: 40px;
        }
        .statement{
            background-color: #fff;
            color: #000;
            padding: 20px;
            height: 350px;
            width: 350px;
            border-left: 7px solid var(--theme-color2);

        }
        .statement .title{
            color: var(--theme-color2);
            font-weight: 800;
            margin-bottom: 10px;
        }
        .statement .desc{
            color: #333;
        }
        .switchBtns{
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 10px 0 0;
        }
        .switchBtns .switch{
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
        .switchBtns .switch i{
            color: #000;
            font-size: 20px;
        }
        .switchBtns .switch:hover{
            background-color: var(--theme-color2);
        }
        .switchBtns .switch.switchActive{
            background-color: var(--theme-color2);
            color: #fff;
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
        .regulationAuthority{
            height: 100px;
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
        @media (max-width:576px) {
            .featuredPost .details{
                max-height: none;
                min-height: 15%;
            }
        }
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">About Us</h2>
            </div>
        </section>
        <section id="statementsSection" class="themeBg py-5">
            <div class="container-lg">
                <div id="statementsCover" class="col-sm-11 m-auto">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="playerBtnCover">
                                <div class="playerBtn d-none"><i class="fa-solid fa-play"></i></div>
                            </div>
                            <div class="switchBtns themeBg">
                                <button data-statement-id="mission" class="btn switch switchActive"><i class="fa-solid fa-bullseye"></i> MISSION</button>
                                <button  data-statement-id="vision" class="btn switch"><i class="fa-regular fa-eye"></i> VISION</button>
                                <button  data-statement-id="values" class="btn switch"><i class="fa-solid fa-shield"></i> VALUES</button>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="statements">
                                <div id="mission" class="statement statementActive">
                                    <span class="title">MISSION STATEMENTS</span>
                                    <h3 class="mt-3 text-start">Empowering Dreams Worldwide</h3>
                                    <p class="desc">At Maple West, we empower global dreams by providing expert immigration solutions. We simplify the complex journey, offering unwavering guidance, support, and dedication.</p>
                                </div>
                                <div id="vision" class="statement d-none">
                                    <span class="title">VISION STATEMENTS</span>
                                    <h3 class="mt-3 text-start">Charting a Boundless Future</h3>
                                    <p class="desc">Maple West envisions a world where borders do not limit human potential. We strive to become a global leader in immigration services, fostering unity and opportunity by seamlessly connecting people with their dreams and aspirations across nations.</p>
                                </div>
                                <div id="values" class="statement d-none">
                                    <span class="title">VALUES STATEMENTS</span>
                                    <h3 class="mt-3 text-start">Guiding Principles: Our Core Values</h3>
                                    <p class="desc">Maple West envisions a world where borders do not limit human potential. We strive to become a global leader in immigration services, fostering unity and opportunity by seamlessly connecting people with their dreams and aspirations across nations.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="certified" class="themeBg pb-5">
            <div class="container-lg">
                <div class="row">
                    <div class="col m-auto">
                        <div class="licensed themeBgDark d-flex justify-content-center gap-3 justify-content-md-between align-items-center flex-wrap rounded-3 p-4">
                            <h3 class="regulationBy">Licensed & <br>Regulated by the CICC</h3>
                            <div class="regulationAuthority">
                                <img class="h-100 w-100" src="<?=base_url()?>assets/images/rcif.webp" alt="">
                            </div>
                            <div class="expert">
                                <h6>Get Expert Help</h6>
                                <h3></h3>
                                <a class="nav-link" href="tel:+919988775500">
                                    <h4><i class="fa-solid fa-phone" style="color: #478bff;"></i> +91 8195002001</h4>
                                </a>
                                <a class="nav-link" href="https://wa.me/919988775500?text=hey">
                                    <h4><i class="fa-brands fa-whatsapp" style="color: #43c931;"></i> Connect On Whatsapp</h4>
                                </a>
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
        <section id="blogs" class="themeBg pt-5 pb-5">
            <div class="container-lg">
                <div class="sectionHeading">
                    <div class="info">
                        <h2 class="">Latest News</h2>
                        <span>Explore our comprehensive immigration services,<br> including visa assistance, family sponsorship, work permits, citizenship support, and more. <br>Your journey to a new life starts here.</span>
                    </div>
                    <div class="viewAll">
                        <button class="btn btn-theme3 btn-rounded">View All News</button>
                    </div>
                </div>
                <div class="row flex-wrap justify-content-center flex-md-nowrap row-gap-4">
                    <div class="col-md-6">
                        <a target="_blank" href="<?=$news->entry[0]->link['href']?>" class="featuredPost h-100">
                            <div class="featuredImage"><img class="h-100 w-100" src="<?=base_url()?>assets/images/blog.jpg" alt="" srcset=""></div>
                            <div class="details">
                                <h4 class="title"><?=substr($news->entry[0]->title,0)?></h4>
                                <span class="author"><i class="fa-solid fa-user"></i><em><?=$news->entry[0]->author->name?></em></span>
                                <span class="lastUpdated d-none">
                                    <?php $date = new DateTime($news->entry[0]->updated); ?>
                                    <?="Updated on : ".$date->format('d M y')?>
                                </span>
                                <p class="description"><?=substr($news->entry[0]->summary,0)?></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 recentPosts">
                        <?php $i=0; foreach ($news->entry as $entry):  if($i==5){break;} if($i>0){ //var_dump($entry->link['href'])?>
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
                        <?php }$i++; endforeach; ?>
                    </div>
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
    </main>
    <?php $this->load->view('layout/footer') ?>
    <?php $this->load->view('layout/scripts') ?>
    <script>
        const switchBtns =document.querySelectorAll('.switch');
        switchBtns.forEach(switchBtn => {
            switchBtn.addEventListener('click',()=>{
                const active =document.querySelector('.switchActive');
                active.classList.remove('switchActive');
                switchBtn.classList.add('switchActive');
                const statement =document.getElementById(switchBtn.getAttribute('data-statement-id'));
                const activeStatement =document.querySelector('.statementActive');
                activeStatement.classList = "statement d-none";
                statement.classList = "statement statementActive";
            })
        });
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
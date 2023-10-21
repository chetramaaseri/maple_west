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
        .post{
            background-color: #eee;
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
        .singlePost{
            background-color: #eee;
            padding: 30px 50px;
        }
        .postContent p, .postContent h1, .postContent h2, .postContent h3, .postContent h4, .postContent h5, .postContent h6, .postContent ul, .postContent li{
            margin: 10px 0;
            color: #000;
        }
        .postContent p{
            margin-bottom: 20px;
        }
        .postContent h1{
            margin: 25px 0 30px 0;
            font-weight: 800;
        }
        .postContent h2{
            margin: 20px 0 25px 0;
            font-weight: 600;
        }
        .postContent h3{
            margin: 17px 0 20px 0;
        }
        .postContent h4{
            margin: 12px 0 15px 0;
        }
        .postContent h5{
            margin: 10px 0 10px 0;
        }
        .postContent h6{
            margin: 5px 0 5px 0;
        }
        .postContent a{
            color: var(--theme-color2);
        }
        .postContent ul{
            margin: 10px 0;
        }
        .postContent img{
            display: flex;
            margin: auto;
        }
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">Post</h2>
            </div>
        </section>
        <section id="blogs" class="themeBg pb-5">
            <div class="container-lg">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="singlePost">
                            <span class="category text-theme text-capitalize"><?=ucwords($this->seo->fetchCategory($post['categories'][0]))?></span>
                            <h2 class="my-4 text-start text-black fw-bold title"><?=(isset($post['title']['rendered']) ? $post['title']['rendered'] : "Post - Mapple West Immigration Services" )?></h2>
                            <span class="date text-black"><?php $date = new DateTime($post['date']); echo $date->format("F d, Y");  ?></span>
                            <div class="postContent">
                                <?=$post['content']['rendered']?>
                                <!-- <p>Canadian Experience Class (CEC) is a Canadian immigration program that uses Express Entry. It is one of the most popular ways for people with Canadian work experience to obtain permanent residency. As the name suggests, one of the core eligibility requirements for CEC is to have Canadian work experience. Let’s dig deeper into CEC requirements.</p>
                                <h2>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam ipsam facere nihil! Perferendis, praesentium.</h2>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Reiciendis obcaecati sed quibusdam, porro quod libero iste laborum ipsa dicta cumque id in voluptatum at sit amet minus ipsum recusandae nulla quaerat ut accusantium vero consectetur dolorum! Aliquid iusto cupiditate sint neque architecto incidunt eum odio tenetur reprehenderit voluptatibus? Maiores facere pariatur perspiciatis quo nam facilis. Quisquam, quod! Quisquam nam earum magni odit amet porro aspernatur nobis labore a nostrum, voluptatibus minima dignissimos ut! Error labore sed totam praesentium eveniet odit, aut at impedit voluptatibus explicabo? Fugiat necessitatibus molestiae facere quod voluptas rerum eaque voluptate quas temporibus, nulla est nostrum possimus!</p>
                                <h3>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi molestias, maxime eligendi velit nesciunt officia eum fugiat et ullam! Magnam, impedit odit ratione id nobis amet quisquam neque explicabo ab?</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo harum officiis, non necessitatibus labore cupiditate facere eos ea cumque ab minus recusandae rem quae, a alias quis, aliquid qui commodi! Saepe ipsum voluptatem officia ex assumenda labore voluptate dicta cupiditate culpa suscipit magnam quisquam deleniti ullam iste, vel fuga veniam maxime qu<a href="">Lorem ipsum dolor sit amet consectetur adipisicing.</a>as ducimus nesciunt magni minus dolorum modi? Aperiam sed ipsum quia odit officia dolores, ea obcaecati impedit reprehenderit dolorem nulla sunt illo laboriosam! Quibusdam provident placeat repellat natus, rerum obcaecati, omnis maxime laudantium, similique praesentium dicta iste fugiat fuga accusamus nostrum. Animi neque esse illum quis! Sed velit amet modi iusto mollitia deleniti tempora unde aperiam, rem nesciunt dolores, veritatis omnis, eveniet eos! Nulla officiis reiciendis laboriosam eveniet? Asperiores eaque soluta a nesciunt doloribus doloremque laborum aliquid magni deserunt ratione accusamus, vero, molestias modi aut perspiciatis sapiente iusto fuga expedita praesentium, totam non debitis excepturi quis? Fugiat, ab at.</p>

                                <ul>
                                    <li>Lorem ipsum dolor sit.</li>
                                    <li>Lorem ipsum dolor sit.</li>
                                    <li>Lorem ipsum dolor sit.</li>
                                    <li>Lorem ipsum dolor sit.</li>
                                    <li>Lorem ipsum dolor sit.</li>
                                </ul>
                                 -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="info themeBgLight d-flex justify-content-center align-items-center flex-column p-3">
                            <h2 class="text-theme fw-bold text-center mb-2">Maple West</h2>
                            <h3 class="text-center mb-4">Expert Immigration<br>Consultants</h3>
                            <p class="text-center">We're a team of immigration consultants who have gone through the hurdles of immigration ourselves. We provide high-quality professional immigration services that bring real results.</p>
                            <button class="btn btn-theme2">Book A Consultation</button>
                        </div>
                        <div class="info themeBgLight d-flex justify-content-center align-items-center flex-column p-3 my-3">
                            <h2 class="text-theme fw-bold text-center mb-2">Free Consulatation</h2>
                            <h3 class="text-center mb-4">Get a Chance to <br>Get a Free Consultation</h3>
                            <p class="text-center">
                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Totam vitae ea in similique? Quidem provident quis illum iste, fugit officia possimus voluptatum quas? A, praesentium sequi. Nulla dolore voluptatem velit aperiam tempore earum ducimus quis eum dolores quasi a itaque eligendi iusto ipsam, tenetur minus dicta in accusamus, animi facere quam necessitatibus blanditiis aspernatur! Ipsam.
                            </p>
                            <button class="btn btn-theme2">Book A Consultation</button>
                        </div>
                        <div class="info themeBgLight d-flex justify-content-center align-items-center flex-column p-3 my-3">
                            <h2 class="text-theme fw-bold text-center mb-2">Maple West</h2>
                            <h3 class="text-center mb-4">Expert Immigration<br>Consultants</h3>
                            <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore doloribus iste dolorem beatae quae, ipsa optio voluptas ducimus nostrum quas temporibus officiis unde atque exercitationem amet libero, voluptate minus. Praesentium quos nesciunt sit mollitia vel illo suscipit obcaecati itaque eveniet! Tempore porro provident libero cum laborum autem quas voluptates praesentium.</p>
                            <button class="btn btn-theme2">Book A Consultation</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="reviews" class="themeBg py-5">
            <div class="container-lg">
                <div class="sectionHeading">
                    <div class="info">
                        <h2 class="">What People Say About Us</h2>
                        <span>Lorem, ipsum dolor sit amet consectetur adipisicing <br>elit. Quaerat laboriosam nisi assumenda corrupti deserunt laborum.</span>
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
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
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
                                        <p class="review">Maple West is the USP of the immigration services. Absolutely hassle free and trustworthy. Only the one who has gone through .</p>
                                        <div class="profile"><img src="https://lh3.googleusercontent.com/a-/AD_cMMT-fAtDI8CnL1VGpvFAflmyY7q-q-PE-ydnQ4pE_idg2g=w75-h75-p-rp-mo-br100" alt="" class="h-100 w-100 rounded-circle"></div>
                                        <h6 class="name">Gursharan Singh</h6>
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
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109552.37343962683!2d75.77427179144519!3d30.900319089481545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a837462345a7d%3A0x681102348ec60610!2sLudhiana%2C%20Punjab!5e0!3m2!1sen!2sin!4v1693726690772!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>
        <section id="contactForm" class="themeBg pb-4">
            <div class="row g-0">
                <div class="col-sm-8 m-auto themeBgLight p-5">
                    <div class="row g-0">
                        <div class="col-md-6 p-3">
                            <h2 class="h1 mb-4 text-dark">Feel Free to Contact us Anytime</h2>
                            <p class="text-start text-dark">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis sequi tempora nostrum. Neque atque exercitationem cumque nesciunt voluptatibus fugiat? Vel dolores velit beatae ab dicta expedita! Architecto vero beatae officia.</p>
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
                        <div class="col-md-6 py-3">
                            <form class="row g-0" method="POST">
                                <div class="col-6 px-2">
                                    <input name="name" type="text" class="form-control mb-3 rounded-0" placeholder="Name">
                                </div>
                                <div class="col-6 px-2">
                                    <input name="mobile" type="tel" class="form-control mb-3 rounded-0" placeholder="Mobile">
                                </div>
                                <div class="col-6 px-2">
                                    <input name="email" type="email" class="form-control mb-3 rounded-0" placeholder="Email">
                                </div>
                                <div class="col-6 px-2">
                                    <input name="country" type="text" class="form-control mb-3 rounded-0" placeholder="Country">
                                </div>
                                <div class="col-12 px-2">
                                    <textarea name="message" class="form-control mb-3 rounded-0"  id="" cols="30" rows="6" placeholder="write a message here"></textarea>
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
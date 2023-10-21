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
        #address .icon {
            height: 50px;
            width: 50px;
            position: relative;
            z-index: 9;
        }
        #address .icon img {
            position: relative;
            z-index: 9;
        }
        #address .icon:before {
            position: absolute;
            content: '';
            background: #2e3840;
            width: 40px;
            height: 40px;
            right: -20px;
            bottom: -15px;
            z-index: 1;
        }
        #address .location, #address .callNumber, #address .openingHrs{
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 40px;
        }
        #address .callDetails{
            display: flex;
            justify-content: flex-start;
            gap: 40px;
            align-items: flex-start;
        }
        #contactCta{
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
        .callUsNow{
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
        #featureImage{
            background-image: url(https://maplewestimmigration.com/assets/images/check.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .statements,.playerBtnCover ,.playerBtn{
            height: 500px;
            display: flex;
            /* justify-content: center; */
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
        .service{
            position: relative;
            height: 450px;
            width: 700px;
            display: flex;
            justify-content: flex-start;
            align-items: flex-end;
            padding: 20px;
            text-decoration: none;
            color: #fff;
        }
        .service .backgroundImage{
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: -1;
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
            .btn-y-margin{
                margin-block: 10px;
            }
            .processContent{
                height: 190px !important;
            }
            .featuredPost .details{
                max-height: none;
                min-height: 15%;
            }
            .service {
                width: 400px;
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
                <h2 class="heading text-center">Business Investor Class</h2>
            </div>
        </section>
        <section id="statementsSection" class="themeBg py-5">
            <div class="container-lg">
                <div id="statementsCover" class="col-sm-11 m-auto">
                    <div class="row">
                        <div class="col-sm-6"  id="featureImage"></div>
                        <div class="col-sm-6">
                            <div class="statements flex-column p-3 themeBgLight">
                                <h3 class="fw-bold">Business Investor Class ?</h3>
                                <p>
                                    Business Investor Class The Business Investor Class (BIC) is a category in Canada's immigration system aimed at attracting individuals with significant financial resources and business expertise to contribute to the Canadian economy. While the federal Immigrant Investor Program is no longer in operation, various provinces offer their own investor and entrepreneur immigration streams under the Provincial Nominee Program (PNP)
                                </p>
                                <ul>
                                    <li>Purpose: The Business Investor Class (BIC) is a category in Canada's immigration system aimed at attracting individuals with significant financial resources and business expertise.</li>
                                    <li>Immigrant Investor Program (IIP): Historically, the IIP was a federal-level program within BIC, allowing individuals to obtain Canadian permanent residency by making a substantial investment in the Canadian economy.</li>
                                    <li>Entrepreneur Program: Another component of BIC was the Entrepreneur Program, which encouraged applicants to start and manage businesses in Canada.</li>
                                    <!-- <li>Changes: The federal IIP was closed in the past, and some Canadian provinces and territories introduced their own investor and entrepreneur immigration streams under the Provincial Nominee Program (PNP).</li>
                                    <li>Varied Criteria: Criteria and investment requirements for BIC programs can vary depending on the specific province or territory within Canada.</li>
                                    <li>Economic Contribution: BIC programs aim to stimulate economic growth by attracting individuals who can make significant financial contributions and create jobs in Canada.</li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="services" class="themeBg pb-5">
            <div class="container-lg">
                <div class="sectionHeading">
                    <div class="info">
                        <h2 class="">Immigration Services</h2>
                        <span>Explore our comprehensive immigration services, including visa assistance, family sponsorship, work permits, citizenship support, and more. Your journey to a new life starts here.</span>
                    </div>
                    <div class="viewAll"></div>
                </div>
                <div id="servicesSlides" class="splide" aria-label="Beautiful Images">
                    <div class="splide__track">
                        <ul class="splide__list">
                            <li class="splide__slide">
                                <div class="service">
                                    <div class="background-overlay"></div>
                                    <div class="backgroundImage"><img class="w-100 h-100" src="<?=base_url()?>assets/images/travel.jpg" alt="" srcset=""></div>
                                    <div class="content">
                                        <h3 class="title">Starter Visa</h3>
                                        <p class="description">
                                            A "Starter Visa" typically refers to a visa category designed for individuals who want to start or invest in a new business venture in a specific country. These visas often come with requirements related to business plans, investment capital, and job creation, encouraging entrepreneurial activity and economic growth.
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide">
                                <div class="service">
                                    <div class="background-overlay"></div>
                                    <div class="backgroundImage"><img class="w-100 h-100" src="<?=base_url()?>assets/images/people-moving.jpg" alt="" srcset=""></div>
                                    <div class="content">
                                        <h3 class="title">Self-Employed Visa</h3>
                                        <p class="description">
                                            The "Self-Employed Visa" is an immigration option for individuals with unique skills or talents, such as artists, athletes, or professionals in cultural industries. It allows them to immigrate to a country to engage in self-employment or freelance work related to their field of expertise.
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide">
                                <div class="service">
                                    <div class="background-overlay"></div>
                                    <div class="backgroundImage"><img class="w-100 h-100" src="<?=base_url()?>assets/images/driving-licence.jpg" alt="" srcset=""></div>
                                    <div class="content">
                                        <h3 class="title">Business Visa</h3>
                                        <p class="description">
                                            A "Business Visa" is a broad category that encompasses various visas tailored to entrepreneurs, investors, and businesspeople. These visas may differ in their specific requirements and eligibility criteria depending on the country. Business visas often facilitate the establishment of new businesses, job creation, and economic development in the host country
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section id="address" class="themeBg py-5">
            <div class="container-lg">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="quickContact">
                            <h1 class="text-start mb-3">Got Immigration or Visa Problems?</h1>
                            <p class="text-secondary pb-4">Please feel free to get in touch with us using the contact form below. We'd love to hear for you welcomed and every pain avoided.</p>
                            <div class="locations d-flex justify-content-between align-items-center">
                                <div class="location mt-5">
                                    <div class="icon"><img src="https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/03/map-1.svg" alt="" class="h-100 w-100"></div>
                                    <div class="details">
                                        <h4 class="title">Ludhiana</h4>
                                        <p class="text-start">First Floor, 492 A,<br> Model Town Ext,<br> near Krishna Mandir Road,<br> Model Town, <br>Ludhiana, Punjab</p>
                                    </div>
                                </div>
                                <div class="location mt-5">
                                    <div class="icon"><img src="https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/03/map-1.svg" alt="" class="h-100 w-100"></div>
                                    <div class="details">
                                        <h4 class="title">Canada</h4>
                                        <p class="text-start">ABC Street , White Road <br>Bell City, Round Town, India</p>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="callDetails">
                                <div class="callNumber">
                                    <div class="icon"><img src="https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/03/support-1.svg" alt="" class="h-100 w-100"></div>
                                    <div class="details">
                                        <h4 class="title">Quick Connect</h4>
                                        <h6 class="subTitle">Phone:</h6>
                                        <p class="text-start">0161-509-4242</p>
                                        <p class="text-start">+1 7782444242</p>
                                        <h6 class="subTitle">Email:</h6>
                                        <p class="text-start">consult@maplewest<br>immigration.com</p>
                                    </div>
                                </div>
                                <div class="openingHrs">
                                    <div class="icon"><img src="https://fastwpdemo.com/newwp/immigo/wp-content/uploads/2022/03/idea-1.svg" alt="" class="h-100 w-100"></div>
                                    <div class="details">
                                        <h4 class="title">Opening Hrs</h4>
                                        <h6 class="subTitle">Mon - Friday:</h6>
                                        <p class="text-start">09.00 am to 07.00 pm</p>
                                        <h6 class="subTitle">Saturday:</h6>
                                        <p class="text-start">10.00 am to 05.00 pm</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <h1 class="text-start mb-3">Let’s Start a Conversation Today!</h1>
                        <p class="text-secondary pb-4">Please feel free to get in touch with us using the contact form below. We'd love to hear for you.</p>
                        <form class="row g-0 mt-5" method="POST">
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
        </section>
        <section id="map" class="themeBg pb-4">
            <div class="embaded">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13696.044954488721!2d75.8309739!3d30.8863466!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a7f72c51820ad%3A0x5d7f6cc2cf114528!2sMaple%20West%20Immigration%20Services%20Inc.!5e0!3m2!1sen!2sin!4v1696104970399!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>
        <section id="contactCta" class="themeBg pb-4">
            <div class="row g-0">
                <div class="col-sm-8 m-auto themeBgLight p-5">
                    <h2 class="h1 mb-4 text-dark">Immigration Services From Experienced Lawyers.</h2>
                    <p class="text-start text-dark">Feel free to contact us with any questions or inquiries about our immigration services. We're here to assist you with visa applications, family sponsorship, work permits, citizenship, and more. Your path to a brighter future begins with a simple message</p>
                    <div class="d-flex justify-content-between align-items-center">
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
                        <button class="btn btn-theme2 callUsNow">Call Us Now</button>
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
        const services = new Splide( '#servicesSlides', {
            type   : 'loop',
            autoplay: true,
            interval: 2000,
            drag   : 'free',
            focus  : 'center',
            autoWidth: true,
            paddingLeft: '2rem',
            paddingRight: '1rem',
            gap: '50px',
            perPage: 3,
            autoScroll: {
                speed: 1,
            },
        });
        services.mount();
    </script>
</body>

</html>
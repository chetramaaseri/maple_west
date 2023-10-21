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
            overflow: hidden;
            cursor: pointer;
        }
        .featuredPost .featuredImage{
            z-index: 1;
            width: 100%;
            transition: 0.3s ease-in-out
        }
        .featuredImage:hover{
            scale: 1.1;
        }
        .featuredPost .details{
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
            gap: 15px;
            align-items: center;
            margin-bottom: 10px;
        }
        .featuredPost .details .author i{
            border: 1px solid #fff;
            border-radius: 50%;
            padding: 7px 9px;
        }
        .recentPost {
            display: flex;
            max-height: 167px;
            margin-bottom: 21px;
        }
        .recentPost .details{
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
        .recentPost .details:hover{
            padding: 30px;
            border-right: 1px solid var(--theme-color2);
            border-top: 1px solid var(--theme-color2);
            border-bottom: 1px solid var(--theme-color2);
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
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">404 Page Not Found</h2>
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
                        <div class="col-sm-6 p-3">
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
                        <div class="col-sm-6 py-3">
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
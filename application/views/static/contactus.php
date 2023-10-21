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
            flex-wrap:wrap;
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
        .embaded{
            box-sizing: border-box;
        }
        .map{
            border: 3px solid var(--theme-color2);
            box-sizing: border-box;
            height: 506px;
            width: calc(50% - 6px);
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
    </style>
</head>

<body>
    <?php $this->load->view('layout/navbar') ?>
    <main class="container-fluid gx-0">
        <section id="hero" class="allCenter">
            <div class="background-overlay"></div>
            <div data-aos="zoom-in" class="content xCenter">
                <h2 class="heading text-center">Contact Us</h2>
            </div>
        </section>
        <section id="address" class="themeBg py-5">
            <div class="container-lg">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="quickContact">
                            <h1 class="text-start mb-3">Got Immigration or Visa Problems?</h1>
                            <p class="text-secondary pb-4">Please feel free to get in touch with us using the contact form below. We'd love to hear for you welcomed and every pain avoided.</p>
                            <div class="locations d-flex justify-content-between align-items-center flex-wrap">
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
                                        <p class="text-start">8028 128 St #214, <br>Surrey, BC V3W 4E9,<br>Canada</p>
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
            <div class="embaded d-flex align-items-center flex-wrap">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13696.044954488721!2d75.8309739!3d30.8863466!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a7f72c51820ad%3A0x5d7f6cc2cf114528!2sMaple%20West%20Immigration%20Services%20Inc.!5e0!3m2!1sen!2sin!4v1696104970399!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.747286329695!2d-122.8672541!3d49.14842240000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d982b0d05255%3A0x94547f9d7dadd301!2s8028%20128%20St%20%23214%2C%20Surrey%2C%20BC%20V3W%204E9%2C%20Canada!5e0!3m2!1sen!2sin!4v1696172680118!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
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
    </script>
</body>

</html>
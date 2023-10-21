<?=$head?>
<link rel="shortcut icon" href="<?=base_url()?>assets/images/favicon.ico" type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link async href="<?=base_url()?>vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<link defer rel="stylesheet" href="<?=base_url()?>vendor/fortawesome/font-awesome/css/all.min.css" />

<!-- <link defer rel="stylesheet" href="<?php //base_url()?>css/animate.css" /> -->
<link defer rel="stylesheet" href="<?=base_url()?>vendor/webtourismus/aos/dist/aos.css" />


<link defer rel="stylesheet" href="<?=base_url()?>vendor\webtourismus\splidejs\dist\css\splide-core.min.css">
<link defer rel="stylesheet" href="<?=base_url()?>vendor\webtourismus\splidejs\dist\css\splide.min.css">

<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;800&display=swap');
:root{
    --primary-color: #171717;
    --theme-color:#152330;
    --theme-color2:#eb1e23;
    --theme-color3:#001529;
    --primary-text-color:#fff;
}
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
    scroll-behavior: smooth;
}
/* util */
.btn-theme{
    background-color: var(--primary-color);
    color: var(--primary-text-color);
}
.btn-theme:hover{
    color: var(--primary-color);
    background-color: var(--primary-text-color);
}
.btn-theme2{
    background-color: var(--theme-color2);
    color: var(--primary-text-color);
}
.btn-theme2:hover{
    color: var(--theme-color2);
    background-color: var(--primary-text-color);
}
.btn-theme3{
    background-color: transparent;
    color: var(--primary-text-color);
    border: 1px solid var(--primary-text-color);
}
.btn-theme3:hover{
    background-color: var(--theme-color);
}
.btn-rounded{
    border-radius: 125px;
    padding: 5px 15px;
}
.btn-large{
    font-size: 25px;
    border-radius: 0px;
    padding: 5px 15px;
}
/* Theme Colors */
.themeBg{
    color: var(--primary-text-color);
    background-color: var(--theme-color);
}
.themeBgLight{
    color: #000 !important;
    background-color: #eee;
}
.themeBgDark{
    color: #fff !important;
    background-color: var(--theme-color3);
}
/* Alignment */
.yCenter{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.xCenter{
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.allCenter{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}
/* text */
.text-theme{
    color: var(--theme-color2);
    font-weight: 600;
}
.heading{
    color: #fff;
    font-size: 75px;
    font-weight: 800;
    line-height: 90px;
    z-index: -1;
}
.sectionHeading{
    margin-bottom: 40px;
    display: flex;
    gap: 10px;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}
.sectionHeading h2{
    font-size: 40px;
    font-weight: 600;
    margin-bottom: 0;
}
.sectionHeading span{
    font-size: 13px;
    font-weight: 300;
}
</style>
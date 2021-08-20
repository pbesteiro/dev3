<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CruceroDelNorte._Default" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>DEV PLACE</title>
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-N8F2VXV');</script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/magnific-popup.css" />
    <link rel="stylesheet" href="assets/css/jquery-ui.css" />
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="assets/css/mediaelementplayer.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/fonts//flaticon/font/flaticon.css" />
    <link rel="stylesheet" href="assets/css/fl-bigmug-line.css" />
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon" />

    <!--<link rel="stylesheet" href="assets/css/aos.css" />-->

    <link rel="stylesheet" href="assets/css/style.css" />

    <!-- Global site tag (gtag.js) - Google Ads: 368077802 -->
    <link rel="stylesheet" href="assets/css/actualizacion27-5.css" />
    
    <link rel="stylesheet" href="assets/css/navbar.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1769489329920279');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" style="display: none"
            src="https://www.facebook.com/tr?id=1769489329920279&ev=PageView&noscript=1" />
    </noscript>
    <!-- End Facebook Pixel Code -->

</head>

<body>
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N8F2VXV"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <form id="form1" runat="server">
        <asp:ScriptManager EnablePageMethods="true" ID="ScriptManager1" runat="server" />
        
        <a href="https://wa.me/5491121685045" 
            class="whatsapp" target="_blank"> 
            <i class="fa fa-whatsapp whatsapp-icon"></i>
        </a>
        <header id="header">

        </header>

        <main>
            <section>
                <div class="overlay"></div>
            </section>
        </main>


        <div class="slide-one-item home-slider owl-carousel">
            <div class="site-blocks-cover overlay background-slide" style="background-image: url(assets/images/hero_bg_3.jpg); height: 45rem;"
                jj>
                <div class="container">
                    <div class="row align-items-center justify-content-center text-center">
                        <div class="col-md-10">
                            <h1 class="title-responsive mb-2">
                                <strong>CAPACITACIONES INTENSIVAS EN DESARROLLO DE SOFTWARE Y
                PRODUCTOS DIGITALES.</strong>
                            </h1>                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="site-blocks-cover overlay" style="background-image: url(assets/images/hero_bg_1.jpg); height: 45rem;"
                data-aos="fade" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center justify-content-center text-center">
                        <div class="col-md-10">
                            <h1 class="title-responsive mb-2">
                                <strong>Desarrolla tu conocimiento e incrementa tus habilidades
                profesionales.</strong>
                            </h1>                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-blocks-cover overlay" style="background-image: url(assets/images/hero_bg_2.jpg); height: 45rem;"
                data-aos="fade" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center justify-content-center text-center">
                        <div class="col-md-10">
                            <h1 class="title-responsive mb-2">
                                <strong>Aprend&eacute; a trabajar con las tecnolog&iacute;as
                m&aacute;s solicitadas por el mercado IT.</strong>
                            </h1>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="parent-index">
            <div class="div1-index">
                <div style="display: flex; flex-direction: column">
                    <div style="place-self: center">
                        <h3 class="line-title-index" style="text-align: center; font-size: 3rem; color: #5d009b">Cursos
                        </h3>
                    </div>
                    <div class="text-img-index">
                        <img src="assets/images/cursos.jpg" style="margin-top: 2em" width="250px" height="200px" alt="" />
                        <p>
                            Incrementa tu conocimiento en nuestros cursos con capacidad
            reducida, para enfocarnos más en tu desarrollo profesional en
            Bases de Datos, Tecnologías para programadores, tecnologías para
            programadores principiantes y herramientas para diseñadores.
                        </p>
                    </div>
                </div>
            </div>
            <div class="div2-index">
                <div style="display: flex; flex-direction: column">
                    <div style="place-self: center">
                        <h3 class="line-title-index" style="text-align: center; font-size: 3rem; color: #5d009b">Programas
                        </h3>
                    </div>
                    <div class="text-img-index">
                        <img src="assets/images/programas.png" width="250px" height="200px" alt="" style="margin-top: 3em;" />
                        <p>
                            Capacítate en nuestros programas de Datos, Para Developers,
            programación Básica y Diseño. Todos nuestros programas son de una
            duración mínima de 3 meses, con grupos reducidos para poder
            generar que los profesionales expertos puedan dedicarte mas tiempo
            para tu desarrollo profesional y así generar la mejor experiencia
            de aprendizaje.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- ********************** CARDS ********************** -->

        <section>
            <h3 class="h3-responsive-index" style="text-align: center; margin-top: 1.5rem; font-size: 3rem; color: #5d009b;">Conoc&eacute; nuestros descuentos
            </h3>
            <section id="app">
                <div class="card-container" style="padding: 2rem">
                    <div v-for="i in items" class="card">
                        <div class="card-top">
                            <!--img src="https://s2.svgbox.net/hero-solid.svg?ic=academic-cap" width="32" height="32" :alt="i.title"!-->
                            <h3 style="font-weight: 500">Universitarios</h3>
                        </div>
                        <h2 class="card-title">10% acumulable</h2>
                        <p class="card-body">
                            Si sos estudiante o graduado de una carrera o tecnicatura IT o
            af&iacute;n, contas con un
            <strong>10% de descuento acumulable</strong> en todos los
            cursos y programas.
                        </p>
                        <%--
            <div class="card-action">
              <a href="#" class="btn-link" style="color: #5d009b"
                >Leer m&aacute;s</a
              >
              <i class="fas fa-arrow-right"></i>
            </div>
                        --%>
                    </div>
                </div>

                <div class="card-container" style="padding: 2rem">
                    <div v-for="i in items" class="card">
                        <div class="card-top">
                            <h3 style="font-weight: 500">Un Solo Pago</h3>
                        </div>
                        <h2 class="card-title">35% de descuento</h2>
                        <p class="card-body">
                            Si abon&aacute;s en <strong>en 1 solo pago</strong> la
            inscripci&oacute;n a cualquiera de los cursos o progrmas disponibles,
            obtenes m&aacute;s de un <strong>35% de descuento</strong>.
                        </p>
                        <%--
            <div class="card-action">
              <a href="#" class="btn-link" style="color: #5d009b"
                >Leer m&aacute;s</a
              >
              <i class="fas fa-arrow-right"></i>
            </div>
                        --%>
                    </div>
                </div>

                <div class="card-container" style="padding: 2rem">
                    <div v-for="i in items" class="card">
                        <div class="card-top">
                            <!--img src="https://s2.svgbox.net/files.svg?ic=node&color=000" width="32" height="32" :alt="i.title"!-->
                            <h3 style="font-weight: 500">Dos Pagos</h3>
                        </div>
                        <h2 class="card-title">25% de descuento.</h2>
                        <p class="card-body">
                            Si abon&aacute;s <strong>en 2 pagos </strong>la
            inscripci&oacute;n a cualquiera de nuetros cursos o programas disponibles,
            obten&eacute;s hasta un <strong>25% de descuento.</strong>
                        </p>
                        <%--
            <div class="card-action">
              <a href="#" class="btn-link" style="color: #5d009b"
                >Leer m&aacute;s</a
              >
              <i class="fas fa-arrow-right"></i>
            </div>
                        --%>
                    </div>
                </div>

                <div class="card-container" style="padding: 2rem">
                    <div v-for="i in items" class="card">
                        <div class="card-top">
                            <!--img src="https://s2.svgbox.net/files.svg?ic=js&color=000" width="32" height="32" :alt="i.title"!-->
                            <h3 style="font-weight: 500">3 a 6 Pagos</h3>
                        </div>
                        <h2 class="card-title">En cursos o programas de 18 clases o m&aacute;s.</h2>
                        <p class="card-body">
                            Abon&aacute; nuestros cursos o programas accediendo a nuestras
            <strong>cuotas sin inter&eacute;s</strong>.
                        </p>
                        <div class="card-action">
                            <button type="button" class="btn btn-link" data-toggle="modal" data-target="#modo_pago">
                                Leer m&aacute;s
                            </button>
                            <i class="fas fa-arrow-right"></i>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!-- +++++++++++++++++++ FIN CARDs +++++++++++++++++++++++ -->
        <!-- +++++++++++++++++++ TEXTOS CON ILUSTRACION +++++++++++++++++++++++ -->
        <section style="margin-bottom: 10rem">
            <h3 class="h3-responsive-index" style="text-align: center; margin-top: 3rem; font-size: 3rem; color: #5d009b;">WorkPlace - Te conseguimos tu empleo en IT
            </h3>
            <div class="contenedor">
                <div class="contenedor-img">
                    <img class="img-entrevista-entrevista" src="assets/images/illustration/entrevista.jpeg" alt="" />
                </div>
                <div>
                    <p>
                        Realizando cualquiera de nuestros cursos o programas podes aplicar para
          <strong>WORKPLACE</strong>, nuestro espacio encargado de acercarte a
          las principales empresas de software e industrias de
          <strong>LATAM</strong>, de manera totalmente gratuita, que esten
          buscando tu perfil.
                    </p>
                </div>
            </div>
        </section>
        <!-- +++++++++++++++++++ TEXTOS CON ILUSTRACION +++++++++++++++++++++++ -->
        <section style="margin-bottom: 10rem">
            <h3 class="h3-responsive-index" style="text-align: center; margin-top: 3rem; font-size: 3rem; color: #5d009b;">Aprende con Proyectos Profesionales
            </h3>
            <div class="contenedor">
                <div>
                    <p>
                        Desarrolla tus habilidades haciendo proyectos reales, aprendiendo a
          partir de situaciones y tareas en la materia del mundo profesional.
                    </p>

                </div>
                <div class="contenedor-img">

                    <img class="img-entrevista-what" src="assets/images/What-makes-a-good-team.jpeg" alt="" />


                </div>
            </div>
        </section>

        <!-- +++++++++++++++++++ TEXTOS CON ILUSTRACION +++++++++++++++++++++++ -->
        <section style="margin-bottom: 10rem">
            <h3 class="h3-responsive-index" style="text-align: center; margin-top: 3rem; font-size: 3rem; color: #5d009b;">Clases online y en vivo con profesionales expertos
            </h3>

            <div class="contenedor">
                <div class="contenedor-img">
                    <img class="img-entrevista-descarga" src="assets/images/descarga (2).jpeg" alt="" />
                </div>
                <div>
                    <p>
                        Todos nuestros cursos y programas son dictados por profesionales de
          la industria. Estos dictaran todas las clases y atenderán tus dudas,
          corregirán tus entregas y se encargaran de que seas un profesional
          en la materia.
                    </p>
                </div>
            </div>
        </section>
        <!-- +++++++++++++++++++ TEXTOS CON ILUSTRACION +++++++++++++++++++++++ -->
        <section style="margin-bottom: 10rem">
            <h3 class="h3-responsive-index" style="text-align: center; margin-top: 3rem; font-size: 3rem; color: #5d009b;">Analista en Educación Acompañandote
            </h3>

            <div class="contenedor">
                <div>
                    <p>
                        Los analistas en educación son especialistas en pedagogía que te
          harán un seguimiento y te acompañaran a lo largo de tu interacción
          con Dev Place. También acompañaran y fomentaran el trabajo en equipo
          y el desarrollo profesional individual y grupal.
                    </p>
                </div>

                <div class="contenedor-img">
                    <img class="img-entrevista-two" src="assets/images/two-men-stand-pc-explain-information-girl_81522-1559.jpeg"
                        alt="" />
                </div>
            </div>
        </section>

        <!-- instituciones -->

        <div class="responsive-institutos row justify-content-center" style="padding: 2rem; padding-top: 3rem">
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/peregrina.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/ciudad.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/fasta.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/fiuba.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/sta.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/uca.png" />
            </div>
            <br>
            <br>
            <br>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/3f.png" />
            </div>
            <div class="responsive-institutos col-lg-2 col-md-3 col-sm-4 col-xs-6">
                <img src="assets/images/DevTech.png" />
            </div>
        </div>

    </form>
    <footer class="site-footer" id="footer">
    </footer>


    <!-- MODOS DE PAGO MODAL -->
    <div class="modal fade" id="modo_pago" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header justify-content-center" style="background-color: #5d009b; color: white;">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="tim-icons icon-simple-remove"></i>
                    </button>
                    <h4 class="title title-up"><b>PAGOS SIN INTER&Eacute;S</b></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <hr class="line-primary" style="margin-top: 0.5em;" />
                        <div class="col-12" style="text-align: center; margin-left: 0.9rem; margin-right: 0.9rem">
                            <ul>
                                <li>Para cursos o programas cuyo programa sea <b>menos a 18 clases</b> podes acceder <b>hasta 4 pagos sin
                                            inter&eacute;s
                                </b>.
                                </li>
                                <li style="margin-top: 0.2rem">Para cursos o programas cuyo programa sea <b>superior o igual a 18 clases</b>,
                                        podes acceder <b>hasta 6 pagos sin inter&eacute;s</b>.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<script src="assets/js/script.js"></script>--%>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="assets/js/jquery-ui.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/mediaelement-and-player.min.js"></script>
    <script src="assets/js/jquery.stellar.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/bootstrap-datepicker.min.js"></script>
    <script src="assets/js/aos.js"></script>

    <script src="assets/js/main.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-K9LZ6RSGWZ"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-K9LZ6RSGWZ');
    </script>

    <script>

        $(document).ready(function () {


            getMenu();

        });


        function getMenu() {
            try {

                PageMethods.GetHtmlMenu
                    ("",
                        function (data) {

                            if (data != "") {
                                $('#header').html(data.Menu);
                                $('#footer').html(data.Footer);

                                $("ul.dropdown-menu [data-toggle='dropdown']").on("click", function (event) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                    $(this).parents('.dropdown-submenu').siblings().find('.show').removeClass("show");
                                    $(this).siblings().toggleClass("show");
                                    $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
                                        $('.dropdown-submenu .show').removeClass("show");
                                    });
                                });
                            }
                        },
                        fnLlamadaError
                    );




            } catch (err) {
                alert(err);
            }
        }


        function fnLlamadaError(excepcion) {
            swal(excepcion.get_message(), "", "error");
        }


        // menu
        $(function () {
           
        });
        // end menu


    </script>

</body>

</html>

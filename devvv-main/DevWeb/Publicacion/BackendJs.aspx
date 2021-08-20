<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BackendJs.aspx.cs" Inherits="CruceroDelNorte.BackendJs" %>

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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/mediaelementplayer.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/fonts//flaticon/font/flaticon.css">
    <link rel="stylesheet" href="assets/css/fl-bigmug-line.css">
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/actualizacion27-5.css">
    <!-- Global site tag (gtag.js) - Google Ads: 368077802 -->
    <link rel="stylesheet" href="assets/css/navbar.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
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
    <!-- End Google Tag Manager (noscript) -->
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



        <!--******++++++++++++MENU++++++++++*********-->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active carousel-developer">
                    <div class="carousel-title">

                        <div style="margin-top: 2rem;" class="container-grid-developer-btn">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***************TITLE************* -->
        <section>
            <div class="line">
                <h3 class="developer-text ">Capacitaciones Intensivas - Escenciales</h3>
            </div>

        </section>
        <!-- **************CARDS************** -->
        <div class="container-developer">
            <div class="item-container">
                <div class="card-developer">
                    <a href="js.aspx">
                        <div style="background: #858AE3;" class="additional-developer">
                            <div class="user-card-developer">
                                <div>
                                    <p class="card-grey-title-developer">Clases</p>
                                </div>
                                <div>
                                    <img class="img-card-developer" src="https://s2.svgbox.net/files.svg?ic=js&color=000" alt="" />
                                </div>
                                <div>
                                    <p class="card-grey-title-developer">online</p>
                                </div>
                            </div>
                            <div class="more-info-developer">
                                <h1>Javascript</h1>
                                <div class="coords-developer">
                                    <span>Duración: 9 semanas</span>
                                </div>

                                <div class="coords-developer">
                                    <span>Sesiones por semana: 2 </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Horas por Sesion: 2 hs </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Capacidad: 15 Alumnos</span>
                                </div>
                            </div>
                        </div>

                        <div class="general-developer">
                            <h1 class="card-title-developer">Javascript</h1>
                            <p class="card-text-developer">
                                El objetivo principal del curso es enseñarte JS, empezando de cero conocimiento en
              JS hasta llevarte a un nivel avanzado y competitivo en el mercado laboral actual.
           
                            </p>
                        </div>
                    </a>
                </div>

            </div>




        </div>
        <!-- **************CARDS************** -->

        <!-- **************CARDS************** -->
        <!-- **************TERMINA GRID 3 CARDS************** -->

        <section>
            <div class="doble-line">
                <h3 class="developer-text2 ">Capacitaciones Intensivas - Cursos - Front End</h3>
            </div>
        </section>

        <div class="container-developer">

            <!-- **************CARDS************** -->
            <div class="item-container">
                <div class="card-developer">
                    <a href="angular.aspx">
                        <div style="background: #858AE3;" class="additional-developer">
                            <div class="user-card-developer">
                                <div>
                                    <p class="card-grey-title-developer">Clases</p>
                                </div>
                                <div>
                                    <img style="height: 4rem; width: 3rem; margin-bottom: 10px; margin-top: 11px;" src="assets/images/icons-cursos/angular-icon.svg" alt="" />
                                </div>
                                <div>
                                    <p class="card-grey-title-developer">online</p>
                                </div>
                            </div>
                            <div class="more-info-developer">
                                <h1>Angular JS</h1>
                                <div class="coords-developer">
                                    <span>Duración: 9 semanas</span>
                                </div>

                                <div class="coords-developer">
                                    <span>Sesiones por semana: 2 </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Horas por Sesion: 2 hs </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Capacidad: 15 Alumnos</span>
                                </div>
                            </div>
                        </div>

                        <div class="general-developer">
                            <h1 class="card-title-developer">Angular JS</h1>
                            <p class="card-text-developer">
                                El curso tiene como meta lograr que el profesional se interiorice con las buenas prácticas en desarrollo de front end, permitiendote entrar fácilmente al framework de Javascript más usado en el mercado laboral.
           
                            </p>
                        </div>
                    </a>
                </div>

            </div>


            <!-- **************CARDS************** -->
            <div class="item-container">
                <div class="card-developer">
                    <a href="reactjs.aspx">
                        <div style="background: #858AE3;" class="additional-developer">
                            <div class="user-card-developer">
                                <div>
                                    <p class="card-grey-title-developer">Clases</p>
                                </div>
                                <div>
                                    <img class="img-card-developer" src="assets/images/icons-cursos/react-2.svg" alt="" />
                                </div>
                                <div>
                                    <p class="card-grey-title-developer">online</p>
                                </div>
                            </div>
                            <div class="more-info-developer">
                                <h1>React JS</h1>
                                <div class="coords-developer">
                                    <span>Duración: 9 semanas</span>
                                </div>

                                <div class="coords-developer">
                                    <span>Sesiones por semana: 2 </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Horas por Sesion: 2 hs </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Capacidad: 15 Alumnos</span>
                                </div>
                            </div>
                        </div>

                        <div class="general-developer">
                            <h1 class="card-title-developer">React JS</h1>
                            <p class="card-text-developer">
                                El curso tiene como meta lograr que el profesional se interiorice con las buenas prácticas en desarrollo de front end, permitiendote entrar fácilmente al framework de Javascript más usado en el mercado laboral.
           
                            </p>
                        </div>
                    </a>
                </div>

            </div>

        </div>
        <section>
            <!-- TERMINA SECCION DE GRIDS -->
            <div class="doble-line">
                <h3 class="developer-text2 ">Formaciones Intensivas - Cursos - Back End</h3>
            </div>
        </section>

        <div class="container-developer">
            <!-- **************CARDS************** -->
            <div class="item-container">
                <div class="card-developer">
                    <a href="nodejs.aspx">
                        <div style="background: #858AE3;" class="additional-developer">
                            <div class="user-card-developer">
                                <div>
                                    <p class="card-grey-title-developer">Clases</p>
                                </div>
                                <div>
                                    <img class="img-card-developer" src="assets/images/icons-cursos/nodejs-1.svg" alt="" />
                                </div>
                                <div>
                                    <p class="card-grey-title-developer">online</p>
                                </div>
                            </div>
                            <div class="more-info-developer">
                                <h1>Node JS</h1>
                                <div class="coords-developer">
                                    <span>Duración: 9 semanas</span>
                                </div>

                                <div class="coords-developer">
                                    <span>Sesiones por semana: 2 </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Horas por Sesion: 2 hs </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Capacidad: 15 Alumnos</span>
                                </div>
                            </div>
                        </div>

                        <div class="general-developer">
                            <h1 class="card-title-developer">Node JS</h1>
                            <p class="card-text-developer">
                                El objetivo del curso es darte todos los conocimientos necesarios para que puedas afrontar cualquier desafío en esta tecnologia, desarrollando junto al mentor una aplicación API RESTFUL.

                            </p>
                        </div>
                    </a>
                </div>

            </div>

            <!-- **************CARDS************** -->
            <div class="item-container">
                <div class="card-developer">
                    <a href="csharp.aspx">
                        <div style="background: #858AE3;" class="additional-developer">
                            <div class="user-card-developer">
                                <div>
                                    <p class="card-grey-title-developer">Clases</p>
                                </div>
                                <div>
                                    <img style="height: 6rem; width: 6rem;" src="assets/images/icons-cursos/Csharp_Logo.png" alt="" />
                                </div>
                                <div>
                                    <p class="card-grey-title-developer">online</p>
                                </div>
                            </div>
                            <div class="more-info-developer">
                                <h1>C#</h1>
                                <div class="coords-developer">
                                    <span>Duración: 9 semanas</span>
                                </div>

                                <div class="coords-developer">
                                    <span>Sesiones por semana: 2 </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Horas por Sesion: 2 hs </span>
                                </div>
                                <div class="coords-developer">
                                    <span>Capacidad: 15 Alumnos</span>
                                </div>
                            </div>
                        </div>

                        <div class="general-developer">
                            <h1 class="card-title-developer">C#</h1>
                            <p class="card-text-developer">
                                El objetivo principal del curso es enseñarte como realizar una API RESTFUL C#. NET Core implementando autentiacion , repositorios, inyección de dependencias, entre otras cosas.
           
                            </p>
                        </div>
                    </a>
                </div>

            </div>

        </div>




        <!-- FOOTER -->
        <footer class="site-footer" id="footer">
        </footer>

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

                                    //initialice menu
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

        </script>
    </form>
</body>

</html>

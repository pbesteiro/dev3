<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CruceroDelNorte.About" %>

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
    <link rel="stylesheet" href="actualizacion27-5.css">
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

        <section>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img
                            src="assets/images/slide/comprimida.jpeg"
                            style="width: auto; height: 44rem; margin-top: 2rem"
                            class="d-block w-100"
                            alt="..." />
                        <div class="carousel-caption">
                            <h1 class="title-empresas" style="margin-bottom: 14rem; text-transform: uppercase">
                                <strong>Comenzá a trabajar con DevLabs y hace que tu talento crezca</strong>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div
                class="text-empresas"
                style="background-color: #5d009b; width: auto; height: 5rem; margin-left: 2rem; margin-right: 2rem; font-family: 'Montserrat', sans-serif; font-weight: 500;">
                <h3 class="title-general" style="text-align: center; color: #fff; padding-top: 1.5rem; margin-top: 2rem;"><strong>DevLabs</strong></h3>
            </div>
            <div class="contenedor">
                <div>
                    <img
                        class="img-empresas"
                        src="assets/images/illustration/it-lab_4x.png"
                        style="width: 25rem; height: 25rem; margin-top: 2rem; margin-left: 6rem"
                        alt="" />
                </div>
                <div>
                    <h2 class="title-about1" style="text-align: left; padding-top: 1.5rem; margin-top: 2rem"><strong>Armamos tu laboratorio a medida</strong></h2>
                    <p class="about-text" style="font-size: 1.5rem; margin-top: 2rem; margin-right: 8rem">
                        Si tu equipo no esta capacitado para realizar un desarrollo específico, te creamos el ambiente adecuado donde serán mentoreados por un experto en la materia. 
                    </p>
                </div>
            </div>
        </section>



        <section style="padding-bottom: 4rem">

            <h3 class="title-about" style="text-align: left; margin-left: 8rem; margin-top: 5rem;"><strong>Capacitamos a tu equipo IT.</strong></h3>


            <div class="contenedor">
                <div>
                    <p class="about-text" style="font-size: 1.5rem; margin-top: 2rem; margin-left: 8rem">
                        Enfocate en tu negocio mientras nosotros capacitamos a tu equipo en una o más tecnologías, no sálo realizaremos una capacitación profunda en habilidades duras, sino que también nos ocuparemos de que potencien sus habilidades blancas como trabajo en equipo, comunicación y pensamiento crítico con nuestro equipo de especialistas en RRHH y analistas en aprendisaje.
                    </p>
                </div>
                <div>
                    <img
                        class="img-empresas"
                        style="width: 25rem; height: 25rem; margin-left: 6rem"
                        src="assets/images/illustration/programming.jpeg"
                        alt="" />
                </div>

            </div>
        </section>

        <section style="padding-bottom: 4rem">
            <div class="text-empresas"
                style="background-color: #5d009b; width: auto; height: 5rem; color: #fff; padding-top: 1.5rem; margin-top: 2rem; margin-left: 2rem; margin-right: 2rem;">
                <h3 class="title-general" style="text-align: center; font-weight: 500; color: #fff;"><strong>WorkPlace</strong></h3>
            </div>


            <div class="contenedor">
                <div>
                    <img
                        class="img-empresas"
                        style="width: 25rem; height: 25rem; margin-left: 6rem"
                        src="assets/images/workplace.jpg"
                        alt="" />
                </div>
                <div>
                    <h2 class="title-about1" style="text-align: left; padding-top: 1.5rem; margin-top: 2rem"><strong>Delega en nosotros la búsqueda y selección de perfiles IT</strong></h2>
                    <!--p class="about-text" style="font-size: 1.5rem; margin-top: 2rem; margin-right: 8rem">
            Sumate a nuestra bolsa de trabajo para tener contacto directo con nuestros egresados. Si queres asociarte envíanos un email a <a href="mailto:empresas@devplace.com.ar">empresas@devplace.com.ar</a>.
          </p-->
                    <p class="about-text" style="font-size: 1.5rem; margin-top: 2rem; margin-right: 8rem">
                        Suma talentos a tu equipo. Comentanos tus necesidades puntuales y nosotros te acercamos a los mejores.
                    </p>
                </div>
            </div>
        </section>

        <section>
            <h3 class="title-about" style="text-align: left; margin-left: 8rem; margin-top: 5rem;"><strong>Perfiles Job Ready </strong></h3>

            <div class="contenedor">
                <div>
                    <p class="about-text" style="font-size: 1.5rem; margin-top: 2rem; margin-left: 8rem">
                        Preparamos a los mejores profesionales junior para que estén listos para adaptarse a cualquier trabajo del rubro tecnológico.
                    </p>
                </div>
                <div>
                    <img
                        class="img-empresas"
                        style="text-align: center"
                        src="assets/images/illustration/concepto-ilustracion-contratacion-contratacion-personajes_269730-148.jpeg"
                        alt="" />
                </div>

            </div>
        </section>

        <section style="padding-bottom: 8rem">
            <div class="text-empresas"
                style="background-color: #5d009b; width: auto; height: 5rem; color: #fff; padding-top: 1.5rem; margin-top: 2rem; margin-left: 2rem; margin-right: 2rem;">
                <h3 class="title-general" style="text-align: center; color: #fff; font-weight: 500;"><strong>Contactanos</strong></h3>
            </div>
            <p class="about-text1" style="font-size: 1.5rem; text-align: center; margin-top: 2rem;">
                Si te interezan algunos de nuestros servicios envianos un email a <a href="mailto: empresas@devplace.com.ar">empresas@devplace.com.ar</a> y nos contactaremos a la brevedad.
            </p>
        </section>

    </form>
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
</body>
</html>

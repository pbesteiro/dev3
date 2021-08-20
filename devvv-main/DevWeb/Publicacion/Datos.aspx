<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="CruceroDelNorte.Datos" %>

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
                <div class="carousel-item active carousel-datos">
                    <div class="carousel-title-datos">

                    
                    </div>
                </div>
            </div>
        </div>

        <!-- ***************TITLE************* -->
        <section>
            <div class="line">
                <h3 class="developer-text ">Capacitaciones Intensivas - Datos</h3>
            </div>
            <div class="container-developer">
                <div class="item-container">
                    <div class="card-developer">
                        <a href="datascience.aspx">
                            <div style="background: #FF9100;" class="additional-developer">
                                <div class="user-card-developer">
                                    <div>
                                        <p class="card-grey-title-developer">Clases</p>
                                    </div>
                                    <div>
                                        <img class="img-card-developer" src="assets/images/icons-cursos/database.svg" alt="" />
                                    </div>
                                    <div>
                                        <p class="card-grey-title-developer">online</p>
                                    </div>
                                </div>
                                <div class="more-info-developer">
                                    <h1>Science</h1>
                                    <div class="coords-developer">
                                        <span>Duración: 6 meses</span>
                                    </div>

                                    <div class="coords-developer">
                                        <span>Sesiones por semana: 2 </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Horas por Sesion: 2 h 30 m </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Capacidad: 30 Alumnos</span>
                                    </div>
                                </div>
                            </div>

                            <div class="general-developer">
                                <h1 class="card-title-developer">Data Science</h1>
                                <p class="card-text-developer">
                                    El objetivo del programa es proporcionar conocimientos, metodologías y herramientas sólidas para poder  entender, interpretar y extraer datos en modelos predictivos.
                                </p>
                            </div>
                        </a>
                    </div>

                </div>

                <!-- **************CARDS************** -->
                <div class="item-container">
                    <div class="card-developer">
                        <a href="analytics.aspx">
                            <div style="background: #FF9100;" class="additional-developer">
                                <div class="user-card-developer">
                                    <div>
                                        <p class="card-grey-title-developer">Clases</p>
                                    </div>
                                    <div>
                                        <img class="img-card-developer" src="assets/images/icons-cursos/database.svg" alt="" />
                                    </div>
                                    <div>
                                        <p class="card-grey-title-developer">online</p>
                                    </div>
                                </div>
                                <div class="more-info-developer">
                                    <h1>Analytics</h1>
                                    <div class="coords-developer">
                                        <span>Duración: 3 meses</span>
                                    </div>

                                    <div class="coords-developer">
                                        <span>Sesiones por semana: 2 </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Horas por Sesion: 3 hs </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Capacidad: 30 Alumnos</span>
                                    </div>
                                </div>
                            </div>

                            <div class="general-developer">
                                <h1 class="card-title-developer">Data Analytics</h1>
                                <p class="card-text-developer">
                                    El objetivo del programa es proporcionar conocimientos que le permitan al profesional extraer datos y transformarlos en información analitico en todo tipo de organizaciones. 
                                </p>
                            </div>
                        </a>
                    </div>

                </div>
                <!-- **************CARDS************** -->
                <%-- <div class="item-container">
                    <div class="card-developer">
                        <a href="#">
                            <div style="background: #FF9100;" class="additional-developer">
                                <div class="user-card-developer">
                                    <div>
                                        <p class="card-grey-title-developer">Clases</p>
                                    </div>
                                    <div>
                                        <img class="img-card-developer" src="assets/images/icons-cursos/database.svg" alt="" />
                                    </div>
                                    <div>
                                        <p class="card-grey-title-developer">online</p>
                                    </div>
                                </div>
                                <div class="more-info-developer">
                                    <h1>Learning</h1>
                                    <div class="coords-developer">
                                        <span>Duración: 6 meses</span>
                                    </div>

                                    <div class="coords-developer">
                                        <span>Sesiones por semana: 2 </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Horas por Sesion: 2 h 30 m </span>
                                    </div>
                                    <div class="coords-developer">
                                        <span>Capacidad: 30 Alumnos</span>
                                    </div>
                                </div>
                            </div>

                            <div class="general-developer">
                                <h1 class="card-title-developer">Machine Learning</h1>
                                <p class="card-text-developer">
                                    El objetivo del programa es proporcionar conocimientos que le permitan al profesional crear modelos machine learning aplicables a entornos productivos. 
                                </p>
                            </div>
                        </a>
                    </div>

                </div>--%>
            </div>
        </section>
        <!-- **************CARDS************** -->
        <div class="container-developer">
        </div>

        <!--************** MODAL - POP UP - FORM CORTO  ****************** -->

        <div id="open-modal" class="modal-window">
            <div>
                <div>
                    <a href="#" title="Close" class="modal-close">
                        <img src="/assets/images/cancel.png" alt="" /></a>
                </div>
                <form id="contact" action="" method="post">
                    <h3 class="title-form-popup">Formulario de contacto</h3>
                    <fieldset>
                        <input placeholder="Nombre y Apellido" type="text" tabindex="1" required autofocus />
                        <input placeholder="Correo Electrónico" type="email" tabindex="2" required />
                        <input placeholder="Numero de Teléfono" type="tel" tabindex="4" required />
                        <select class="select-popup" name="slist">
                            <option value="vacio">Provincia deResidencia</option>
                            <option value="Buenos Aires">Buenos Aires</option>
                            <option value="Buenos Aires Capital">Buenos Aires Capital</option>
                            <option value="Catamarca">Catamarca</option>
                            <option value="Chaco">Chaco</option>
                            <option value="Chubut">Chubut</option>
                            <option value="Cordoba">Cordoba</option>
                            <option value="Corrientes">Corrientes</option>
                            <option value="Entre Rios">Entre Rios</option>
                            <option value="Formosa">Formosa</option>
                            <option value="Jujuy">Jujuy</option>
                            <option value="La Pampa">La Pampa</option>
                            <option value="La Rioja">La Rioja</option>
                            <option value="Mendoza">Mendoza</option>
                            <option value="Misiones">Misiones</option>
                            <option value="Neuquen">Neuquen</option>
                            <option value="Rio Negro">Rio Negro</option>
                            <option value="Salta">Salta</option>
                            <option value="San Juan">San Juan</option>
                            <option value="San Luis">San Luis</option>
                            <option value="Santa Cruz">Santa Cruz</option>
                            <option value="Santa Fe">Santa Fe</option>
                            <option value="Santiago del Estero">Santiago del Estero</option>
                            <option value="Tierra del Fuego">Tierra del Fuego</option>
                            <option value="Tucuman">Tucuman</option>
                        </select>
                        <select class="select-popup" name="slist">
                            <option value="">Buenos aires</option>
                            <option value="buenos aires">¿Como conociste Devplace?</option>
                            <option value="Buenos Aires">Instagram</option>
                            <option value="Buenos Aires Capital">Twitter</option>
                        </select>
                    </fieldset>
                    <div>
                        <p class="asterisco-popup">* Todos los campos son obligatorios</p>
                    </div>
                    <div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                            <label class="form-check-label" for="flexCheckDefault">
                                <p class="terminos-condiciones">
                                    Acepto <a href="#">terminos y condiciones</a>
                                </p>
                            </label>
                        </div>
                    </div>
                    <fieldset>
                        <button style="text-transform: uppercase;" name="submit" type="submit" id="contact-submit">
                            <a href="Contact.html">Aplica </a>
                        </button>
                    </fieldset>
                </form>
            </div>
        </div>

    </form>

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
</body>

</html>

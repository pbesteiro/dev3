<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReactJs.aspx.cs" Inherits="CruceroDelNorte.ReactJs" %>

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

    <link rel="stylesheet" href="assets/css/aos.css" />


    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />


    <link rel="stylesheet" href="assets/css/navbar.css" />
    <link rel="stylesheet" href="assets/css/reactjs.css" />
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

        <!--******++++++++++++HEADER FIN++++++++++*********-->
        <!--******++++++++++++TEXT BANNER++++++++++*********-->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active carousel">
                    <div class="carousel-title">
                        <div class="container-grid-developer-btn">
                            <button class="btn-aplica-slide" type="button">
                                <a href="#proximas-fechas" class="btn-aplica-scroll">Aplica</a>
                            </button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="parent">
            <div class="div1">
                <h3 class="title-general">¿Qué vas a aprender?</h3>
                <div class="text-analytics">
                    <div>
                        <p class="div1-text1-sql">
                            El objetivo principal del curso es enseñarte ReactJS, empezando de cero hasta llevarte a un nivel avanzado 
                            y competitivo. Este curso te ayudará a introducirte fácilmente al framework de JavaScript más usado en el mercado 
                            laboral. ReactJS te abrirá un mundo de posibilidades en la creación de interfaces dinámicas y escalables, 
                            ya que este fue diseñado específicamente para el desarrollo de potentes interfaces de usuario. 
                            El curso tiene como meta lograr que te interiorices con las buenas prácticas en desarrollo de Front End. 
                            ReactJS es una de las librerías de JavaScript más potentes y populares que existe. 
                            Dentro de las aplicaciones más destacadas creadas con ReactJS, se encuentra Instagram, una de las redes sociales 
                            más populares del mundo.
                        </p>
                    </div>
                    <div>
                        <img width="250vw" height="250vw" src="assets/images/dw1.jpg" alt="" />
                    </div>
                </div>
            </div>
            <div class="div2">
                <div class="card-cursos">
                    <div class="contenido-card" id="precios">
                    </div>


                </div>
            </div>
            <div class="div3">
                <h3 class="title-general">¿A quién va dirigido?</h3>
                <p>
                    El curso está dirigido a estudiantes de la carrera de sistemas o afines (siendo en universidad o tecnicaturas) 
                    o profesionales de la industria que tengan experiencia mínima de 8 meses desarrollando JavaScript. 
                    En caso de no contar con esta experiencia, te recomendamos realizar nuestro curso de JavaScript.
                </p>

                <img width="250vw" height="250vw" src=" assets/images/data-analytics-programa.jpg" alt="">

                <h3 class="title-general">Requisitos</h3>
                <ul>
                    <li>● Sólidos conocimientos de programación </li>
                    <li>● Sólidos conocimientos en Javascript, ES6</li>
                    <li>● Nociones de CSS</li>
                </ul>

                <h3 class="title-general">Herramientas de Desarrollo</h3>
                <ul>
                    <li>● Visual Studio Code (<a href="https://code.visualstudio.com/download" >Descarga</a>). </li>
                    <li>● Google Chrome (<a href="https://www.google.com/intl/es/chrome/?brand=UUXU&gclid=EAIaIQobChMI7tGaleiP8gIV9Al9Ch1o3Q5cEAAYASAAEgJeCvD_BwE&gclsrc=aw.ds">Descarga</a>).</li>
                    <li>● Github (<a href="https://github.com/">https://github.com/</a>).</li>
                </ul>

            </div>
            <div class="div4">
                <h3 class="title-general">Proyecto Final</h3>


                <p>
                    El proyecto final e integrador que se realiza durante la cursada, será aquel que en caso de estar aprobado, 
                    la institución (DEV PLACE) emitirá un certificado de aprobación del curso. En todas las clases, 
                    el mentor dispondrá de los primeros 10 minutos en concepto de "daily" para que los alumnos puedan mostrar avances 
                    y evacuar dudas. Al terminar el curso se hará una clase extra donde los alumnos tendrán que exponer el proyecto y defenderlo. 
                    Finalizada la exposición, el alumno tendrá que entregar el proyecto para que el mentor lo corrija según las 
                    rúbricas de evaluación dispuestas por DEV PLACE. 
                    Posteriormente el mentor le alcanzará una devolución al alumno donde se considerará si el proyecto está 
                    "aprobado" o se debe "volver a hacer".
                </p>
            </div>

            <div class="div5">
                <h3 class="title-general">Perfil del Egresado</h3>
                <div class="flex-egresado">
                    <p>Al finalizar este programa estará capacitado para: </p>
                    <ul>
                        <li>● Crear aplicaciones en React JS siguiendo las mejores prácticas.</li>
                        <li>● Dominar JSX para crear aplicaciones en React Js. </li>
                        <li>● Crear componentes reutilizables.</li>
                        <li>● Crear una aplicación cliente que consuma una API externa con autenticación y rutas protegidas.</li>
                        <li>● Usar librerías de terceros.</li>
                        <li>● Publicar tu aplicación en internet.</li>
                    </ul>
                    <img width="390vw" height="250vw" src="assets/images/concepto-ceremonia-graduacion-virtual_23-2148573423.jpeg" alt="">
                </div>
            </div>

            <div class="div6">
                <section id="proximas-fechas">
                </section>
            </div>


        </div>

    </form>


    <!--************** MODAL - POP UP - FORM CORTO  ****************** -->
    <div id="open-modal-aplica" class="modal-window-fechas">
    </div>




    <!-- FOOTER -->
    <footer class="site-footer" id="footer">
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>

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

        function addScrollEfect() {
            $(".btn-aplica-scroll").on('click', function (event) {

                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 800, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
        }

        function getMenu() {
            try {
                PageMethods.GetHtmlMenu
                    ("",
                        function (data) {

                            if (data != "") {
                                $('#header').html(data.Menu);
                                $('#footer').html(data.Footer);
                                $("#proximas-fechas").html(data.CursesItems);
                                $("#precios").html(data.CurseFees);

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


                                addScrollEfect();
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

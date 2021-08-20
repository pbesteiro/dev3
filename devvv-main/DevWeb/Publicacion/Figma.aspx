<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Figma.aspx.cs" Inherits="CruceroDelNorte.Figma" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>DEV
        PLACE</title>
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
    <link rel="stylesheet" href="assets/css/figma.css" />
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
                        <button class="btn-aplica-slide">
                            <a href="#proximas-fechas" class="btn-aplica-scroll">Aplica</a>
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="parent">
        <div class="div1">
            <h3 class="title-general">¿Por qué Data Analytics?</h3>
            <div class="container-text">
                <div>
                    <p>
                        En la actualidad los datos que se generan y se almacenan en las
                        organizaciones aumentan exponencialmente a medida que transcurre
                        el tiempo. Este incremento trae como consecuencia que el proceso
                        de analizar dichos datos sea cada vez más complejo, lo que ha
                        motivado el desarrollo de áreas de conocimiento que abarquen, no
                        solo procedimientos y técnicas de análisis estadísticas, sino
                        también la preparación en herramientas tecnológicas que permitan
                        llevar a cabo el proceso de análisis de una manera ágil y rápida.
                        Es así como las organizaciones se han visto en la necesidad de
                        incorporar los recursos tecnológicos y humanos, para permitirse
                        transformar los datos y la analítica en activos reales que generen
                        valor de negocio, y con ello lograr una diferencia competitiva en
                        el mercado.
                    </p>
                </div>
                <div>
                    <img class="img1-data" width="350vw" height="350vw" src="assets/images/data-analytics.jpg" alt="" />
                </div>
            </div>
            <p class="metodologia-text">
                No obstante, si bien el tema tecnológico es posible resolverse
                equipando a la empresa de infraestructura computacional, bien sea en
                un entorno cloud, on-premise o combinaciones de ellos; el tema de
                incorporar y mantener el recurso humano capacitado en áreas de
                conocimiento integrales, relacionadas al manejo de datos, se ha
                convertido en uno de los grandes desafíos a los que se enfrentan las
                organizaciones a nivel mundial. Esto último se traduce en una falta
                ocupacional en las posiciones relacionadas con el procesamiento de
                grandes volúmenes de datos en general (ingeniería de datos) y la
                analítica de datos en particular. El Data analytics dentro de una
                organización se ha convertido entonces en un recurso indispensable
                para su crecimiento y expansión, lo que convierte a esta área de
                conocimiento en una oportunidad segura para ampliar el alcance
                profesional.
            </p>
        </div>
        <div class="div2">
            <div class="card-cursos">
                <div class="contenido-card">
                    <p class="p-numero">Data Analytics</p>

                    <div class="container-button-card">
                        <button class="button-card">
                            <a href="#">Quiero Inscribirme</a>
                        </button>
                    </div>
                    <p class="p-info-descuentos">10% de descuento si sos graduado</p>
                    <p class="p-info-developers">DATOS</p>
                    <div class="parent-card">
                        <div class="div1-card"> <img src="assets/images/icon-card/grupo.png" alt=""> </div>
                        <div class="div2-card"><img src="assets/images/icon-card/duracion.png" alt=""> </div>
                        <div class="div3-card"><img src="assets/images/icon-card/modalidad.png" alt=""> </div>
                        <div class="div4-card"> <img src="assets/images/icon-card/mentor.png" alt=""></div>
                        <div class="div5-card">
                            <h6 class="title-card-data"> Grupos Reducidos</h6>
                            <p class="small-card">Cupo de 30 alumnos</p>
                        </div>
                        <div class="div6-card">
                            <h6 class="title-card-data">Duración</h6>
                            <p class="small-card">3 meses</p>
                        </div>
                        <div class="div7-card">
                            <h6 class="title-card-data">Modalidad</h6>
                            <p class="small-card">Online - En vivo</p>
                        </div>
                        <div class="div8-card">
                            <h6 class="title-card-data"> Mentor</h6>
                            <p class="small-card">Profesional experto en Data Analytics</p>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="div3">
            <h3 class="title-general">¿Qué vas a aprender?</h3>
            <div class="text-analytics">
                <div>
                    <p class="div1-text1">
                        El objetivo principal del curso es enseñarte JavaScript actual, empezando de cero conocimiento
                        en
                        JavaScript hasta llevarte a un nivel avanzado y competitivo en el mercado laboral . Este curso
                        te ayudará a
                        entrar fácilmente a frameworks basados en este lenguaje de programación y ayudarte a mejorar
                        las
                        habilidades en JavaScript.
                    </p>
                </div>
                <div>
                    <img width="350vw" height="350vw" src="assets/images/data-analytics.jpg" alt="" />
                </div>
            </div>
            <p class="p-text-data">

                Aprender JavaScript hoy en día es una necesidad de cualquier desarrollador Front-End que inclusive
                puede
                expandirse al Back-End y desarrollo móvil. JavaScript es uno de los lenguajes más demandados en la
                industria y saberlo utilizar es fundamental para ser competitivo en el mercado laboral, y este curso
                tiene
                por objetivo darte lo que necesitas para mantenerte al día en este lenguaje.
            </p>
        
        <h3 class="title-general">¿A quién va dirigido?</h3>
        <div class="flex-egresado">
            <p class="text-responsive-fsj">
                El curso está dirigido a estudiantes de la carrera de sistemas o afines (siendo en universidad o
                tecnicaturas) o profesionales de la industria que tengan experiencia mínima de 6 meses
                desarrollando en
                algún lenguaje de programas.
            </p>
            <img style="margin-right: 0 !important;"  width="250vw" height="250vw" class="objetivos-programa-img"
                src=" assets/images/data-analytics-programa.jpg" alt="">
        </div>
        <h3 class="title-general">Requisitos</h3>

        <ul>
            <li> ● Conocimientos básicos de programación</li>
            <li>
                ● Deben de tener una computadora con Google Chrome</li>
            <li>
                ● Conocimiento básico de HTML es recomendable, pero no requerido.</li>
        </ul>
        <h4>Herramientas de desarrollo</h4>

        <ul>
            <li> ● Visual Studio Code</li>
            <li>
                ● Google Chrome</li>
            <li>
                ● Github (GIT)
                <ul>
                    <li><a href="
                        https://github.com/">
                            ○ https://github.com/ </a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="div4">
        <h3 class="title-general">Dedicación</h3>
        <p class="text-responsive-fsj">
           La dedicación estimada para el curso es de 20 horas semanales que involucran 2 encuentros semanales online de 2 horas cada uno, sumada también la preparación individual asincrónica de proyectos individuales y grupales. (pair programing y mob programing).

            </p>
      
    </div>
    <div class="div5">

        <h3 class="title-general">Perfil del Egresado</h3>
        <div class="flex-egresado">


        </div>
        <ul style="margin-bottom: 0;" class="text-responsive-fsj">
            <li> El egresado será capaz de:</li>
            <br>
            <li> ● Manejar JavaScript y su sintaxis</li>
            <br>
            <li>
                ● Uso de importaciones y sintaxis moderna de JavaScript
            </li>
            <br>
            <li>
                ● Pasar de un nivel cero a intermedio - avanzado
            </li>
            <br>
            <li>
                ● Tener la base sólida, para entrar a frameworks como AngularJS, React o Node
            </li>
        </ul>


        <img style="margin-right: 0 !important;    width: 23em !important;
                  margin-left: -1em;" class="perfil-egresado-img"
            src="assets/images/concepto-ceremonia-graduacion-virtual_23-2148573423.jpeg" alt="">

    </div>
    <div class="div6">
        <section id="proximas-fechas">

        </section>
    </div>

    </div>
     

        <!--************** MODAL - POP UP - FORM CORTO  ****************** -->

        <div id="open-modal" class="modal-window">
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
                                    $("#proximas-fechas").html(data.CursesItems);

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

            function getFormAplica(curseItemId) {
                try {
                    PageMethods.GetFormAplica
                        (curseItemId,
                            function (data) {

                                if (data != "") {
                                    $('#open-modal-aplica').html(data);
                                    // alert(data);
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

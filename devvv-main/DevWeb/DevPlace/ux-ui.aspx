<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ux-ui.aspx.cs" Inherits="CruceroDelNorte.ux_ui" %>

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

    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/actualizacion27-5.css" />
    <!-- Global site tag (gtag.js) - Google Ads: 368077802 -->
    <link rel="stylesheet" href="assets/css/navbar.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/style-cursos.css" />
    
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
        <!--******++++++++++++HEADER++++++++++*********-->
        <header id="header">
        </header>
        <!--******++++++++++++HEADER FIN++++++++++*********-->
        <!--******++++++++++++TEXT BANNER++++++++++*********-->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active carousel-diseñoux">
                    <div class="carousel-title-diseñoux">
                        <div class="container-grid-developer-btn">
                            <button class="btn-aplica-slide" type="button">
                                <a href="#proximas-fechas-data" class="btn-aplica-scroll">Aplica</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--******++++++++++++ FIN TEXT BANNER++++++++++*********-->
        <div class="parent-diseñoux">
            <div class="div1">
                <h3 class="title-general">Objetivo del Curso</h3>
                <div class="text-analytics">
                    <div>
                        <p class="div1-text1">
                            El objetivo del curso es darte todos los conocimientos necesarios para que puedas afrontar cualquier
            desafío en esta tecnología. Para eso, realizaremos un proyecto basado en una pequeña red social con
            funciones básicas, implementando la separación de responsabilidades en capas, inyección de dependencias,
            y dividiendo nuestra lógica de acceso a datos, modelos y lógica de negocio.
            Persistiremos la información en bases tanto locales como en la nube.
            Trabajaremos con Programación Orientada a Objetos, Principios Solid y Patrones de Diseño. Implementaremos
            la seguridad con Json Web Tokens, y utilizaremos un cliente REST para probar nuestros servicios, los cuales
            se encontrarán securizados.
            En todo el desarrollo se utilizarán buenas prácticas de implementación para la creación de nuestra
            aplicación Web API.
         
                        </p>
                    </div>
                    <div>
                        <img class="img1-data" src="assets/images/uxui.jpg" alt="" />
                    </div>
                </div>

            </div>
            <!-- /////////////////********** ¿Qué vas a aprender? ************//////////////////// -->

            <div class="div2">
                <h3 class="title-general">¿A quién va dirigido?</h3>
                <div class="flex-egresado">
                    <p class="text-responsive-fsj">
                        El curso está dirigido a estudiantes de los primeros años de la carrera de sistemas (siendo en universidad o
          tecnicaturas) o profesionales de la industria que tengan experiencia mínima de 6 meses desarrollando en
          Javascript.
       
                    </p>
                    <img class="objetivos-programa-img" src=" assets/images/data-analytics-programa.jpg" alt="">
                </div>
                <h4 class="title-top">Requisitos</h4>
                <ul>
                    <li>● Conocimientos básicos de programación
        </li>
                    <li>● Conocimientos en Javascript</li>
                    <li>● Deben de tener una computadora con Google Chrome </li>
                </ul>
                <h4 class="title-top">Herramientas</h4>
                <ul>
                    <li>● Visual Studio Code </li>
                    <li>● Google Chrome</li>
                    <li>● Github (GIT)
         
                        <ul>
                            <li><a href="https://github.com/">○ https://github.com/</a></li>
                        </ul>
                    </li>
                </ul>
                <h6>Dedicación</h6>
                <p class="text-responsive-fsj">
                    La dedicación estimada para el curso es de 20 horas semanales 
                   que involucran 2 encuentros semanales online de 2 horas cada uno, 
                   sumada también la preparación individual asincrónica de proyectos 
                   individuales y grupales. (pair programing y mob programing).
                </p>
              

            </div>
            <!-- /////////////////********** Metodologia  ************//////////////////// -->

            <div class="div3">
                <div>
                    
                    <h3 class="title-top">Proyecto Final</h3>

                    <p class="text-responsive-fsj">
                       El proyecto final e integrador sera aquel que en caso de estar aprobado, 
                    la institución (DEV PLACE) emitirá un certificado de aprobación del curso/programa. 
                    Se tendrá que  realizar durante la cursada. Todas las clases el mentor dispondrá los primeros 10 minutos 
                    en concepto de  "daily" donde los alumnos podrán mostrar avances y evacuar dudas opcionalmente 
                    y al terminar el curso/programa se hará una clase extra donde los alumnos tendrán que exponer el proyecto y defenderlo. 
                    Finalizada la exposición los alumnos tendrán que entregar el proyecto para que el mentor 
                    lo corrija según las rubricas de evaluación dispuestas por DEV PLACE y posteriormente pueda alcanzarles 
                    una devolución al alumno donde se considerara que el proyecto esta  "aprobado" o "volver a hacer".
                    </p>
                </div>
            </div>


            <!-- /////////////////********** Perfil del egresado  ************//////////////////// -->

            <div class="div4">
                <h3 class="title-general">Perfil del Egresado</h3>
                <div class="flex-egresado">


                    <ul class="text-responsive-fsj">
                        <li style="margin-bottom: 2vh;">El egresado será capaz de:</li>
                        <li>● Realizar Web APIs con NodeJS y TypeScript</li>
                        <li>● Utilizar el framework Nest Js
          </li>
                        <li>● Trabajar con las últimas herramientas de Desarrollo como Npm y Git.
          </li>

                        <li>● Instalar, configurar y trabajar con Docker. </li>
                        <li>● Crear Servicios Rest. </li>
                        <li>● Acceder a la Base de Datos utilizando Mongoose.</li>
                        <li>● Separar la Lógica de Negocios del acceso a datos, así como la separación de Responsabilidades
            implementando los principios SOLID de desarrollo. </li>
                        <li>● Utilizarán el Servicio Integrado de Inyección de Dependencias.</li>
                        <li>● Implementarán Json Web Tokens (JWT) para control de autenticación y administración
            de roles.</li>
                        <li>● Deployar la Api en los servidores Heroku y la base de datos en MongoDb Atlas.</li>

                    </ul>
                    <img class="perfil-egresado-img" src="assets/images/concepto-ceremonia-graduacion-virtual_23-2148573423.jpeg"
                        alt="">
                </div>


            </div>
            <!-- /////////////////********** PROXIMAS FECHAS ************//////////////////// -->

            <div class="div5">
                <section id="proximas-fechas-data">
                    <h3 class="title-general">Proximas fechas</h3>


                </section>

            </div>


            <!-- /////////////////********** CARD PRECIO COLUMN  ************//////////////////// -->

            <div class="div7">
                <div class="card-cursos-diseñoux">
                    <div class="contenido-card">
                        <p class="p-numero">Diseño UX & UI</p>

                        <div class="container-button-card">
                            <button class="button-card">
                                <a href="#">Quiero Inscribirme</a>
                            </button>
                        </div>
                        <p class="p-info-descuentos">10% de descuento si sos graduado</p>
                        <p class="p-info-developers">Diseño</p>
                        <div class="parent-card">
                            <div class="div1-card">
                                <img src="assets/images/icon-card/grupo.png" alt="">
                            </div>
                            <div class="div2-card">
                                <img src="assets/images/icon-card/duracion.png" alt="">
                            </div>
                            <div class="div3-card">
                                <img src="assets/images/icon-card/modalidad.png" alt="">
                            </div>
                            <div class="div4-card">
                                <img src="assets/images/icon-card/mentor.png" alt=""></div>
                            <div class="div5-card">
                                <h6 class="title-card-data">Grupos Reducidos</h6>
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
                                <h6 class="title-card-data">Mentor</h6>
                                <p class="small-card">Profesional experto en Data Analytics</p>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- /////////////////********** CARD PRECIO COLUMN  ************//////////////////// -->


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

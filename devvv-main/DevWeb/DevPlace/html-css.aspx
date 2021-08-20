<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="html-css.aspx.cs" Inherits="CruceroDelNorte.html_css" %>

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
    <link rel="stylesheet" href="assets/css/html-css.css" />
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
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active carousel">
                    <div class="carousel-title">
                        <div class="container-grid-developer-btn">

                            <div class="container colorwhite">        
                                <div class="row">
                                    <div class="col-sm-12 col-md-6 pd-120" >
                                        <h4><u>CURSOS</u> > <u>PROGRAMACION BASICA</u> > HTML - CSS</h4>
                                        <h4 class="pt-3">MODALIDAD ONLINE <b>EN VIVO</b></h4>
                                        <h1 class="pt-1">HTML - CSS</h1>
                                        <h4 class="pt-5"><i class="fas fa-check"></i> Duracíon 9 semanas</h4>
                                        <h4><i class="fas fa-check"></i> 2 sesiones por semana</h4>
                                        <h4><i class="fas fa-check"></i> 2 horas por sesión</h4>
                            
                                         <div class="row pt-3">
                                            <div class="col-sm-12 col-md-5">
                                                <a href="#proximos"><button type="button" class="btn btn-primary head-button-card head-button-card-white">Inscribirme</button></a>
                                            </div>
                                            <div class="col-sm-12 col-md-6">
                                                <a href="assets/programas/html-css.pdf" target="_blank"><button type="button" class="btn btn-primary head-button-card head-button-card-tans">Descargar Programa</button></a> 
                                            </div>
                                         </div>

                                    </div>
                                    <div class="col-sm-6">
                                    </div>
                                </div>


                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <div class="container card-desc" id ="curso">        
            <div class="row">
                <div class="col-sm-12">
                    <div class="card shadow" >
                      <div class="card-body">

                        <div class="row">
                            <div class="col-sm-12 col-md-4">
                                <h6 class="card-subtitle mb-2 text-muted title-card-new">HTML - CSS</h6>
                                <p class="card-text">Programación básica</p>
                                <p class="card-text promocion-card">No necesitas conocimientos previos en programación</p>
                                <a href="#proximos"><button type="button" class="btn btn-primary promocion-button-card">Inscribirme</button></a>                   
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <p class="card-text">Grupos reducidos</p>
                                <p class="card-text pt-4">Clases Personalizadas</p>
                                <p class="card-text pt-4">Capacidad de 30 alumnos</p>
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <p class="card-text">Certificado al aprobar el proyecto final</p>
                                <p class="card-text pt-4">Mentor profesional experto en desarrollo de software con HTML-CSS</p>                        
                            </div>
                        </div>

                      </div>
                    </div>
                </div>
            </div>        
        </div>
    
        <div class="container pt-5 pb-5">        
            <div class="row m-4">
                <div class="col-sm-7">
                     <h3>¿Que vas a aprender?</h3>
                    <p class="">El objetivo de este curso es enseñarte a desarrollar una página web de viajes a la cual se podrá acceder desde diferentes dispositivos, ya sea una computadora, tablet o celular.
                                Contará con un diseño moderno, con animaciones y elementos multimedia. Además, tendrá varias secciones para que los usuarios puedan ver los precios, realizar consultas y ver destinos destacados.
                    </p>
                </div>
                <div class="col-sm-5">
                    <image src="assets/images/front1.png" width="100%" ></image>
                </div>
            </div>
            <div class="row pt-5  m-4">
                <div class="col-sm-5">
                   <image src="assets/images/front2.png" width="100%" ></image> 
                </div>
                <div class="col-sm-6">
                    <h3>¿A quién va dirigido?</h3>
                    <p>El curso está dirigido a personas con experiencia mínima o nula en programación.</p>
                    <div class="row pt-5">
                        <div class="col-sm-12">                           
                                <h3>Requisitos</h3>
                                <i class="fas fa-check"></i> Conocimiento básico de paquete office.<br />
                        </div>                        
                    </div>
                </div>
            </div>   
              <div class="row pt-5  m-4">
                <div class="col-sm-7">
                    <h3>Proyecto final</h3>
                    <p>El proyecto final e integrador que se realiza durante la cursada, será aquel que en caso de estar aprobado, la institución (DEV PLACE) emitirá un certificado de aprobación del curso. En todas las clases, el mentor dispondrá de los primeros 10 minutos en concepto de "daily" para que los alumnos puedan mostrar avances y evacuar dudas. Al terminar el curso se hará una clase extra donde los alumnos tendrán que exponer el proyecto y defenderlo. Finalizada la exposición, el alumno tendrá que entregar el proyecto para que el mentor lo corrija según las rúbricas de evaluación dispuestas por DEV PLACE. Posteriormente el mentor le alcanzará una devolución al alumno donde se considerará si el proyecto está "aprobado" o se debe "volver a hacer".</p>
                    <h3 class="pt-5">Perfil de egresado</h4>
                    <p>Al finalizar este curso estará capacitado para :<br /><br />
                        ● Desarrollar páginas web siguiendo las mejores prácticas.<br />
                        ● Utilizar HTML y CSS.<br />
                        ● Crear sitios web responsive.</p><br />

                </div>
                <div class="col-sm-5">
                    <image src="assets/images/front3.png" width="100%" ></image>
                </div>
            </div>          

        </div>

        <div class="container card-desc pt-5" id="proximos">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card-body" id="proximas-fechas">
                    </div>
                </div>
            </div>
        </div>




        <!--************** MODAL - POP UP - FORM CORTO  ****************** -->
        <div style="margin-top: 10rem;" id="open-modal-aplica" class="modal-window-fechas">
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

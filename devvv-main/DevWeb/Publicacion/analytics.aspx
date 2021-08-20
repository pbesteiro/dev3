<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analytics.aspx.cs" Inherits="CruceroDelNorte.analytics" %>

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
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap"
        rel="stylesheet" />

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
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
        crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />


    <link rel="stylesheet" href="assets/css/navbar.css" />
    <link rel="stylesheet" href="assets/css/data-analytics.css" />
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
        <!--******++++++++++++HEADER++++++++++*********-->
        <header id="header">
        </header>
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
                <h3 class="title-general">¿Por qué Data Analytics?</h3>
                <div class="container-text">
                    <div>
                        <p>En la actualidad los datos que se generan y se almacenan en las organizaciones aumentan exponencialmente a 
                            medida que transcurre el tiempo. Este incremento trae como consecuencia que el proceso de analizar dichos 
                            datos sea cada vez más complejo, lo que ha motivado el desarrollo de áreas de conocimiento que abarquen, 
                            no solo procedimientos y técnicas de análisis estadísticas, si no también la preparación en herramientas 
                            tecnológicas que permitan llevar a cabo el proceso de análisis de una manera ágil y rápida. 
                            Es así como las organizaciones se han visto en la necesidad de incorporar los recursos tecnológicos y humanos, 
                            para permitirse transformar los datos y la analítica en activos reales que generen valor de negocio, 
                            y con ello lograr una diferencia competitiva en el mercado.
                        </p>
                    </div>                   
                </div>
                <p class="metodologia-text">
                    No obstante, si bien el tema tecnológico es posible resolverse equipando a la empresa de infraestructura computacional, bien sea en un entorno cloud, on-premise o combinaciones de ellos; el tema de incorporar y 
                    mantener el recurso humano capacitado en áreas de conocimiento integrales, relacionadas al manejo de datos, se ha convertido en uno de los 
                    grandes desafíos a los que se enfrentan las organizaciones a nivel mundial. Esto último se traduce en una falta ocupacional en las posiciones 
                    relacionadas con el procesamiento de grandes volúmenes de datos en general (ingeniería de datos) y la analítica de datos en particular. 
                    El Data Analytics dentro de una organización se ha convertido entonces en un recurso indispensable para su crecimiento y expansión, 
                    lo que convierte a esta área de conocimiento en una oportunidad segura para ampliar el alcance profesional.
                </p>
            </div>
            <div class="div2">
                <div class="card-cursos">
                    <div class="contenido-card" id="precios">
                    </div>


                </div>
            </div>
            <div class="div3">
                <h3 class="title-general">¿Qué vas a aprender?</h3>
                <div class="flex-egresado">
                    <div>
                        <p>Tendrás conocimientos, metodologías y herramientas sólidas que te permitirán extraer datos y transformarlos en información con el fin de dar soporte analitico a todas las unidades de negocio y en todo tipo de organizaciones.</p>
                    </div>
                    <div>
                        <img class="objetivos-programa-img" src=" assets/images/data-analytics-programa.jpg" alt="">
                    </div>
                </div>
                <h4>¿A quien va dirigido el programa?</h4>
                <p class="metodologia-text">
                    Este programa ha sido pensado para profesionales que desean emprender en el área del análisis de los datos y 
                    que quieran generar impacto dentro de las unidades de negocio de una organización. Es ideal para quienes esperan ampliar
                    o profundizar conocimientos dentro de sus rubros profesionales, como por ejemplo: Administración y/o Negocios, Ingeniería
                    , Economía, Contabilidad o carreras técnicas. También apunta a quienes buscan dar un giro profesional a su programa, 
                    orientándose hacia una nueva disciplina muy demandada en el mercado de diversas industrias.
                </p>

                
                <h3 class="title-general">Requisitos</h3>
                <p>Como requisito indispensable tener ganas de aprender y de reinventarse en su área profesional.  </p>
                <p>Recomendamos como requisitos deseables y no limitantes:  </p>
                <ul>
                    <li>● Conocer conceptos elementales de matemática básica (lógica matemática, álgebra y geometría analítica). </li>
                    <li>● Conocimientos esenciales de estadística descriptiva (población, muestra, medidas de tendencia central y distribuciones de probabilidad).</li>
                    <li>● Fundamentos de la programación (conceptos básicos de algoritmia).</li>
                    <li>● Manejo básico del idioma inglés, ya que en el transcurso del programa se utilizan recursos de aprendizaje digitales escritos y hablados en inglés.</li>
                </ul>

            </div>
            <div class="div4">
                <h3 class="title-general">Metodología</h3>
                <p class="metodologia-text">
                    Este curso es de modalidad virtual y tiene una duración de tres (03) meses. Los contenidos descritos en
                el
                programa se encuentran desarrollados en tres unidades didácticas (UD), que están integradas por
                material de
                lectura obligatoria, actividades de evaluación formativa diseñadas por el docente y un cuestionario en
                cada
                unidad didáctica que integra los conceptos y herramientas abordadas en cada una de ellas. Además, por
                cada
                unidad, se realizará un proyecto integrador que permitirá, a través de un caso de uso, aplicar los
                conceptos
                y herramientas aprendidas, sin limitar la exploración de alternativas de otros recursos o fuentes de
                información.
                En el transcurso del desarrollo del programa se utilizará, además de la plataforma de la institución,
                de
                donde se podrá descargar el material y las herramientas, se dispondrá de un kit de dos canales de
                comunicación: videoconferencias para los encuentros on-line semanales y una herramienta de
                comunicación
                asincrónica (como slack) para realizar preguntas sobre el desarrollo de los trabajos prácticos.
  <br>
                    <br>
                    Los procesos de enseñanza y aprendizaje en entornos virtuales reviste peculiaridades y características
                específicas que la distinguen de la modalidad tradicional presencial. Uno de los elementos
                característicos en
                este tipo de experiencias está constituido por la multilateralidad de la comunicación. Los
                participantes, más
                allá de los roles que desempeñen, se interrelacionan permanentemente, a través de la multiplicidad de
                recursos y herramientas provistas.
                </p>

                 <h3 class="title-general">Proyecto Final</h3>

               <p>
                   El proyecto final e integrador que se realiza durante la cursada, será aquel que en caso de estar aprobado, 
                   la institución (DEV PLACE) emitirá un certificado de aprobación del programa. En todas las clases, 
                   el mentor dispondrá de los primeros 10 minutos en concepto de "daily" para que los alumnos puedan mostrar avances y 
                   evacuar dudas. Al terminar el programa se hará una clase extra donde los alumnos tendrán que exponer el proyecto y 
                   defenderlo. Finalizada la exposición, el alumno tendrá que entregar el proyecto para que el mentor lo corrija según 
                   las rúbricas de evaluación dispuestas por DEV PLACE. Posteriormente el mentor le alcanzará una devolución al alumno 
                   donde se considerará si el proyecto está "aprobado" o se debe "volver a hacer".
                </p>

            </div>
            <div class="div5">
                <h3 class="title-general">Perfil del Egresado</h3>
                <div class="flex-egresado">
                    <p>
                        Al finalizar este programa estará capacitado para transformar datos en información que permitirán
                    tomar
                    decisiones complejas, habrá adquirido las competencias necesarias para su desempeño laboral,
                    convirtiéndolo
                    en un nuevo profesional que:
                    </p>
                    <img class="objetivos-programa-img"
                        src="assets/images/concepto-ceremonia-graduacion-virtual_23-2148573423.jpeg" alt="">
                </div>
                <ul>
                    <li>● Comprende y aplica los conceptos asociados al análisis de datos y la extracción de patrones
                    usando un
                    lenguaje de programación, con el objetivo de identificar las diferentes técnicas y modelos en
                    relación a
                    las aplicaciones potenciales.</li>
                    <br>
                    <li>● Interpreta y transmite las tendencias obtenidas del análisis de datos y su influencia en las
                    métricas de
                    negocio, con el objetivo de potenciar el proceso de toma de decisiones empresariales.
                    </li>
                    <br>
                    <li>● Cumple de manera responsable con las asignaciones para asegurar el éxito del trabajo y la calidad
                    del
                    mismo.
                    </li>
                    <br>
                    <li>● Colabora y participa en forma proactiva para alcanzar las metas y grupales propuestas..
                    </li>
                </ul>
            </div>


            <div class="div6">
                <section id="proximas-fechas">
                </section>
            </div>


        </div>




        <!--************** MODAL - POP UP - FORM CORTO  ****************** -->

        <div id="open-modal" class="modal-window">
        </div>

        
    <!-- CONTACTO -->
    <div class="modal fade" id="formularioContacto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header justify-content-center">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              <i class="tim-icons icon-simple-remove"><img src="assets/images/cancel.png" alt="" width="17" height="17" /></i>
            </button>
            <h4 class="title title-up"><b>FORMULARIO DE CONTACTO</b></h4>
          </div>
          <div class="modal-body" style="text-align: -webkit-center; margin-bottom: 4rem;">
            <div class="row">
              <hr class="line-primary" style="margin-top: 0.5em;" />
              <br />
              <ul class="popUp-list" style=" list-style: none;">
                  <div style="background-color: #5d009b; width: auto; height: 2rem; text-align: center;">
                  <li style="text-align: center; color: #ffffff; font-size: 1.2rem; margin-bottom: 1rem;">
                    <strong>
                      <font color="#ffffff">Dejanos tus datos para que te contactemos</font>
                    </strong>

                  </li>
                </div>             
                
                <div class="container-popUp">
                  <div>
                    <label>Nombre</label>
                      <input type="text" name="name" id="name" class="form-control" />
                  </div>
                 <div>
                    <label>Telefono</label>
                      <input type="text" name="telefono" id="telefono" class="form-control" />
                  </div>
                    <div>
                    <label>Email</label>
                      <input type="text" name="email" id="email" class="form-control" />
                  </div>

                </div>
                <button type="button" class="btn btn-violeta" onclick="Inscripcion(3)">Enviar
                  aqu&iacute;</button> &nbsp;


              </ul>
            </div>
          </div>
        </div>
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

        function openModal() {
            $("#formularioContacto").modal('show');
        }

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

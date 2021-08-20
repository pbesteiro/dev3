<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="CruceroDelNorte.ContactForm" %>

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
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
        href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap"
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
    <link rel="stylesheet" href="assets/css/sweetalert.css" type="text/css" />
    <link
        rel="shortcut icon"
        href="assets/images/favicon.ico"
        type="image/x-icon" />

    <link rel="stylesheet" href="assets/css/aos.css" />
    <link rel="stylesheet" href="assets/css/form-inscripcion.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/actualizacion27-5.css" />
    <!-- Global site tag (gtag.js) - Google Ads: 368077802 -->
    <link rel="stylesheet" href="assets/css/navbar.css" />
    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
        crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />


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

<body class="body-form">
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N8F2VXV"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <form id="form1" runat="server">
        <asp:ScriptManager EnablePageMethods="true" ID="ScriptManager1" runat="server" />
        <!--******++++++++++++HEADER++++++++++*********-->
        <header id="header">
        </header>
        <!--******++++++++++++HEADER FIN++++++++++*********-->
        <section class="section-form">
            <h4 class="banner-form">Formulario de Inscripción</h4>
            <form action="" method="get">
                <!-- ----------- DATOS PERSONALES ----------- -->
                <div class="datos-personales-form">
                    <h3 class="title-general">Datos Personales</h3>
                    <div class="line-form"></div>
                </div>
                <div class="div-form">
                    <p>Nombre y apellido<em class="asterisk">*</em></p>
                    <input type="text" id="nombre" name="nombre" size="30" placeholder="Nombre" />
                    <input
                        type="text"
                        name="apellido"
                        id="apellido"
                        size="30"
                        placeholder="Apellido"
                        class="input-apellido" />
                </div>
                <div class="div-form-calendar">
                    <p>Fecha de nacimiento<em class="asterisk">*</em></p>
                    <input
                        name="fecNac"
                        id="fecNac"
                        size="30"
                        placeholder="DD/MM/AA" />
                </div>
                <div class="div-form">
                    <p>Email <em class="asterisk">*</em></p>
                    <input type="email" id="email" name="email" size="30" placeholder="Ingresa tu email" />
                </div>
                <div class="div-form">
                    <p>Nro Documento <em class="asterisk">*</em></p>
                    <input type="text" name="dni" id="dni" size="30" placeholder="Ingresa tu Nro Documento" />
                </div>

                <div class="div-form">
                    <p>Numero de telefono <em class="asterisk">*</em></p>
                    <input class="input-telefono" type="text" size="30" id="telefono" placeholder="Ingresa tu nro de teléfono" />
                </div>

                <div class="div-form">
                    <p>Provincia en la que resides <em class="asterisk">*</em></p>
                    <select class="select-form" name="countryCode" id="slProvinces">
                    </select>
                </div>
                <div id="DivAcademicInfo" style="display: none;">
                    <!-- ----------- INFORMACION ACADEMICA ----------- -->
                    <div class="info-academica-form">
                        <h3 class="title-general">Informacion académica</h3>
                        <div class="line-form-academica"></div>
                    </div>

                    <div class="div-form">
                        <p>¿Actualmente estás trabajando? <em class="asterisk">*</em></p>
                        <select class="select-form" name="slWorking" id="slWorking" onchange="JavaScript:showWorkInfo();">
                            <option value="-1">Seleccionar</option>
                            <option value="1">Si</option>
                            <option value="0">No</option>
                        </select>
                    </div>

                    <!-- ----------- SI ELIJE *SI* estar trabajando----------- -->
                    <div id="workInfo">
                        <div class="div-form">
                            <p>Puesto </p>
                            <input type="text" name="puesto" id="puesto" size="30" placeholder="Ingresa el puesto que ocupas" />

                        </div>
                        <div class="div-form">
                            <p>Area </p>
                            <input type="text" name="area" id="area" size="30" placeholder="Ingresa el area en la que trabajas" />
                        </div>
                        <div class="div-form">
                            <p>Empresa </p>
                            <input type="text" name="empresa" id="empresa" size="30" placeholder="Ingresa la empresa en la que trabajas" />

                        </div>
                    </div>
                    <div class="div-form">
                        <p>¿Estás buscando trabajo? <em class="asterisk">*</em></p>
                        <select class="select-form" name="" id="slLookingWork">
                            <option value="-1">Seleccionar</option>
                            <option value="1">Sí</option>
                            <option value="0">No</option>
                        </select>
                    </div>

                    <!------------- SI ELIJE *SI* estar trabajando------------->
                    <div class="div-form">
                        <p>
                            Nivel de estudio alcanzado
   
                    <em class="asterisk">*</em>
                        </p>
                        <select class="select-form" name="" id="slEducationLevel">
                            <option value="-1">Seleccionar</option>
                            <option value="1">Secundario incompleto</option>
                            <option value="2">Secundario en curso</option>
                            <option value="3">Secundario completo</option>
                            <option value="4">Terciario en curso</option>
                            <option value="5">Terciario completo</option>
                            <option value="6">Universitario en curso</option>
                            <option value="7">Universitario completo</option>
                            <option value="8">Posgrado en curso</option>
                            <option value="9">Posgrado completo</option>
                        </select>
                    </div>
                    <div class="div-form">
                        <p>
                            ¿Hiciste cursos?
   
                    <em class="asterisk">*</em>
                        </p>
                        <select class="select-form" name="" id="slMadeCurses" onchange="JavaScript:showMadeCurseInfo();">
                            <option value="-1">Seleccionar</option>
                            <option value="1">Si</option>
                            <option value="0">No</option>
                        </select>
                    </div>
                    <div class="div-form" id="curseInfo">
                        <p>
                            Contanos que cursos hiciste<em class="asterisk">*</em>
                        </p>
                        <input type="text" name="cursoRealizado" id="cursoRealizado" size="30" />
                    </div>



                    <!------------- Acerca del curso ----------- -->
                    <div class="info-academica-form">
                        <h3 class="title-general">Sobre el curso</h3>
                        <div class="line-form-academica"></div>
                    </div>
                </div>


                <div class="div-form">
                    <p>Curso - Programa a inscribirme<em class="asterisk">*</em></p>

                    <select class="select-form" name="" id="slCurse" disabled="disabled">
                    </select>
                </div>

                <div class="div-form">
                    <p>¿Como nos conocistes?<em class="asterisk">*</em></p>

                    <select class="select-form" name="" id="slKnowUsBy">
                    </select>
                </div>

                <!-- ----------- Formas de Pago ----------- -->
                <div class="info-academica-form">
                    <h3 class="title-general">Forma de pago</h3>
                    <div class="line-form-academica"></div>
                </div>

                <div class="div-form">
                    <p>¿Como vas a pagar?<em class="asterisk">*</em></p>

                    <select class="select-form" name="" id="slPaymentMode">
                        <option value="-1">Seleccionar</option>
                        <option value="1">Pago online con tarjeta de debito </option>
                        <option value="2">Pago online con tarjeta de credito</option>
                        <option value="3">Transferencia Bancaria</option>
                        <option value="4">Rapipago</option>
                        <option value="5">Deposito en cuenta</option>
                    </select>
                    <p class="text-aclaracion-form"><em class="asterisk">*</em>    Recorda que si queres unirte al debito automático, credito o cbu de todas formas tenes que hacer el primer pago como las formas aclaradas en el campo superior</p>
                </div>

                <div class="div-form">
                    <p>Cantidad de pagos<em class="asterisk">*</em></p>

                    <select class="select-form" name="" id="slPaymentsCount">
                    </select>
                    <p class="text-aclaracion-form"><em class="asterisk">*</em>    Recorda que si queres unirte al debito automático, credito o cbu de todas formas tenes que hacer el primer pago como las formas aclaradas en el campo superior</p>
                </div>


                <div class="div-form">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="chkTermyCond">
                        <label class="form-check-label" for="flexCheckDefault">
                            Acepto <a href="Legales.aspx" target="_blank">T&eacute;rminos y condiciones</a>
                        </label>
                    </div>
                </div>


            </form>
            <div class="container-button-form">
                <button class="btn-form-inscripcion" type="button" onclick="JavaScript:validarFomularioContacto();">
                    Aplica
                </button>
            </div>
        </section>

    </form>
    <!-- FOOTER -->
    <footer style="margin-top: 3rem" id="footer">
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
    <script src="assets/js/sweetalert.min.js" type="text/javascript"></script>

    <script src="assets/js/main.js"></script>
    <script>
        $(document).ready(function () {
            $('#fecNac').datepicker({
                format: 'dd/mm/yyyy'
            });
            $("#workInfo").hide();
            $("#curseInfo").hide();

            getMenu();
            getAdicionalData();
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

        function getAdicionalData() {
            try {

                var url = new URL(location);
                var itemId = url.searchParams.get("curseItem");

                PageMethods.GetAdicionalData
                    (itemId,
                        function (data) {

                            if (data != "") {
                                $('#slProvinces').html(data.Provinces);
                                $('#slKnowUsBy').html(data.knowUsBy);
                                $('#slCurse').html(data.Curse);
                                $("#slPaymentsCount").html(data.Fee);

                            }
                        },
                        fnLlamadaError
                    );
            } catch (err) {
                alert(err);
            }
        }

        function showWorkInfo() {

            var selection = $("#slWorking").val();
            if (selection == 1)
                $("#workInfo").show();
            else
                $("#workInfo").hide();
        }

        function showMadeCurseInfo() {

            var selection = $("#slMadeCurses").val();
            if (selection == 1)
                $("#curseInfo").show();
            else
                $("#curseInfo").hide();
        }


        function validarFomularioContacto() {

            try {

                var nombre = $('#nombre').val();
                var apellido = $('#apellido').val();
                var email = $('#email').val();
                var dni = $('#dni').val();
                var telefono = $('#telefono').val();
                var fecNac = $('#fecNac').val();
                var curso = $('#slCurse option:selected').text();
                var cursoId = $('#slCurse').val();
                var province = $('#slProvinces option:selected').text();
                var provinceId = $('#slProvinces').val();
                var formaPagoId = $('#slPaymentMode').val();
                var formaPago = $('#slPaymentMode option:selected').text();
                var trabajoId = $('#slWorking').val();
                var trabajo = $('#slWorking option:selected').text();
                var puesto = $('#puesto').val();
                var area = $('#area').val();
                var empresa = $('#empresa').val();
                var nivelEducativoId = $('#slEducationLevel').val();
                var nivelEducativo = $('#slEducationLevel option:selected').text();

                var buscaTrabajoId = $('#slLookingWork').val();
                var buscaTrabajo = $('#slLookingWork option:selected').text();
                var realizoCursosId = $('#slMadeCurses').val();
                var realizoCursos = $('#slMadeCurses option:selected').text();
                var cursoRealizado = $('#cursoRealizado').val();
                var termCond = $('#chkTermyCond').prop('checked');
                var formaConocernosId = $('#slKnowUsBy').val();
                var formaConocernos = $('#slKnowUsBy option:selected').text();
                var cantPagos = $('#slPaymentsCount option:selected').text();
                var cantPagosId = $('#slPaymentsCount').val();

                if (nombre.length < 1) {
                    swal("Ingrese su nombre", "", "info");
                    return;
                }

                if (apellido.length < 1) {
                    swal("Ingrese su apellido", "", "info");
                    return;
                }

                if (dni.length < 1) {
                    swal("Ingrese su dni", "", "info");
                    return;
                }

                if (telefono.length < 1) {
                    swal("Ingrese su telefono", "", "info");
                    return;
                }

                if (fecNac.length < 1) {
                    swal("Ingrese su fecha de nacimiento", "", "info");
                    return;
                }

                if (email.length < 1) {
                    swal("Ingrese su correo electronico", "", "info");
                    return;
                }

                if (provinceId < 1) {
                    swal("Por favor, seleccioná la provincia en la que resides", "", "info");
                    return;
                }

                /*   if (trabajoId < 0) {
                       swal("Por favor, seleccioná si estas trabajando o no", "", "info");
                       return;
                   }*/

                if (cantPagosId < 1) {
                    swal("Por favor, seleccioná la cantidad de pagos que vas a realizar", "", "info");
                    return;
                }



                //if (trabajoId == 1) {
                //    if (puesto.length < 1) {
                //        swal("Ingrese el puesto en el que trabajas", "", "info");
                //        return;
                //    }

                //    if (area.length < 1) {
                //        swal("Ingrese el area en la que trabajas", "", "info");
                //        return;
                //    }

                //    if (empresa.length < 1) {
                //        swal("Ingrese la empresa en la que trabajas", "", "info");
                //        return;
                //    }
                //}

                /*   if (buscaTrabajoId < 0) {
                       swal("Por favor, seleccioná si estas buscando trabajo o no", "", "info");
                       return;
                   }
   
                   if (nivelEducativoId < 0) {
                       swal("Por favor, seleccioná tu nivel educativo", "", "info");
                       return;
                   }
   
                   if (realizoCursosId < 0) {
                       swal("Por favor, seleccioná si realizaste algun curso IT", "", "info");
                       return;
                   }*/

                if (formaConocernosId < 0) {
                    swal("Por favor, seleccioná como nos conociste", "", "info");
                    return;
                }

                //if (realizoCursosId == 1) {
                //    if (cursoRealizado.length < 1) {
                //        swal("Ingrese informacion sobre el curso que realizaste", "", "info");
                //        return;
                //    }
                //}


                if (formaPagoId < 1) {
                    swal("Por favor, seleccioná cómo tenés pensado abonar", "", "info");
                    return;
                }




                if (!termCond) {
                    swal("Por favor acepte los términos y condiciones", "", "info");
                    return;
                }

                enviarEmail(nombre, apellido, email, dni, telefono, fecNac, curso, cursoId, province, provinceId,
                    formaPagoId, formaPago, trabajoId, trabajo, puesto, area, empresa, nivelEducativoId, nivelEducativo,
                    buscaTrabajoId, buscaTrabajo, realizoCursosId, realizoCursos, cursoRealizado, formaConocernosId, formaConocernos, cantPagos);



            } catch (err) {
                swal("Error inesperado", err.message, "error");
            }
        }

        function enviarEmail(nombre, apellido, email, dni, telefono, fecNac, curso, cursoId, province, provinceId,
            formaPagoId, formaPago, trabajoId, trabajo, puesto, area, empresa, nivelEducativoId, nivelEducativo,
            buscaTrabajoId, buscaTrabajo, realizoCursosId, realizoCursos, cursoRealizado, formaConocernosId, formaConocernos, cantPagos) {

            try {

                PageMethods.enviarMail
                    (nombre,
                        apellido,
                        email,
                        dni,
                        telefono,
                        fecNac,
                        curso,
                        cursoId,
                        province,
                        provinceId,
                        formaPago,
                        formaPagoId,
                        trabajo,
                        trabajoId,
                        puesto,
                        area,
                        empresa,
                        nivelEducativo,
                        nivelEducativoId,
                        buscaTrabajo,
                        buscaTrabajoId,
                        realizoCursos,
                        realizoCursosId,
                        cursoRealizado,
                        formaConocernos,
                        formaConocernosId,
                        cantPagos

                        , function (data) {
                            swal("¡Tus datos fueron enviados!", "Solo te queda esperar a que te contactemos.", "success");

                            $('#nombre').val('');
                            $('#apellido').val('');
                            $('#email').val('');
                            $('#dni').val('');
                            $('#telefono').val('');
                            $('#fecNac').val('');
                            $('#slCurse').val(-1);
                            $('#slProvinces').val(-1);
                            $('#slPaymentMode').val(-1);
                            $('#slWorking').val(-1);
                            $('#puesto').val('');
                            $('#area').val('');
                            $('#empresa').val('');
                            $('#slEducationLevel').val(-1);
                            $('#slLookingWork').val(-1);
                            $('#slMadeCurses').val(-1);
                            $('#cursoRealizado').val('');
                            $('#slKnowUsBy').val(-1);
                            $('#slPaymentsCount').val(-1);


                            return;

                        },
                        fnLlamadaError

                    );
            } catch (err) {
                swal("Error inesperado", err.message, "error");
            }
        }


        function fnLlamadaError(excepcion) {
            swal(excepcion.Message, "", "error");
        }

    </script>

</body>
</html>

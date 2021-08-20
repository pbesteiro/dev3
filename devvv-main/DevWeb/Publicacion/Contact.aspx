<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CruceroDelNorte.Contact" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>DevPlace</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/fonts/icomoon/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css" type="text/css">
    <link rel="stylesheet" href="assets/css/mediaelementplayer.css" type="text/css">
    <link rel="stylesheet" href="assets/css/animate.css" type="text/css">
    <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css" type="text/css">
    <link rel="stylesheet" href="assets/css/fl-bigmug-line.css" type="text/css">
    <link rel="stylesheet" href="assets/css/aos.css" type="text/css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="assets/css/sweetalert.css" type="text/css" />
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">

    <!-- Global site tag (gtag.js) - Google Ads: 368077802 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-368077802"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'AW-368077802'); </script>

</head>

<body class="contact-body">
    <a href="https://wa.me/5491159621707" id="myBtn" style="display: block;">
        <img src="assets/images/whatsapp.svg" alt="" style="width: 60px;">
    </a>
    <form id="form1" runat="server">
        <asp:ScriptManager EnablePageMethods="true" ID="ScriptManager1" runat="server" />
        <div class="site-loader"></div>
        <div class="site-wrap">
            <div class="site-section">
                <div class="container contenedor-pricipal">
                    <div class="row" style="margin-top: 25px">
                        <div class="col-md-12 col-lg-8">
                            <h3 class="contact-title"><strong>Llen&aacute; la solicitud de inscripci&oacute;n y nos contactaremos a la brevedad para finalizar el proceso de adminsi&oacute;n.</strong></h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="contenedor" style="margin-top: 3rem;">
                            <div id="form">
                                <form action="#" class="p-5 bg-white border">

                                    <div class="row form-group">
                                        <div class="col-md-12 mb-3 mb-md-0">
                                            <label class="font-weight-bold" for="fullname">
                                                <font color="#5d009b">Nombre y Apellido</font>
                                            </label>
                                            <input type="text" id="nombre" name="nombre" class="form-control"
                                                placeholder="Escribe tu nombre y apellido...">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="email">
                                                <font color="#5d009b">Correo Electr&oacute;nico</font>
                                            </label>
                                            <input type="email" id="email" class="form-control" placeholder="Coloca tu e-mail...">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Qu&eacute; tecnolog&iacute;a quer&eacute;s aprender?</font>
                                            </label>
                                            <select name="slCurso" id="slCurso" class="form-control" onchange="fillData()">
                                                <option value="0" selected>Seleccion&aacute; la tecnolog&iacute;a</option>
                                                <option value="1">C#</option>
                                                <option value="2">Java</option>
                                                <option value="3">Node JS </option>
                                                <option value="4">JavaScript</option>
                                                <option value="5">AngularJS</option>
                                                <option value="6">React JS</option>
                                                <option value="7">Veu JS</option>
                                                <option value="8">Bases de Datos</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Bootcamp/Curso a Inscribirte</font>
                                            </label>
                                            <select name="slHorario" id="slHorario" class="form-control">
                                                <option value="0" selected>Seleccion&aacute; el curso a inscribirte</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Estudi&aacute;s o estudiaste algo relacionado a Tecnolog&iacute;a?</font>&nbsp;&nbsp;
                                            </label>
                                            <select name="slEstudios" id="slEstudios" class="form-control">
                                                <option value="0" selected>Seleccione</option>
                                                <option value="1">Si, una carrera de grado</option>
                                                <option value="2">Si, una tecnicatura</option>
                                                <option value="3">Si, hice cursos</option>
                                                <option value="4">No</option>
                                                <option value="5">No, pero soy Autodidacta</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Ten&eacute;s experiencia trabajando en Tecnolog&iacute;a?</font>&nbsp;&nbsp;
                                            </label>
                                            <select name="slTrabajoExp" id="slTrabajoExp" class="form-control">
                                                <option value="0" selected>Seleccione</option>
                                                <option value="1">No</option>
                                                <option value="2">Si, menos de 2 a&ntilde;os</option>
                                                <option value="3">Si, m&aacute;s de 2 a&ntilde;os</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group" id="divChkCupon">
                                        <div class="col-md-12">
                                            <input type="checkbox" id="chkCupon" onclick="JavaScript:mostrarDivCupon();" />
                                            Tengo Cupón de descuento
                                        </div>
                                    </div>

                                    <div class="row form-group" id="divCupon">
                                        <div class="col-md-6 mb-3 mb-md-0">
                                            <label class="font-weight-bold" for="fullname">
                                                <font color="#5d009b">N&uacute;mero de Cup&oacute;n</font>
                                            </label>
                                            <input type="text" id="nro_cupon" name="nro_cupon" class="form-control"
                                                placeholder="Escribe el nro de cup&oacute;n">
                                        </div>
                                        <div class="col-md-6 mb-3 mb-md-0">
                                            <input type="button" id="btnAceptar" name="btnAceptar" class="btn btn-primary btn-violeta py-2 px-4 rounded-0"
                                                style="margin-top: 35px" value="Aplicar de cup&oacute;n" onclick="JavaScript:asignarPreciosCupon();">
                                        </div>

                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Como pens&aacute;s abonar?</font>&nbsp;&nbsp;
                                            </label>
                                            <select name="slFormaPago" id="slFormaPago" class="form-control">
                                                <option value="0" selected>Seleccione</option>
                                                <option value="1">Efectivo - En Sucursal</option>
                                                <option value="2">Efectivo - Rapipago</option>
                                                <option value="3">Dep&oacute;sito</option>
                                                <option value="4">Transferencia Bancaria</option>
                                                <option value="5">Tarjeta de Cr&eacute;dito</option>
                                                <option value="6">Tarjeta de D&eacute;bito</option>
                                                <option value="6">D&eacute;bito en cuenta bancaria</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="curso">
                                                <font color="#5d009b">Cantidad de Pagos</font>&nbsp;&nbsp;
                                            </label>
                                            <select name="slCantidadPagos" id="slCantidadPagos" class="form-control">
                                                <option value="0" selected>Seleccion&aacute; la tecnolog&iacute;a que quer&eacute;s aprender</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="message">
                                                <font color="#5d009b">Mensaje</font>
                                            </label>
                                            <textarea name="comentarios" id="comentarios" cols="30" rows="5" class="form-control"
                                                placeholder="Si tenes mas información relevante para comentarnos ingresala acá"></textarea>
                                        </div>
                                    </div>


                                    <div class="row form-group" style="margin-top: 1rem">
                                        <div class="col-md-12">
                                            <input type="checkbox" id="chkTermyCond" />
                                            Acepto <a href="Legales.aspx" target="_blank">T&eacute;rminos y condiciones</a>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div style="text-align: center;" class="col-md-12">
                                            <input type="button" value="Enviar Mensaje"
                                                class="btn btn-primary btn-violeta py-2 px-4 rounded-0"
                                                onclick="JavaScript:validarFomularioContacto();">
                                        </div>
                                    </div>
                                </form>



                            </div>
                            <div class="contact-img">
                                <img class="img-contact" src="assets/images/illustration/illustration.contact.cortada.jpg"
                                    style="width: 27rem; height: 20rem; margin-left: 5rem;" alt="">
                            </div>
                        </div>




                        <div>
                        </div>


                    </div>


                </div>
            </div>
        </div>
    </form>


    <link href='https://fonts.googleapis.com/css?family=Dosis:700' rel='stylesheet' type='text/css'>

    <section class="section-contactboxes" style="margin-bottom: 8rem; margin-left: 10rem; margin-top: 0px;">
        <div class="container">
            <div class="row">

                <div class="large-4 columns contact-box-cntr">
                    <div class="contact-box contact-box--orange"
                        style="margin-left: 2rem; margin-right: 2rem; margin-bottom: 2rem; width: 15rem; height: 10rem;">
                        <i class="contact-box__icon ico ico-envelope"></i>
                        <h4 class="contact-box__title">Email</h4>
                        <p class="contact-box__info">
                            <a class="color-boxes"
                                href="mailto:aplicantes@devplace.com.ar">aplicantes@devplace.com.ar</a>
                        </p>
                    </div>
                </div>
                <div class="large-4 columns contact-box-cntr">
                    <div class="contact-box contact-box--teal"
                        style="margin-left: 2rem; margin-right: 2rem; margin-bottom: 2rem; width: 15rem; height: 10rem;">
                        <i class="contact-box__icon ico ico-clock"></i>
                        <h4 class="contact-box__title" style="font-size: 22px;">Olazábal 1280 - CP 1428</h4>
                        <p class="contact-box__info">
                            <a class="color-boxes"
                                href="https://www.google.com.ar/maps/place/Av.+Olaz%C3%A1bal+1280,+C1428+DGQ,+Buenos+Aires/@-34.553429,-58.4591105,15z/data=!4m5!3m4!1s0x95bcb4339a56a309:0xd5056f72b3bd0e2b!8m2!3d-34.5533937!4d-58.4467831"
                                target="_blank">Ver en Google Maps</a>
                        </p>
                    </div>
                </div>
                <div class="large-4 columns contact-box-cntr">
                    <div class="contact-box contact-box--green"
                        style="margin-left: 2rem; margin-right: 2rem; margin-bottom: 2rem; width: 15rem; height: 10rem;">
                        <i class="contact-box__icon ico ico-phone"></i>
                        <h4 class="contact-box__title">Contacto</h4>
                        <p class="contact-box__info"><a class="color-boxes" href="tel:11 47855446">(11) 5962-1707</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer style="margin-top: 3rem; padding-top: 3rem; padding-bottom: 3rem">
        <div class="container">

            <div class="footer-top">
                <ul>
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="cursos.aspx">Bootcamps</a></li>
                    <li><a href="contact.aspx">Inscripción</a></li>
                    <li><a href="about.aspx">Para empresas</a></li>
                    <li><a href="faq.aspx">Preguntas frecuentes</a></li>

                </ul>
            </div>
            <div class="footer-bottom">
                <span>Copyright© 2021 DevPlace. all rights reserved.
                </span>
                <span class="f-b-r">
                    <div>
                        <!--a href="#" target="_blank"  class="pl-0 pr-3"><span class="icon-facebook"></span></a-->
                        <a href="https://twitter.com/devplace_com?s=11" target="_blank" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                        <a href="https://instagram.com/devplace_com?igshid=13fol2uu2flbk" target="_blank" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                        <a href="https://www.linkedin.com/company/devplace-com" target="_blank" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                    </div>
                </span>
            </div>
        </div>

    </footer>

    <!-- MODAL TERMINOS Y CONDICIONES -->
    <div class="modal fade" id="terminos_condiciones" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header justify-content-center" style="background-color: #5d009b; color: white;">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="tim-icons icon-simple-remove"></i>
                    </button>
                    <h4 class="title title-up"><b>T&eacute;rminos y condiciones</b></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <hr class="line-primary" style="margin-top: 0.5em;" />
                        <div class="col-12" style="text-align: center; margin-left: 0.9rem; margin-right: 0.9rem">
                            <ul>
                                <li>Para bootcamps cuyo programa sea <b>menos a 18 clases</b> podes acceder <b>hasta 4 pagos sin inter&eacute;s</b>.</li>
                                <li style="margin-top: 0.2rem">Para bootcamps cuyo programa sea <b>superior o igual a 18 clases</b>, podes acceder <b>hasta 6 pagos sin inter&eacute;s</b>.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery-ui.js" type="text/javascript"></script>
    <script src="assets/js/popper.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/owl.carousel.min.js" type="text/javascript"></script>
    <script src="assets/js/mediaelement-and-player.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.stellar.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.countdown.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    <script src="assets/js/aos.js" type="text/javascript"></script>
    <script src="assets/js/main.js" type="text/javascript"></script>
    <script src="assets/js/sweetalert.min.js" type="text/javascript"></script>

</body>
<script>

    var SIN_SELECCION = 0;

    $(document).ready(function () {
        $('#comentarios').show();
        $('#divCupon').hide();
        $('#divChkCupon').hide();

        var url = new URL(location);
        var techId = url.searchParams.get("id");

        if (techId != undefined) {
            $("#slCurso").val(techId);
            fillCurses(techId);
            fillPrices(techId);
        }


    });


    function asignarPreciosCupon() {
        try {
            var techoId = parseInt($('#slCurso').val());
            var nro_cupon = $('#nro_cupon').val();
            $('#slCantidadPagos').html('');

            PageMethods.getPricesCupon
                (techoId, nro_cupon,
                    function (data) {

                        if (data != '') {
                            $('#slCantidadPagos').append(data);
                            swal("Felicitaciones!!", "Tu Cupón de valido", "success");
                        } else {
                            swal("Cupón Inválido", "", "error");
                            $('#nro_cupon').val('');
                            fillData();
                        }

                        return;
                    },
                    fnLlamadaError
                );




        } catch (err) {
            alert(err);
        }
    }

    function asignarPrecios() {
        try {
            var techoId = parseInt($('#slCurso').val());
            $('#slCantidadPagos').html('');

            PageMethods.getPricesCupon
                (techoId,
                    function (data) {
                        $('#slCantidadPagos').append(data);
                        return;
                    },
                    fnLlamadaError
                );

        } catch (err) {

        }
    }

    function fillData() {
        try {
            $('#divChkCupon').show();

            var techId = parseInt($('#slCurso').val());

            $('#slCantidadPagos').html('');

            if (techoId == SIN_SELECCION) {
                $('#divChkCupon').hide();
                $('#divCupon').hide();
            }

            fillCurses(techId);
            fillPrices(techId);


        } catch (err) {

        }
    }

    function fillCurses(techoId) {
        try {


            PageMethods.getCurses
                (techoId,
                    function (data) {
                        $('#slHorario').html(data);
                        return;
                    },
                    fnLlamadaError
                );


        } catch (err) {
            alert(err);
        }
    };

    function fillPrices(techoId) {
        try {


            PageMethods.getPrices
                (techoId,
                    function (data) {
                        $('#slCantidadPagos').append(data);
                        return;
                    },
                    fnLlamadaError
                );



        } catch (err) {
            alert(err);
        }
    };


    function mostrarDivCupon() {
        try {

            var tieneCupon = $('#chkCupon').prop('checked');

            if (!tieneCupon) {
                $('#divCupon').hide();
                $('#nro_cupon').val('');
                fillData();
                return;
            }
            $('#divCupon').show();

        } catch (err) {

        }
    }

    function validarFomularioContacto() {

        try {

            var email = $('#email').val();
            var nombre = $('#nombre').val();
            var comentarios = $('#comentarios').val();
            var curso = $('#slCurso option:selected').text();
            var cursoId = $('#slCurso').val();
            var horario = $('#slHorario option:selected').text();
            var horarioId = $('#slHorario').val();
            var formaPagoId = $('#slFormaPago').val();
            var formaPago = $('#slFormaPago option:selected').text();
            var trabajoExpId = $('#slTrabajoExp').val();
            var trabajoExp = $('#slTrabajoExp option:selected').text();
            var estudiosId = $('#slEstudios').val();
            var estudios = $('#slEstudios option:selected').text();
            var nro_cupon = $('#nro_cupon').val();
            var termCond = $('#chkTermyCond').prop('checked');


            if (horarioId < 1) {
                swal("Seleccione un horario valido para el curso seleccionado", "", "info");
                return;
            }


            if (estudiosId < 1) {
                swal("Por favor, seleccioná la opciónsobre si estudias o estudiaste algo relacionado con IT", "", "info");
                return;
            }

            if (trabajoExpId < 1) {
                swal("Por favor, seleccioná la opción sobre tu experiencia laboral en IT", "", "info");
                return;
            }

            if (formaPagoId < 1) {
                swal("Por favor, seleccioná cómo tenés pensado abonar", "", "info");
                return;
            }


            if (email.length < 1) {
                swal("Ingrese su correo electronico", "", "info");
                return;
            }

            if (!termCond) {
                swal("Por favor acepte los términos y condiciones", "", "info");
                return;
            }

            enviarEmail(nombre, email, comentarios, curso, cursoId, horario, horarioId, formaPagoId, formaPago, trabajoExpId, trabajoExp, estudiosId, estudios, nro_cupon);



        } catch (err) {
            console.log(err);
        }
    }

    function enviarEmail(nombre, email, comentarios, curso, cursoId, horario, horarioId, formaPagoId, formaPago, trabajoExpId, trabajoExp, estudiosId, estudios, nro_cupon) {

        try {

            PageMethods.enviarMail
                (nombre,
                    email,
                    comentarios,
                    curso,
                    cursoId,
                    horario,
                    horarioId,
                    formaPagoId,
                    formaPago,
                    trabajoExpId,
                    trabajoExp,
                    estudiosId,
                    estudios,
                    nro_cupon

                    , function (data) {
                        swal("¡Tus datos fueron eviados!", "Solo te queda esperar a que te contactemos.", "success");

                        $('#email').val('');
                        $('#nombre').val('');
                        $('#comentarios').val('');
                        $('#slCurso').val(0);
                        $('#slHorario').val(0);
                        $('#slFormaPago').val(0);
                        $('#slTrabajoExp').val(0);
                        $('#slEstudios').val(0);

                        return;

                    },
                    fnLlamadaError

                );
        } catch (err) {
            swal("Error inesperado", excepcion.get_message(), "Error");
        }
    }

    function fnLlamadaError(excepcion) {
        swal(excepcion.get_message(), "", "error");
    }



</script>

</html>

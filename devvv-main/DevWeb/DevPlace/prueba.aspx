<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
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

     Global site tag (gtag.js) - Google Ads: 368077802
    <link rel="stylesheet" href="assets/css/actualizacion27-5.css" />

    <link rel="stylesheet" href="assets/css/navbar.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
          integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous" />

    <!-- Font Family -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>

.title {
    color: grey;
    font-size: 18px;
    text-transform: capitalize;
    /*padding: 16px 15px;*/
    font-family: 'Montserrat', sans-serif !important;
    display: block !important;
    /*padding: 0.5rem 1rem;*/
}

.dropdown-submenu {
  /*position: relative;*/
  color: grey;
    font-size: 16px;
    text-transform: capitalize;
    padding: 5px 15px;
    font-family: 'Montserrat', sans-serif !important;
    display: block !important;
}

.dropdown-item {
  position: relative;
  padding: 2px 34px;
  color: grey;
}

.dropdown-submenu>.dropdown-menu {
  top: -2%;
  left: 100%;

}
/*
position: relative;
    top: 100%;
    */
.dropdown-submenu>a:after {
  font-family: "Font Awesome 5 Free" !important;
  font-weight: 900;
  content: "\f054" !important;
  border: none;
  position: absolute;
  right: 10px;
  top: 5px;
  padding-right:10px;
}

.dropdown-menu>li {
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.dropdown-menu>li:last-child {
  border-bottom: none;
}

.dropdown-item.active,
.dropdown-item:active {
  background-color: #5d009b !important;
  color: #fff !important;
}

.dropdown-item.dropdown-toggle:hover {
  color: #5d009b;
}

.dropdown-item:hover {
  color: #5d009b;
}

.dropdown-item a {
   /*padding: 5px 34px;*/
}
    </style>
</head>
<body>


    <h1>Hola</h1>

  <nav class="navbar sticky-top navbar-expand-lg navbar-light" >
  <div class="container">
    <div class="logo-container">
        <a class="navbar-brand" href="index.aspx">
            <img width="200px" src="assets/images/logo.svg" alt="" />
        </a>
    </div>

    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item"><a href="index.aspx" class="title">Home <span class="sr-only">(current)</span></a></li>


        <li class="nav-item dropdown title">
          <a class="nav-link rounded-sm aishles-dropdown " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cursos
        </a>
          <ul class="dropdown-menu">


            <li class="dropdown-submenu">
              <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Base de datos</a>
              <ul class="dropdown-menu">
                <li class="dropdown-item">
                  <a href="sql.aspx" class="dropdown-item">SQL</a>
                </li>
               
              </ul>
            </li>

            <li class="dropdown-submenu">
              <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Para Developers</a>
              <ul class="dropdown-menu">
                <li class="dropdown-submenu">
                  <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Esenciales</a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item">
                      <a href="js.aspx" class="dropdown-item">JavaScript</a>
                    </li>               
                  </ul>
                </li>

                <li class="dropdown-submenu">
                  <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Front End</a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item">
                      <a href="ReactJs.aspx" class="dropdown-item">React JS</a>
                    </li>
                    <li class="dropdown-item">
                      <a href="angular.aspx" class="dropdown-item">Angular JS</a>
                    </li>   
                  </ul>
                </li> 

                <li class="dropdown-submenu">
                  <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Back End</a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item">
                      <a href="csharp.aspx" class="dropdown-item">C#</a>
                    </li>
                    <li class="dropdown-item">
                      <a href="nodejs.aspx" class="dropdown-item">Node JS</a>
                    </li>   
                  </ul>
                </li> 


                  
              </ul>
                <li class="dropdown-submenu">
                  <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Programación Básica</a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item">
                      <a href="html-css.aspx" class="dropdown-item">HTML y CSS</a>
                    </li>
                     <li class="dropdown-item">
                      <a href="js-basico.aspx" class="dropdown-item">JavaScript Básico</a>
                    </li>              
                  </ul>
                </li>
            </li>

          </ul>
        </li>


        <li class="nav-item dropdown title">
          <a class="nav-link rounded-sm aishles-dropdown " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Programas
        </a>
          <ul class="dropdown-menu">


            <li class="dropdown-submenu">
              <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Datos</a>
              <ul class="dropdown-menu">
                <li class="dropdown-item">
                  <a href="datascience.aspx" class="dropdown-item">Data Science</a>
                </li>
                <li class="dropdown-item">
                  <a href="analytics.aspx" class="dropdown-item">Data Analytics</a>
                </li>               
              </ul>
            </li>

            <li class="dropdown-submenu">
              <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Para Developers</a>
              <ul class="dropdown-menu">
                <li class="dropdown-item">
                  <a href="programafullstack.aspx" class="dropdown-item">Desarrollo Full Stack JavaScript</a>
                </li>              
              </ul>
            </li>

            <li class="dropdown-submenu">
              <a href="#" role="button" data-toggle="dropdown" class="dropdown-item dropdown-toggle">Programación Básica</a>
              <ul class="dropdown-menu">
                <li class="dropdown-item">
                  <a href="programafullstack.aspx" class="dropdown-item">Desarrollo Web</a>
                </li>              
              </ul>
            </li>

          </ul>
        </li>



        <li class="nav-item "><a href="About.aspx" class="title">Para Empresas </a></li>
      </ul>
    </div>
  </div>
</nav>






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
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-K9LZ6RSGWZ"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-K9LZ6RSGWZ');
    </script>

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


        //prueba menu
        $(function () {
            $("ul.dropdown-menu [data-toggle='dropdown']").on("click", function (event) {
                event.preventDefault();
                event.stopPropagation();
                //method 2: remove show from all siblings of all your parents
                $(this).parents('.dropdown-submenu').siblings().find('.show').removeClass("show");
                $(this).siblings().toggleClass("show");
                //collapse all after nav is closed
                $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
                    $('.dropdown-submenu .show').removeClass("show");
                });
            });
        });
        //prueba menu

    </script>

</body>
</html>
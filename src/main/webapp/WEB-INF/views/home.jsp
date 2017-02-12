<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/header.jsp"/>


<div id="index-banner" class="parallax-container parallax-container-large">
    <div class="section no-pad-bot">
        <div class="container container-front">
            <br><br>
            <h1 class="header center yellow-text">Salud en el Mundo</h1>
            <div class="row center">
                <h4 class="header col s12 light">Estadísticas de salud por el Banco Mundial</h4>
            </div>
            <div class="row center">
                <a href="<c:url value="/statistics"/>" id="reports-button"
                   class="btn-large waves-effect waves-light yellow darken-2">
                <strong>Ver Reportes</strong>
                </a>
            </div>
            <br><br>

        </div>
    </div>
    <div class="parallax">
        <img src="<c:url value="/static/images/background1.jpg"/>" alt="Background image">
    </div>
</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons nutrition-text">business</i></h2>
                    <h5 class="center">Banco Mundial</h5>

                    <p class="light">
                        Es uno de los organismos especializados del sistema de las
                        <a href="http://www.un.org/es/index.html" target="_blank">Naciones Unidas</a>, que se define
                        como una fuente de asistencia financiera y técnica para los llamados países en desarrollo.
                        Su propósito declarado es reducir la pobreza mediante préstamos de bajo interés,
                        créditos sin intereses a nivel bancario y apoyos económicos a las naciones en desarrollo.
                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons nutrition-text">lock_open</i></h2>
                    <h5 class="center">Datos Abiertos, Open Data</h5>

                    <p class="light">
                        Es una filosofía y práctica que persigue que determinados tipos de datos estén disponibles de
                        forma libre para todo el mundo, sin restricciones de derechos de autor, de patentes o de
                        otros mecanismos de control.
                        <strong><a href="http://datos.bancomundial.org" target="_blank">Datos de libre acceso del Banco
                            Mundial</a></strong>, acceso abierto y gratuito a datos
                        sobre desarrollo de los países en todo el mundo.
                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons nutrition-text">language</i></h2>
                    <h5 class="center">Cloud Computing</h5>

                    <p class="light">
                        Es un nuevo modelo de prestación de servicios y tecnología, que
                        permite al usuario acceder a un catálogo de servicios estandarizados y responder con ellos
                        a las necesidades de su negocio, de forma flexible y adaptativa, en caso de demandas
                        no previsibles o de picos de trabajo, pagando únicamente por el consumo efectuado.
                    </p>
                </div>
            </div>
        </div>

    </div>
</div>


<jsp:include page="partials/footer.jsp"/>

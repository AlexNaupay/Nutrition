<%--<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/header.jsp"/>

<section>
    <div class="container">
        <h1 class="center grey-text text-darken-1">Estadísticas de Salud Mundial</h1>
        <form method="post" id="statistics-form">
            <div class="row">
                <div class="col s12">
                    <div class="row">
                        <div class="input-field col s12 m4 l4">
                            <select multiple class="icons" name="countries" id="countries-select" required>
                                <option value="" selected disabled>Seleccionar</option>
                                <c:forEach var="country" items="${countries}">
                                    <option value="${country.countrycode}" data-icon="<c:url value="${country.image}"/>">${country.shortname}</option>
                                </c:forEach>
                            </select>
                            <label>Países</label>
                        </div>
                        <div class=" input-field col s12 m4 l5">
                            <select name="serie" id="serie-select" required>
                                <option value="" disabled selected>Seleccionar</option>
                                <c:forEach var="serie" items="${series}">
                                    <option value="${serie.seriescode}">${serie.indicatorname}</option>
                                </c:forEach>
                                <option value="SH.DYN.AIDS">Personas mayores de 15 años, viviendo con VIH</option>

                            </select>
                            <label>Reportes disponibles</label>
                        </div>
                        <div class="input-field col s12 m4 l3">
                            <button id="form-button" class="btn yellow darken-2 waves-effect waves-orange" type="submit">Aceptar
                            </button>
                        </div>
                    </div>
                </div>
                
            </div>
        </form>


        <div class="row">
            <div class="col s12">
                <ul class="tabs grey lighten-3">
                    <li class="tab col s12 m6"><a href="#stat-chart"
                                                class="blue-grey-text text-darken-2">Gráfico de
                        barras</a></li>
                    <li class="tab col s12 m6"><a class="blue-grey-text text-darken-2  active" href="#stat-table">Tabla de
                        datos</a></li>
                </ul>
            </div>
            <div id="stat-chart" class="col s12">
                <div id="chart-content-material" style="width: 1000px; height: 350px;"></div>
            </div>
            <div id="stat-table" class="col s12">
                <div class="row">
                    <div class="col s12 m5 l4">
                        <select id="country-select">
                            <option value="2005">2005</option>
                            <option value="2006">2006</option>
                            <option value="2007">2007</option>
                            <option value="2008">2008</option>
                            <option value="2009">2009</option>
                            <option value="2010">2010</option>
                            <option value="2011">2011</option>
                            <option value="2012">2012</option>
                            <option value="2013">2013</option>
                            <option value="2014">2014</option>
                            <option value="2015">2015</option>
                        </select>
                    </div>
                    <div class="col s12">
                        <div id="table-content-material" style="width: 1200px; height: 350px;"></div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>

<script type="text/javascript" src="<c:url value="/static/vendors/underscore/underscore-min.js" />"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="<c:url value="/static/js/google-chart.js" />"></script>

<jsp:include page="partials/footer.jsp"/>

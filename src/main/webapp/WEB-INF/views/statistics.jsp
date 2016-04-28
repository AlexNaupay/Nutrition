<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/header.jsp"/>

<section>
    <div class="container">
        <h1 class="center grey-text text-darken-1">Estadísticas de Salud Mundial</h1>
        <form action="/statistics" method="post">
            <div class="row">
                <div class="col s12">
                    <div class="row">
                        <div class="input-field col s12 m4 l4">
                            <select multiple class="icons">
                                <option value="" disabled selected>Seleccionar</option>
                                <option value="1" data-icon="<c:url value="static/images/banderas/bandera-argentina.jpg"/>">Argentina</option>
                                <option value="2" data-icon="<c:url
                                value="static/images/banderas/bandera-bolivia.jpg"/>">Bolivia</option>
                                <option value="3" data-icon="<c:url value="static/images/banderas/bandera-brasil.jpg"/>">Brasil</option>
                                <option value="4" data-icon="<c:url value="static/images/banderas/bandera-chile.jpg"/>">
                                    Chile</option>
                                <option value="5" data-icon="<c:url
                                value="static/images/banderas/bandera-colombia.jpg"/>">Colombia</option>
                                <option value="6" data-icon="<c:url
                                value="static/images/banderas/bandera-ecuador.jpg"/>">Ecuador</option>
                                <option value="7" data-icon="<c:url
                                value="static/images/banderas/bandera-paraguay.png"/>">Paraguay</option>
                                <option value="8" data-icon="<c:url value="static/images/banderas/bandera-peru.png"/>">
                                    Peru</option>
                                <option value="9" data-icon="<c:url
                                value="static/images/banderas/bandera-uruguay.jpg"/>">Ururguay</option>
                                <option value="10" data-icon="<c:url
                                value="static/images/banderas/bandera-venezuela.jpg"/>">Venezuela</option>
                            </select>
                            <label>Países</label>
                        </div>
                        <div class=" input-field col s12 m4 l5">
                            <select>
                                <option value="" disabled selected>Seleccionar</option>
                                <option value="1">Personas mayores de 15 años, viviendo con VIH</option>
                                <option value="2">Edad promedio de hombres, en su primer matrimonio</option>
                                <option value="3">Edad promedio de mujeres, en su primer matrimonio.</option>
                                <option value="4">Prevalencia de diabetes (% población entre 25 y 79 años)</option>
                                <option value="5">Camas de hospital(por cada 1000 personas)</option>
                                <option value="6">Incidencia de TBC (por cada 1000 personas)</option>
                                <option value="7">Expectativa de vida al nacer(en años)</option>
                                <option value="8">Doctores (por cada 1000 personas)</option>
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
        <div id="chart-content-material" style="width: 1200px; height: 800px;"></div>
    </div>
</section>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="<c:url value="static/js/google-chart.js" />"></script>

<jsp:include page="partials/footer.jsp"/>

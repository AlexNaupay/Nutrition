<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer class="page-footer blue-grey darken-2">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Acerca del proyecto</h5>
                <p class="grey-text text-lighten-4">
                    Este es un proyecto en el cual se pone en práctica el concepto de la nube (sistema distribuido),
                     como parte del curso de Sistemas Distribuidos en la EAP de Ingeniría de Sistemas de la
                    Universidad Nacional Mayor de San Marcos.
                    <%--We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.--%>
                </p>


            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Equipo</h5>
                <ul>
                    <li><a class="white-text" href="https://www.facebook.com/anaupayf" target="_blank" rel="author">@alex</a></li>
                    <li><a class="white-text" href="https://www.facebook.com/magally.acosta.16" target="_blank" rel="author">@magally</a></li>
                    <li><a class="white-text" href="https://www.facebook.com/luisunmsm" target="_blank" rel="author">@luis</a></li>
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Enlaces de Interés</h5>
                <ul>
                    <li><a class="white-text" href="http://jguerra91.wix.com/sistdistfisi" target="_blank">El curso</a></li>
                    <li><a class="white-text" href="http://www.bancomundial.org" target="_blank">Banco Mundial</a></li>
                    <li><a class="white-text" href="http://datatopics.worldbank.org/hnp/" target="_blank">Banco Mundial Estadisticas</a></li>
                    <li><a class="white-text" href="http://www.fao.org/home/es" target="_blank">FAO</a></li>
                    <li><a class="white-text" href="https://www.openshift.com" target="_blank">Openshift</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Facultad de Ingeniería de Sistemas e Informática 2016
        </div>
    </div>
</footer>


<!--  Scripts-->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="<c:url value="static/vendors/materialize/js/materialize.min.js"/>"></script>
<script src="<c:url value="static/js/app.js"/>"></script>

</body>
</html>


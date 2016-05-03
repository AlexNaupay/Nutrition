package com.nutrition.repositories.utils;

/**
 *
 * @author Joe Luis
 */
public class Constants {
    //Consulta de la lista de paises de la tabla COUNTRY
    public final static String LISTA_PAISES="SELECT countrycode, shortname, longname, image FROM country";
   //Consulta de la lista de series de la tabla SERIES
    public final static String LISTA_SERIES="SELECT seriescode, indicatorname, topic FROM series";
     //Consulta de la lista de series de la tabla YEAR
    public final static String LISTA_ANIOS="SELECT codAnio, descAnio FROM year";
    
    //Informacion completa de un Pais
    public final static String INFO_PAIS="SELECT \n" +
                                        "countrycode,\n" +
                                        "shortname,\n" +
                                        "longname,\n" +
                                        "alphacode,\n" +
                                        "currencyunit,\n" +
                                        "note,\n" +
                                        "accountsbaseyear AS 'Año Base de Cuentas',\n" +
                                        "systemnationalaccounts AS 'Sistema de Cuentas',\n" +
                                        "latestpopulationcensus AS 'Ultimo Censo',\n" +
                                        "latesthouseholdsurvey AS 'Ultima Encuesta'\n" +
                                        "FROM country\n" +
                                        "WHERE countrycode like ";
    
    public static final String INFO_SERIE= "SELECT \n" +
                                            "seriescode,\n" +
                                            "indicatorname,\n" +
                                            "topic,\n" +
                                            "longdefinition AS 'Definicion',\n" +
                                            "periodicity AS 'Intervalo',\n" +
                                            "aggregationmethod AS 'Metodo',\n" +
                                            "notes AS 'Notas',\n" +
                                            "source AS 'Origen de Datos'\n" +
                                            "FROM series\n" +
                                            "WHERE seriescode like ";
    
    //Uso de Join
    public static final String DATOS_CONSULTA="SELECT c.shortname AS País, s.indicatorname AS Reporte, y.descAnio AS Año, d.value AS Valor\n" +
                                        "FROM data d LEFT JOIN country c\n" +
                                        "ON d.countrycode =c.countrycode\n" +
                                        "LEFT JOIN series s\n" +
                                        "ON s.seriescode =d.seriescode\n" +
                                        "LEFT JOIN year y\n" +
                                        "ON y.codAnio =d.codAnio\n" +
                                        "WHERE c.countrycode like ";
    public static final String S_SERIE= " and s.seriescode ";
    public static final String Y_ANIO= " AND y.codAnio ";
    public static final String ORDER_BY= " ORDER BY s.seriescode, y.codanio";

    public static final String DATA_QUERY = "SELECT d.codAnio anio,d.countrycode, c.shortname, d.seriescode, s.indicatorname, d.value FROM nutrition.data d \n" +
            "LEFT JOIN nutrition.year y ON d.codAnio = y.codAnio\n" +
            "LEFT JOIN countryyseries cs ON d.countrycode = cs.countrycode AND d.seriescode = cs.seriescode\n" +
            "JOIN country c ON cs.countrycode = c.countrycode\n" +
            "JOIN series  s ON cs.seriescode = s.seriescode\n" +
            "WHERE s.seriescode = ':serie:' AND c.countrycode IN (:countries:) ORDER BY d.codAnio, d.countrycode";
}

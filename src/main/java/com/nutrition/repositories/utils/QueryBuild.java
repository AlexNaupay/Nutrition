package com.nutrition.repositories.utils;

import java.util.ArrayList;

/**
 * @author Joe Luis
 */
public class QueryBuild {

    /**
     * @param args the command line arguments
     */
    /*public static void main(String[] args) {
        QueryBuild a=new QueryBuild();
        System.out.println(a.informacionPais("PER"));
        System.out.println(a.informacionSerie("SH.DYN.AIDS"));
        //Pruebas de la generacion de consultas

        System.out.println(a.datosEstadisticos1Pais1Serie1Anio("PER", "SH.DYN.AIDS", 2007)+"\n");
        
        ArrayList lista = new ArrayList<String>();
        for(int i=0; i<10;i++){
            lista.add(i);
        }
        System.out.println(a.datosEstadisticos1Pais1SerieNAnio("CHL", "SH.DYN.AIDS", lista)+"\n");
        System.out.println(a.datosEstadisticos1PaisNSerie1Anio("PAR", lista, 2005 )+"\n");
        System.out.println(a.datosEstadisticos1PaisNSerieNAnio("PER", lista, lista)+"\n");
    }*/

    //Los siguientes metodos solo generan las consultas

    /**
     * Este metodo genera una consulta para devolver la lista de paises con su codigo
     *
     * @return Un String conteniendo la consulta
     */
    public static String devolverListaPaises() {
        String consulta = "";
        consulta = consulta + Constants.LISTA_PAISES;

        return consulta;
        //Devolvera una tabla con dos columnas : countrycode y nombrepais
        //Recomiendo usar un HashMap para almacenar esto en formato Clave Valor.
    }


    /**
     * Este metodo genera una consulta para devolver la lista de series con su codigo
     *
     * @return Un String conteniendo la consulta
     */
    public static String devolverListaSeries() {
        String consulta = "";
        consulta = consulta + Constants.LISTA_SERIES;

        return consulta;
        //Devolvera una tabla con dos columnas : seriescode y indicatorname
        //Recomiendo usar un HashMap para almacenar esto en formato Clave Valor.
    }

    /**
     * Este metodo genera una consulta para devolver la lista de años con su codigo
     * y año
     *
     * @return Un String conteniendo la consulta
     */
    public String devolverListaAnios() {
        String consulta = "";
        consulta = consulta + Constants.LISTA_ANIOS;

        return consulta;
        //Devolvera una tabla con dos columnas : seriescode y indicatorname
        //Recomiendo usar un HashMap para almacenar esto en formato Clave Valor.
    }

    /**
     * Devuelve la informacion completa de un pais que viene como parametro
     *
     * @param countrycode , El codigo de pais que puede ser  ARG BOL BRA CHL COL ECU PRY PER URY VEN
     * @return cadena de Consulta para dicho pais
     */

    public static String informacionPais(String countrycode) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.INFO_PAIS);
        consulta.append("\'").append(countrycode).append("\'");
        return consulta.toString();
        /* Devolvera una tabla con las columnas
            'Codigo de Pais',
            'Pais',
            'Nombre Completo',
            'Codigo Alpha',
            'Moneda',
            'Nota',
            'Año Base de Cuentas',
            'Sistema de Cuentas',
            'Ultimo Censo',
            'Ultima Encuesta'
        */
    }

    /**
     * Devuelve la informacion completa de una Serie que viene como parametro
     *
     * @param seriescode , El codigo de la serie que puede ser
     *                   SH.DYN.AIDS  SP.DYN.SMAM.MA SP.DYN.SMAM.FE  SH.STA.DIAB.ZS SH.MED.BEDS.ZS SH.TBS.INCD SP.DYN.LE00.IN SH.MED.CMHW.P3
     * @return cadena de Consulta para dicha Serie
     */
    public static String informacionSerie(String seriescode) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.INFO_SERIE);
        consulta.append("\'").append(seriescode).append("\'");
        return consulta.toString();
        /* Devolvera una tabla con las columnas
            'Codigo de la Serie',
            'Nombre de la Serie',
            'Categoria',
            'Definicion',
            'Intervalo',
            'Metodo',
            'Notas',
            'Origen de Datos'
        */
    }


    /**
     * Genera consulta de los datos con una combinacion de un pais, una serie y un año
     *
     * @param countrycode , El codigo del pais ARG BOL BRA CHL COL ECU PRY PER URY VEN
     * @param seriescode  , El codigo de la serie que puede ser
     *                    SH.DYN.AIDS  SP.DYN.SMAM.MA SP.DYN.SMAM.FE  SH.STA.DIAB.ZS SH.MED.BEDS.ZS SH.TBS.INCD SP.DYN.LE00.IN SH.MED.CMHW.P3
     * @param codanio     El codigo del año , que puede ser del 2005 al 2015
     * @return cadena de Consulta para dicha combinacion
     */
    public String datosEstadisticos1Pais1Serie1Anio(String countrycode,
                                                    String seriescode, int codanio) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.DATOS_CONSULTA);
        consulta.append("\'").append(countrycode).append("\'");
        consulta.append(Constants.S_SERIE);
        consulta.append(" like ").append("\'").append(seriescode).append("\'");
        consulta.append(Constants.Y_ANIO);
        consulta.append(" = ").append(codanio);

        return consulta.toString();
        /* Devolvera una tabla con las columnas
        Pais : Nombre del pais
        Reporte: Nombre de la serie
        Año: Nombre del año
        Valor: Valor del estadistico en ese año
        */
    }

    /**
     * Genera consulta de los datos con una combinacion de un pais, 1 serie y varios años
     *
     * @param countrycode , El de codigo del pais ARG BOL BRA CHL COL ECU PRY PER URY VEN
     * @param seriescode  , ArrayList de codigo de la serie que puede ser
     *                    SH.DYN.AIDS  SP.DYN.SMAM.MA SP.DYN.SMAM.FE  SH.STA.DIAB.ZS SH.MED.BEDS.ZS SH.TBS.INCD SP.DYN.LE00.IN SH.MED.CMHW.P3
     * @param codanio     Array list de años , que puede ser del 2005 al 2015
     * @return cadena de Consulta para dicha combinacion
     */
    public String datosEstadisticos1Pais1SerieNAnio(String countrycode,
                                                    String seriescode, ArrayList codanio) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.DATOS_CONSULTA);
        consulta.append("\'").append(countrycode).append("\'");
        consulta.append(Constants.S_SERIE);
        consulta.append(" like ").append("\'").append(seriescode).append("\'");
        consulta.append(Constants.Y_ANIO);
        consulta.append(" IN ( ").append(convertirArrayaNumeros(codanio)).append(" ) ");
        consulta.append(Constants.ORDER_BY);
        return consulta.toString();
        /* Devolvera una tabla con las columnas
        Pais : Nombre del pais
        Reporte: Nombre de la serie
        Año: Nombre del año
        Valor: Valor del estadistico en ese año
        */
    }

    /**
     * Genera consulta de los datos con una combinacion de un pais, varias serie y varios años
     *
     * @param countrycode , El de codigo del pais ARG BOL BRA CHL COL ECU PRY PER URY VEN
     * @param seriescode  , ArrayList de codigo de la serie que puede ser
     *                    SH.DYN.AIDS  SP.DYN.SMAM.MA SP.DYN.SMAM.FE  SH.STA.DIAB.ZS SH.MED.BEDS.ZS SH.TBS.INCD SP.DYN.LE00.IN SH.MED.CMHW.P3
     * @param codanio     El codigo del año , que puede ser del 2005 al 2015
     * @return cadena de Consulta para dicha combinacion
     */
    public String datosEstadisticos1PaisNSerie1Anio(String countrycode,
                                                    ArrayList seriescode, int codanio) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.DATOS_CONSULTA);
        consulta.append("\'").append(countrycode).append("\'");
        consulta.append(Constants.S_SERIE);
        consulta.append(" IN ( ").append(convertirArrayaString(seriescode)).append(" ) ");
        consulta.append(Constants.Y_ANIO);
        consulta.append(" = ").append(codanio);
        consulta.append(Constants.ORDER_BY);
        return consulta.toString();
        /* Devolvera una tabla con las columnas
        Pais : Nombre del pais
        Reporte: Nombre de la serie
        Año: Nombre del año
        Valor: Valor del estadistico en ese año
        */
    }

    /**
     * Genera consulta de los datos con una combinacion de un pais, 1 serie y varios años
     *
     * @param countrycode , El de codigo del pais ARG BOL BRA CHL COL ECU PRY PER URY VEN
     * @param seriescode  , ArrayList de codigo de la serie que puede ser
     *                    SH.DYN.AIDS  SP.DYN.SMAM.MA SP.DYN.SMAM.FE  SH.STA.DIAB.ZS SH.MED.BEDS.ZS SH.TBS.INCD SP.DYN.LE00.IN SH.MED.CMHW.P3
     * @param codanio     Array list de años , que puede ser del 2005 al 2015
     * @return cadena de Consulta para dicha combinacion
     */
    public String datosEstadisticos1PaisNSerieNAnio(String countrycode,
                                                    ArrayList seriescode, ArrayList codanio) {
        StringBuilder consulta = new StringBuilder("");
        consulta.append(Constants.DATOS_CONSULTA);
        consulta.append("\'").append(countrycode).append("\'");
        consulta.append(Constants.S_SERIE);
        consulta.append(" IN ( ").append(convertirArrayaString(seriescode)).append(" ) ");
        consulta.append(Constants.Y_ANIO);
        consulta.append(" IN ( ").append(convertirArrayaNumeros(codanio)).append(" ) ");
        consulta.append(Constants.ORDER_BY);
        return consulta.toString();
        /* Devolvera una tabla con las columnas
        Pais : Nombre del pais
        Reporte: Nombre de la serie
        Año: Nombre del año
        Valor: Valor del estadistico en ese año
        */
    }


    //Metodos auxiliares para convertir el Array List en un String con comas
    public String convertirArrayaNumeros(ArrayList lista) {
        int tamano = lista.size();
        StringBuilder cadena = new StringBuilder();
        for (int i = 0; i < tamano; i++) {
            cadena.append(lista.get(i).toString());
            if (i == tamano - 1) {
                cadena.append(" ");
            } else {
                cadena.append(" , ");
            }
        }
        return cadena.toString();
    }

    public static String convertirArrayaString(ArrayList lista) {
        int tamano = lista.size();
        StringBuilder cadena = new StringBuilder();

        for (int i = 0; i < tamano; i++) {
            cadena.append("\'").append(lista.get(i).toString()).append("\'");
            if (i == tamano - 1) {
                cadena.append(" ");
            } else {
                cadena.append(" , ");
            }
        }
        return cadena.toString();
    }

    public static String dataQuery(String serie, ArrayList<String> countries){
        String query = Constants.DATA_QUERY;
        query = org.apache.commons.lang3.StringUtils.replace(query, ":serie:", serie);
        query = org.apache.commons.lang3.StringUtils.replace(query, ":countries:", convertirArrayaString(countries));
        return query;
    }
}

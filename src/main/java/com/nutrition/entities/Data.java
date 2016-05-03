package com.nutrition.entities;

/**
 *
 * @author Joe Luis
 */
public class Data {
    
    //Clave primaria de la tabla esta formada por countrycode, seriescode y codanio
    private String countrycode;
    private String seriescode;
    private int codanio;
    
    //Valor de la serie para un pais, serie y año.
    private double value;

    /**
     * @return the countrycode
     */
    public String getCountrycode() {
        return countrycode;
    }

    /**
     * @return the seriescode
     */
    public String getSeriescode() {
        return seriescode;
    }

    /**
     * @return the codanio
     */
    public int getCodanio() {
        return codanio;
    }

    /**
     * @return the value
     */
    public double getValue() {
        return value;
    }

    /**
     * @param countrycode the countrycode to set
     */
    public void setCountrycode(String countrycode) {
        this.countrycode = countrycode;
    }

    /**
     * @param seriescode the seriescode to set
     */
    public void setSeriescode(String seriescode) {
        this.seriescode = seriescode;
    }

    /**
     * @param codanio the codanio to set
     */
    public void setCodanio(int codanio) {
        this.codanio = codanio;
    }

    /**
     * @param value the value to set
     */
    public void setValue(double value) {
        this.value = value;
    }

}

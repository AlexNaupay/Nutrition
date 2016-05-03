package com.nutrition.model;

/**
 * @author alexh
 */
public class Data {
    private String countryCode;
    private String countryName;
    private String serieCode;
    private String serieName;

    private int anio;
    private float value;

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getSerieCode() {
        return serieCode;
    }

    public void setSerieCode(String serieCode) {
        this.serieCode = serieCode;
    }

    public String getSerieName() {
        return serieName;
    }

    public void setSerieName(String serieName) {
        this.serieName = serieName;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }
}

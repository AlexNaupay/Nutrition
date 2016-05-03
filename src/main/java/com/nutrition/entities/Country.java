package com.nutrition.entities;

/**
 * Clase que contiene los campos de la Tabla Pais
 *
 * @author Joe Luis
 */
public class Country {

    //Los nombres de los atributos son los mismos que los campos en Base de Datos
    //Codigo de Pais
    private String countrycode;
    //Nombre corto
    private String shortname;
    //Nombre largo
    private String longname;
    //Codigo 2 letras
    private String alphacode;
    //Unidad de Moneda
    private String currencyunit;
    //Notas sobre el pais
    private String note;
    //Año base de las cuentas
    private int accountsbaseyear;
    //Sistema de cuentas nacionales
    private String systemnationalaccounts;
    //Ultimo censo
    private int latestpopulationcensus;
    //Ultima encuesta de hogares
    private String latesthouseholdsurvey;

    // image uri
    private String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the countrycode
     */
    public String getCountrycode() {
        return countrycode;
    }

    /**
     * @return the shortname
     */
    public String getShortname() {
        return shortname;
    }

    /**
     * @return the longname
     */
    public String getLongname() {
        return longname;
    }

    /**
     * @return the alphacode
     */
    public String getAlphacode() {
        return alphacode;
    }

    /**
     * @return the currencyunit
     */
    public String getCurrencyunit() {
        return currencyunit;
    }

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @return the accountsbaseyear
     */
    public int getAccountsbaseyear() {
        return accountsbaseyear;
    }

    /**
     * @return the systemnationalaccounts
     */
    public String getSystemnationalaccounts() {
        return systemnationalaccounts;
    }

    /**
     * @return the latestpopulationcensus
     */
    public int getLatestpopulationcensus() {
        return latestpopulationcensus;
    }

    /**
     * @return the latesthouseholdsurvey
     */
    public String getLatesthouseholdsurvey() {
        return latesthouseholdsurvey;
    }

    /**
     * @param countrycode the countrycode to set
     */
    public void setCountrycode(String countrycode) {
        this.countrycode = countrycode;
    }

    /**
     * @param shortname the shortname to set
     */
    public void setShortname(String shortname) {
        this.shortname = shortname;
    }

    /**
     * @param longname the longname to set
     */
    public void setLongname(String longname) {
        this.longname = longname;
    }

    /**
     * @param alphacode the alphacode to set
     */
    public void setAlphacode(String alphacode) {
        this.alphacode = alphacode;
    }

    /**
     * @param currencyunit the currencyunit to set
     */
    public void setCurrencyunit(String currencyunit) {
        this.currencyunit = currencyunit;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * @param accountsbaseyear the accountsbaseyear to set
     */
    public void setAccountsbaseyear(int accountsbaseyear) {
        this.accountsbaseyear = accountsbaseyear;
    }

    /**
     * @param systemnationalaccounts the systemnationalaccounts to set
     */
    public void setSystemnationalaccounts(String systemnationalaccounts) {
        this.systemnationalaccounts = systemnationalaccounts;
    }

    /**
     * @param latestpopulationcensus the latestpopulationcensus to set
     */
    public void setLatestpopulationcensus(int latestpopulationcensus) {
        this.latestpopulationcensus = latestpopulationcensus;
    }

    /**
     * @param latesthouseholdsurvey the latesthouseholdsurvey to set
     */
    public void setLatesthouseholdsurvey(String latesthouseholdsurvey) {
        this.latesthouseholdsurvey = latesthouseholdsurvey;
    }

}

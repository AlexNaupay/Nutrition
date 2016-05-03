package com.nutrition.model;

import java.util.ArrayList;

/**
 * @author alexh
 */

public class SerieRequest {

    private String serie;  // serie code

    private ArrayList<String> countries;  // countries code

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public ArrayList<String> getCountries() {
        return countries;
    }

    public void setCountries(ArrayList<String> countries) {
        this.countries = countries;
    }
}

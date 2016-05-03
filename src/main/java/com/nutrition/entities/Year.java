package com.nutrition.entities;

/** Tabla que contiene los datos de un año
 *
 * @author Joe Luis
 */
public class Year {
    //Codigo de Año
    private int codAnio;
    //Nombre del año
    private String descAnio;

    /**
     * @return the codAnio
     */
    public int getCodAnio() {
        return codAnio;
    }

    /**
     * @return the descAnio
     */
    public String getDescAnio() {
        return descAnio;
    }

    /**
     * @param codAnio the codAnio to set
     */
    public void setCodAnio(int codAnio) {
        this.codAnio = codAnio;
    }

    /**
     * @param descAnio the descAnio to set
     */
    public void setDescAnio(String descAnio) {
        this.descAnio = descAnio;
    }
    
    
}

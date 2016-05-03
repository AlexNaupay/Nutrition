package com.nutrition.entities;

/** Clase que contiene los campos de la tabla Serie
 *
 * @author Joe Luis
 */
public class Serie {
    //Codigo de la serie
    private String seriescode;
    //Nombre de la serie
    private String indicatorname;
    //Categoria de la serie
    private String topic;
    //Descripcion completa de la serie
    private String longdefinition;
    //Intervalo de toma de muestras
    private String periodicity;
    //Forma de agregacion
    private String aggregationmethod;
    //Notas sobre la serie
    private String notes;
    //Estudio de Origen de la serie
    private String source;

    /**
     * @return the seriescode
     */
    public String getSeriescode() {
        return seriescode;
    }

    /**
     * @return the indicatorname
     */
    public String getIndicatorname() {
        return indicatorname;
    }

    /**
     * @return the topic
     */
    public String getTopic() {
        return topic;
    }

    /**
     * @return the longdefinition
     */
    public String getLongdefinition() {
        return longdefinition;
    }

    /**
     * @return the periodicity
     */
    public String getPeriodicity() {
        return periodicity;
    }

    /**
     * @return the aggregationmethod
     */
    public String getAggregationmethod() {
        return aggregationmethod;
    }

    /**
     * @return the notes
     */
    public String getNotes() {
        return notes;
    }

    /**
     * @return the source
     */
    public String getSource() {
        return source;
    }

    /**
     * @param seriescode the seriescode to set
     */
    public void setSeriescode(String seriescode) {
        this.seriescode = seriescode;
    }

    /**
     * @param indicatorname the indicatorname to set
     */
    public void setIndicatorname(String indicatorname) {
        this.indicatorname = indicatorname;
    }

    /**
     * @param topic the topic to set
     */
    public void setTopic(String topic) {
        this.topic = topic;
    }

    /**
     * @param longdefinition the longdefinition to set
     */
    public void setLongdefinition(String longdefinition) {
        this.longdefinition = longdefinition;
    }

    /**
     * @param periodicity the periodicity to set
     */
    public void setPeriodicity(String periodicity) {
        this.periodicity = periodicity;
    }

    /**
     * @param aggregationmethod the aggregationmethod to set
     */
    public void setAggregationmethod(String aggregationmethod) {
        this.aggregationmethod = aggregationmethod;
    }

    /**
     * @param notes the notes to set
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * @param source the source to set
     */
    public void setSource(String source) {
        this.source = source;
    }

    
    
}

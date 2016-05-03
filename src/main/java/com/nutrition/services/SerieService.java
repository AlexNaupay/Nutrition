package com.nutrition.services;


import com.nutrition.entities.Serie;

import java.util.List;

public interface SerieService {

    /**
     * Obtiene todas las series
     * @return List<Serie>
     */
    List<Serie> findAll();

}

package com.nutrition.repositories;


import com.nutrition.entities.Serie;

import java.util.List;

public interface SerieRepository {

    /**
     * Obtiene todas las series
     * @return List<Serie>
     */
    List<Serie> findAll();

}

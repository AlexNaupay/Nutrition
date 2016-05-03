package com.nutrition.services.implementation;


import com.nutrition.entities.Serie;
import com.nutrition.repositories.SerieRepository;
import com.nutrition.services.SerieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SerieServiceImpl implements SerieService {

    @Autowired
    SerieRepository serieRepository;

    @Override
    public List<Serie> findAll() {
        return serieRepository.findAll();
    }

}

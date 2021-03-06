package com.nutrition.services.implementation;


import com.nutrition.entities.Country;
import com.nutrition.repositories.CountryRepository;
import com.nutrition.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService{

    @Autowired
    CountryRepository countryRepository;

    @Override
    public List<Country> findAll() {
        return countryRepository.findAll();
    }


}

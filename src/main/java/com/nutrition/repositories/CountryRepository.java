package com.nutrition.repositories;

import com.nutrition.entities.Country;

import java.util.List;

public interface CountryRepository {

    List<Country> findAll();

}

package com.nutrition.services.implementation;


import com.nutrition.model.Data;
import com.nutrition.repositories.StatRepository;
import com.nutrition.services.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StatServiceImpl implements StatService {

    @Autowired
    StatRepository statRepository;

    @Override
    public List<Data> allData(String serie, ArrayList<String> countries) {
        if (countries.size() < 1 || serie.isEmpty())
            return null;
        return statRepository.allData(serie, countries);
    }
}

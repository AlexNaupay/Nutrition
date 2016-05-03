package com.nutrition.repositories;


import com.nutrition.model.Data;

import java.util.ArrayList;
import java.util.List;

public interface StatRepository {
    /**
     * Obtiene todos los datos para los países y serie elegida
     * @param serie
     * @param countries
     * @return
     */
    List<Data> allData(String serie, ArrayList<String> countries);

}

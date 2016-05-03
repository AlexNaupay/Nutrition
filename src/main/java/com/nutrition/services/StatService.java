package com.nutrition.services;

import com.nutrition.model.Data;

import java.util.ArrayList;
import java.util.List;

public interface StatService {

    List<Data> allData(String serie, ArrayList<String> countries);

}

package com.nutrition.repositories.mappers;


import com.nutrition.model.Data;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DataMapper implements RowMapper<Data> {

    @Override
    public Data mapRow(ResultSet resultSet, int i) throws SQLException {
        Data data = new Data();

        data.setCountryCode(resultSet.getString("countrycode"));
        data.setCountryName(resultSet.getString("shortname"));
        data.setSerieCode(resultSet.getString("seriescode"));
        data.setSerieName(resultSet.getString("indicatorname"));
        data.setAnio(resultSet.getInt("anio"));
        data.setValue(resultSet.getFloat("value"));

        return data;
    }
}

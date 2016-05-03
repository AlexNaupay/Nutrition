package com.nutrition.repositories.mappers;

import com.nutrition.entities.Serie;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SerieMapper implements RowMapper<Serie>{

    @Override
    public Serie mapRow(ResultSet resultSet, int i) throws SQLException {
        Serie serie = new Serie();
        serie.setSeriescode(resultSet.getString("seriescode"));
        serie.setIndicatorname(resultSet.getString("indicatorname"));
        serie.setTopic(resultSet.getString("topic"));

        return serie;
    }
}

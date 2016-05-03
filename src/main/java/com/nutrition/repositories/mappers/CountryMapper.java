package com.nutrition.repositories.mappers;

import com.nutrition.entities.Country;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CountryMapper implements RowMapper<Country> {
    @Override
    public Country mapRow(ResultSet resultSet, int i) throws SQLException {

        Country country = new Country();
        country.setCountrycode(resultSet.getString("countrycode"));
        country.setShortname(resultSet.getString("shortname"));
        country.setLongname(resultSet.getString("longname"));
        country.setImage(resultSet.getString("image"));

        return country;
    }
}

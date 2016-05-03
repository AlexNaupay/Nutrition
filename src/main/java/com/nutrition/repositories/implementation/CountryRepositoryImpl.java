package com.nutrition.repositories.implementation;


import com.nutrition.entities.Country;
import com.nutrition.repositories.CountryRepository;
import com.nutrition.repositories.mappers.CountryMapper;
import com.nutrition.repositories.utils.QueryBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class CountryRepositoryImpl implements CountryRepository {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        jdbcTemplate = new JdbcTemplate(this.dataSource);
    }

    @Override
    public List<Country> findAll() {
        return this.jdbcTemplate.query( QueryBuild.devolverListaPaises(), new CountryMapper());
    }


}

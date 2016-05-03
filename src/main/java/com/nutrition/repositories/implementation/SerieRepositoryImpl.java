package com.nutrition.repositories.implementation;


import com.nutrition.entities.Serie;
import com.nutrition.repositories.SerieRepository;
import com.nutrition.repositories.mappers.SerieMapper;
import com.nutrition.repositories.utils.QueryBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class SerieRepositoryImpl implements SerieRepository {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        jdbcTemplate = new JdbcTemplate(this.dataSource);
    }

    @Override
    public List<Serie> findAll() {
        return this.jdbcTemplate.query( QueryBuild.devolverListaSeries(), new SerieMapper());
    }
}

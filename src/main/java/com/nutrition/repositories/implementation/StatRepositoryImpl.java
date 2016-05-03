package com.nutrition.repositories.implementation;


import com.nutrition.model.Data;
import com.nutrition.repositories.StatRepository;
import com.nutrition.repositories.mappers.DataMapper;
import com.nutrition.repositories.utils.QueryBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class StatRepositoryImpl implements StatRepository {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Data> allData(String serie, ArrayList<String> countries) {

        String query = QueryBuild.dataQuery(serie, countries);
        return this.jdbcTemplate.query(query, new DataMapper() );

    }
}

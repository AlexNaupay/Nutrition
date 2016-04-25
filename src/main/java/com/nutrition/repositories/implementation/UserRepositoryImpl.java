package com.nutrition.repositories.implementation;

import com.nutrition.entities.User;
import com.nutrition.repositories.UserRepository;
import com.nutrition.repositories.mappers.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class UserRepositoryImpl implements UserRepository{

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;

    }

    @Override
    public List<User> findAll() {
        this.jdbcTemplate = new JdbcTemplate(dataSource);

        return this.jdbcTemplate.query("SELECT * FROM users", new UserMapper() );

    }
}

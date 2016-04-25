package com.nutrition.repositories;

import com.nutrition.entities.User;

import java.util.List;

public interface UserRepository {

    List<User> findAll();

}

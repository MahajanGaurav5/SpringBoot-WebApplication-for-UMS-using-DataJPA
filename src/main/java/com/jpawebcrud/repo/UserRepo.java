package com.jpawebcrud.repo;


import org.springframework.data.repository.CrudRepository;

import com.jpawebcrud.model.User;

public interface UserRepo extends CrudRepository<User, Integer> {

}

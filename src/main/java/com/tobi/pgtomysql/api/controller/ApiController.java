package com.tobi.pgtomysql.api.controller;

import com.tobi.pgtomysql.ant.pgsql.entity.Person;
import com.tobi.pgtomysql.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ApiController {

    @Autowired
    private ApiService apiService;

    @GetMapping("test")
    public List<Person> test(){
        return apiService.test();
    }
}

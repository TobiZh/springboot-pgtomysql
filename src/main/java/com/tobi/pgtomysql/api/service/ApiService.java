package com.tobi.pgtomysql.api.service;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.tobi.pgtomysql.ant.pgsql.entity.Person;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApiService {

    @DS("pgsql")
    public List<Person> test() {
        QueryWrapper qw=new QueryWrapper();
        List<Person> person=new Person().selectList(qw);
        return person;
    }
}

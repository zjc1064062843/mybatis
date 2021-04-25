package cn.offcn.service;

import cn.offcn.entity.Person;
import cn.offcn.utils.PageView;

import java.util.List;

public interface PersonService {
    public void addPerson(Person person);
    public void updatePerson(Person person);
    public void deletePerson(Integer id);
    public Person findPersonById(Integer id);
    public PageView<Person> findPersons(int currentPage, int pageSize);
}

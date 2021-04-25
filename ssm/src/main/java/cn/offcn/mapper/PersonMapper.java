package cn.offcn.mapper;

import cn.offcn.entity.Person;

import java.util.List;

public interface PersonMapper {

    public void savePerson(Person person);
    public void updatePerson(Person person);
    public void deletePerson(Integer id);
    public Person getPersonById(Integer id);
    public List<Person> getPersons();
}

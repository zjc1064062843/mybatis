package cn.offcn.service.impl;

import cn.offcn.entity.Person;
import cn.offcn.mapper.PersonMapper;
import cn.offcn.service.PersonService;
import cn.offcn.utils.PageView;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonMapper personMapper;

    @Override
    public void addPerson(Person person) {
        personMapper.savePerson(person);
    }

    @Override
    public void updatePerson(Person person) {
        personMapper.updatePerson(person);
    }

    @Override
    public void deletePerson(Integer id) {
        personMapper.deletePerson(id);
    }

    @Override
    public Person findPersonById(Integer id) {
        return personMapper.getPersonById(id);
    }

    @Override
    public PageView<Person> findPersons(int currentPage, int pageSize) {
        //1. 设置分页
        PageHelper.startPage(currentPage,pageSize);
        //2. 查询
        List<Person> personList = personMapper.getPersons();
        //3.创建PageInfo对象
        PageInfo<Person> pageInfo=new PageInfo<>(personList);
        PageView<Person> pageView=new PageView<>(currentPage,pageSize);
        pageView.setRecords(pageInfo.getList());
        pageView.setTotalrecords(pageInfo.getTotal());
        return pageView;
    }
}

package cn.test;

import cn.offcn.entity.Person;
import cn.offcn.service.PersonService;
import cn.offcn.service.impl.PersonServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext-*.xml")
public class PersonTest {

    @Autowired
    private PersonService personService;

    @Test
    public  void testGetPersonById(){
        Person person = personService.findPersonById(1);
        System.out.println(person);
    }

}

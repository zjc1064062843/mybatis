package cn.offcn.controller;

import cn.offcn.entity.Person;
import cn.offcn.service.PersonService;
import cn.offcn.utils.PageView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/person")
public class PersonController {

    @Value("${pageSize}")
    private int pageSize;
    @Autowired
    private PersonService personService;

    @RequestMapping("/getPersonById")
    public String getPersonById(Integer id, Model model){
        Person person = personService.findPersonById(id);
        System.out.println(person.getGender());
        model.addAttribute("person",person);
        return "forward:/person/update";
    }
    @RequestMapping("/{page}")
    public String forwardPage(@PathVariable("page") String page){
        return "person/"+page;
    }

    @RequestMapping("/show")
    public String getPersons(@RequestParam(defaultValue = "1") int currentPage, Model model){
        PageView<Person> pageView = personService.findPersons(currentPage, pageSize);
        model.addAttribute("pageView",pageView);
        return "person/list";
    }

    @RequestMapping("/addPerson")
    public  String addPerson(Person person){
        personService.addPerson(person);
        return "forward:show";
    }
    @RequestMapping("/updatePerson")
    public String updatePerson(Person person){
        personService.updatePerson(person);
        return "forward:show";
    }

    @RequestMapping("/deletePersonById")
    public String deletePersonById(Integer id){
        personService.deletePerson(id);
        return "forward:show";
    }
}

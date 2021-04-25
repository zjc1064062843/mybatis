package cn.offcn.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class IndexController {

    @RequestMapping("/index")
    public String forwardMain(){
        return "main/main";
    }

    @RequestMapping("/{page}")
    public String forwardPage(@PathVariable("page") String page){
        return "main/"+page;
    }

}

package cn.offcn.controller;


import cn.offcn.entity.User;
import cn.offcn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping("/checkLogin")
    public String checkLogin(String username, String password, HttpSession session){
        List<User> user = userService.getUserByUsernameAndPassword(username, password);
        if(user!=null&&user.size()>0){
            session.setAttribute("activeUser",user.get(0));
            return "redirect:/main/index";
        }
        return "redirect:/login.html";
    }

    public void exitSystem(HttpServletRequest request, HttpServletResponse response) throws  Exception{
        HttpSession session = request.getSession();
        if(session!=null){
            session.invalidate();
        }
        response.getWriter().println("<script>window.top.location='\"+request.getContextPath()+\"/login.html'</script>");
    }
}

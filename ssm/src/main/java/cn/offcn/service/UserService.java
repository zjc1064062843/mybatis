package cn.offcn.service;

import cn.offcn.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    public List<User> getUserByUsernameAndPassword(String username,String password);

}

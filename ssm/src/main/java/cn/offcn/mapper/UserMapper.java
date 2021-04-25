package cn.offcn.mapper;

import cn.offcn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    public List<User> getUserByUsernameAndPassword(@Param("username") String username,@Param("password") String password);
}

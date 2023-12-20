package service;

import dao.UserDao;
import entity.User;

public class UserService {
    UserDao userDao = new UserDao();
    public User getUserByUserName(String sql, String userName, String password){
        User user = userDao.getUserByUserName(sql,userName);
        if (user!=null && user.getUserName()!=null){
            if (user.getPassword().equals(password)){
                return user;
            }
        }
        return null;
    }
    public int registry(String sql,String userName,String password){
        // 注册之前根据用户名去重
        String sql2 = "select * from user where userName=?";
        User user = userDao.getUserByUserName(sql2,userName);
        if (user!=null && user.getUserName()!=null){
            // 表示用户名已经存在
            return 0;
        }else {
            return userDao.registry(sql,userName,password);
        }
    }
}

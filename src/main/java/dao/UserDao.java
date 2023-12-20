package dao;
import entity.User;

public class UserDao {
    public User getUserByUserName(String sql,String userName){
        User user = null;
        try {
            user = jdbc2.selectOne(User.class,sql,userName);
        } catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return user;
    }
    public int registry(String sql,String userName,String password){
        return jdbc2.doInsert(jdbc2.connection,sql,userName,password);
    }
}

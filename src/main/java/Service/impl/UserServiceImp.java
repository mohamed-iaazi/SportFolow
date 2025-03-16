package Service.impl;

import Dao.UserDao;
import Dao.impl.UserDaoImp;
import Model.User;
import java.util.List;

public class UserServiceImp implements Service.UserService {

    private final UserDao userDao=new UserDaoImp();

    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public User getUserByEmail(String email) {
         return userDao.getUserByEmail(email);
    }


    @Override
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    public List<User> getAllUsersByRole(String role) {
        return userDao.getAllUsersByRole(role);
    }

    @Override
    public void updateUser(User user) {
      userDao.updateUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }
}

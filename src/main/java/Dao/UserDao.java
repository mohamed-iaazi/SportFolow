package Dao;

import Model.User;

import java.util.List;

public interface UserDao {
    int addUser(User user);
    User getUserById(int id);
    List<User> getAllUsers();
    boolean updateUser(User user);
    boolean deleteUser(int id);
}

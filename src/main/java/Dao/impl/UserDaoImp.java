package Dao.impl;

import Model.User;
import Util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements Dao.UserDao {

private Connection con= DBConnection.getConnection();
    @Override
    public int addUser(User user) {
        String add="insert into user(username,email,phone,password) values(?,?,?,?)";
     try(PreparedStatement ps=con.prepareStatement(add, Statement.RETURN_GENERATED_KEYS)){

     } catch (Exception e) {
         throw new RuntimeException(e);
     }
     return 0;
    }

    @Override
    public User getUserById(int id) {

        String foundById="select  * from user where id=?";
        try(PreparedStatement ps=con.prepareStatement(foundById)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public List<User> getAllUsers() {
        String SELECT_ALL_USER="insert * into user";
        List<User> users=new ArrayList<>();
        try(PreparedStatement ps=con.prepareStatement(SELECT_ALL_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return users;
    }

    @Override
    public boolean updateUser(User user) {
        String UPDATE_USER="update user set username=?,email=?,phone=?,password=? where id=?";
        try(PreparedStatement ps=con.prepareStatement(UPDATE_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public boolean deleteUser(int id) {
        String DELETE_USER="delete from user  where id=?";
        try(PreparedStatement ps=con.prepareStatement(DELETE_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
 return false;
    }
}

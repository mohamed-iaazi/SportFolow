package Dao.impl;

import Dao.UserDao;
import Model.Member;
import Model.User;
import Util.DBConnection;
import Util.PasswordUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements UserDao {

private Connection con= DBConnection.getConnection();
    @Override
    public int addUser(User user) {
        String add="insert into user(username,email,mobile,password) values(?,?,?,?)";
     try(PreparedStatement ps=con.prepareStatement(add, Statement.RETURN_GENERATED_KEYS)){

         if(user!=null){
             Member member= (Member) user;
             ps.setString(1, user.getUserName());
             ps.setString(2, user.getEmail());
             ps.setInt(3,member.getMobile());
             ps.setString(4, PasswordUtils.encryptPassword(user.getPassword()));
             ps.executeUpdate();

             ResultSet rs = ps.getGeneratedKeys();
             if (rs.next()) {
                 int id=rs.getInt(1);
                 return id;
             }
         }


     } catch (Exception e) {
         throw new RuntimeException(e);
     }
     return 0;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = new Member();
        String foundById="select  * from user where email=?";
        try(PreparedStatement ps=con.prepareStatement(foundById)){
           ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                user.setPassword(rs.getString("password"));
                user.setEmail(email);
                System.out.println(rs.getString("password")+"in the dao");
                return  user ;
            }
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
        return users;    }



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

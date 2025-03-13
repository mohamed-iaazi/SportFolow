package Util;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtils {

    public  static String encryptPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(12));
    }
    public  static  boolean verifyPassword(String password,String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}

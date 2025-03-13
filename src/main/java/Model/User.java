package Model;
public abstract   class User {

    private  int userId;
    private  String userName;
    private  String  email ;
    private  int mobile ;
    private  String password;
    private  String role ;

    public User(int userId ,String userName, String email, int mobile, String password,String role) {
        this.userName = userName;
        this.email = email;
        this.mobile = mobile;
        this.password = password;
        this.role = role;
        this.userId = userId;
    }

    public User(String userName, String email, int mobile, String password, String role) {
        this.userName = userName;
        this.email = email;
        this.mobile = mobile;
        this.password = password;
        this.role = role;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }



}

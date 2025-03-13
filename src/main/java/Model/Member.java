package Model;

import java.sql.Date;

public class Member extends User {
    private  int memberId;
    private  int userId;
    private  String sport;
    private Date birthday_date;

    public Member(String userName, String email, int mobile, String password, String role) {
        super(userName, email, mobile, password, role);
    }

    public Member() {
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    @Override
    public int getUserId() {
        return userId;
    }

    @Override
    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public Date getBirthday_date() {
        return birthday_date;
    }

    public void setBirthday_date(Date birthday_date) {
        this.birthday_date = birthday_date;
    }

  public String getRole(){
        return "member";
  }
}

package Model;

public class Trainer extends User {
    private  int id;
    private  String spesialisation;
    private int userId;

    public Trainer(String userName, String email, int mobile, String password, String role, String spesialisation) {
        super(userName, email, mobile, password, "Trainer");
        this.spesialisation = spesialisation;

    }

    public Trainer() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpesialisation() {
        return spesialisation;
    }

    public void setSpesialisation(String spesialisation) {
        this.spesialisation = spesialisation;
    }

    @Override
    public int getUserId() {
        return userId;
    }

    @Override
    public void setUserId(int userId) {
        this.userId = userId;
    }
}

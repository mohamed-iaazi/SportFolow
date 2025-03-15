package Model;

public class SeanceMember {
    private int id;
    private  int idMember;

    public SeanceMember(int idMember) {
        this.idMember = idMember;
    }

    public SeanceMember() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
    }
}

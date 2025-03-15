package Model;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Seance {
    private String id;
    private String title;
    private String description;
    private LocalDateTime dateTime;
    private  int idTrainer ;

    public Seance(String title, String description, LocalDateTime dateTime, int idTrainer) {
        this.title = title;
        this.description = description;
        this.dateTime = dateTime;
        this.idTrainer = idTrainer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime.toLocalDateTime();
    }

    public int getIdTrainer() {
        return idTrainer;
    }

    public void setIdTrainer(int idTrainer) {
        this.idTrainer = idTrainer;
    }
}

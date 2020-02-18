package app.model;

import javax.persistence.*;

@Entity
@Table(name = "usr")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    public User(long id, String name) {
        this.id = id;
        this.name = name;
    }
///jdbc:postgresql://postgres:12345@postgres/ttt
    public User(){}

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}

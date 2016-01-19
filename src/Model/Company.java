package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/19/16.
 */
@Entity
@Table(name = "company")
public class Company {

    private String id;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}

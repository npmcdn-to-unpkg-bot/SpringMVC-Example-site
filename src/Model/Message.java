package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/13/16.
 */
@Entity
@Table(name = "message")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private String id;
     @Column(name = "name")
     private String name;
    @Column(name = "email")
    private String email;
    @Column(name = "phone")
    private String phone;
    @Column(name = "message")
    private String message;

    public Message() {
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getMessage() {
        return message;
    }

    public String getId() {
        return id;
    }

    public Message( String name, String email, String phone, String message) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.message = message;
    }
}

package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/13/16.
 */
@Entity
@Table(name = "book")
public class Book {

    public Book(String name, String upload_time, String author) {
        this.name = name;
        this.upload_time = upload_time;
        this.author = author;
    }

    @Id

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, name = "id", nullable = false)
    private String id;

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public String getUpload_time() {
        return upload_time;
    }

    public String getAuthor() {
        return author;
    }

    @Column(name = "book_name")
    private String name;

    @Column(name = "upload_time")
    private String upload_time;

    @Column(name = "author")
    private String author;

    public Book() {
    }

    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\'' +
                ", book_name='" + name + '\'' +
                ", upload_time='" + name + '\'' +
                ", author='" + name + '\'' +
                '}';
    }
}
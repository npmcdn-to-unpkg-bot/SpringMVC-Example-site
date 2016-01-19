package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/14/16.
 */
@Entity
@Table(name = "TranslateWord")
public class TranslateWord {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;
    @Column(name = "english")
    private String english;
    @Column(name = "uzbek")
    private String uzbek;

    public TranslateWord(String english, String uzbek) {
        this.english = english;
        this.uzbek = uzbek;
    }

    public TranslateWord() {
    }

    public Integer getId() {
        return id;
    }

    public String getEnglish() {
        return english;
    }

    public String getUzbek() {
        return uzbek;
    }

    @Override
    public String toString() {
        return "TranslateWord{" +
                "id='" + id + '\'' +
                ", english='" + english + '\'' +
                ", uzbek='" + uzbek + '\'' +
                '}';
    }
}

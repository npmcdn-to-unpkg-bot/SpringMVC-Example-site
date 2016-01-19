package Model;

import javax.persistence.*;

/**
 * Created by dexter on 1/19/16.
 */
@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_id", unique = true, nullable = false)
    private long student_id;

    @Column(name = "student_name")
    public String student_name;

    @ManyToOne(cascade = CascadeType.ALL)
    private StudentAddress studentAddress;

    public StudentAddress getStudentAddress() {
        return studentAddress;
    }

    public void setStudentAddress(StudentAddress studentAddress) {
        this.studentAddress = studentAddress;
    }

    public long getStudent_id() {
        return student_id;
    }

    public void setStudent_id(long student_id) {
        this.student_id = student_id;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }


}

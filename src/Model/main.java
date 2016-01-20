package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Created by dexter on 1/19/16.
 */
public class main {
    public static void main(String[] args) {

        StudentAddress studentAddress = new StudentAddress();
        studentAddress.setAddress_detail("Tashkent, Uzbekistan");

        StudentAddress studentAddress1 = new StudentAddress();
        studentAddress1.setAddress_detail("New Jersey, USA");

        Student student = new Student();
        student.setStudent_name("Bahodir");
        student.setStudentAddress(studentAddress);

        Student student1 = new Student();
        student1.setStudent_name("Javohir");
        student1.setStudentAddress(studentAddress);

        Student student2 = new Student();
        student2.setStudent_name("Vohid");
        student2.setStudentAddress(studentAddress1);

        SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(student);
        session.save(student1);
        session.save(student2);

        transaction.commit();
        session.close();
    }
}

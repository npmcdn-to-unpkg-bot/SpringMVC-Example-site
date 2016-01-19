package EmployeeDAO;

import Model.Message;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 * Created by dexter on 1/13/16.
 */
public class MessageDao {
    Configuration configuration = new AnnotationConfiguration();
    Session session;
    Transaction transaction;

    public static void main(String[] args) {
        int a = 15;
        System.out.println(Integer.parseInt(a+"", 16));
    }

    public Message saveMessage(Message message){
       session = configuration. configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        session.save(message);
        transaction.commit();
        session.close();
        return message;
    }
}
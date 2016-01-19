package EmployeeDAO;

import Model.Employee;
import Model.TranslateWord;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import java.util.List;

/**
 * Created by dexter on 1/14/16.
 */
public class TranslateDao {

    Configuration configuration = new AnnotationConfiguration();
    Session session;
    Transaction transaction;

    public List getDataList(String search) {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        return session.createQuery("from TranslateWord where upper(english) like '%" + search.toUpperCase() + "%'" +
                "or upper(uzbek) like '%" + search.toUpperCase() + "%' "
        ).list();
    }


    public TranslateWord saveWord(TranslateWord translateWord) {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        List list = session.createQuery("from TranslateWord where upper(english) like '%" + translateWord.getEnglish().toUpperCase() + "%'" +
                "or upper(uzbek) like '%" + translateWord.getEnglish().toUpperCase() + "%' " +
                "or upper(english) like '%" + translateWord.getUzbek().toUpperCase() + "%' " +
                "or upper(english) like '%" + translateWord.getUzbek().toUpperCase() + "%' "
        ).list();
        if (list.size() == 0) {
            session.save(translateWord);
        }
        transaction.commit();
        session.close();
        return translateWord;
    }
}

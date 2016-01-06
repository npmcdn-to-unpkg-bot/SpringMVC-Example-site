package EmployeeDAO;

import Model.Employee;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import java.util.List;

/**
 * Created by root on 11/29/15.
 */
public class EmployeeDao {
    Configuration configuration = new AnnotationConfiguration();
    Session session;
    Transaction transaction;

    public Employee saveEmployee(Employee employee) {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        String email = employee.getEmail();
        List list = session.createQuery("from Employee where email ='" + email + "'").list();
        if (list.size() == 0) {
            session.save(employee);
        }
        transaction.commit();
        session.close();
        return employee;
    }


    public Employee updateEmployee(String id, String firstName, String lastName, String mobile, String email, String password,
                                   String state) {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        Employee employee = new Employee();
        List list = session.createQuery("from Employee where email ='" + email + "'").list();
        if (list.size() == 0) {
            employee = (Employee) session.get(Employee.class, Integer.valueOf(id));
            employee.setId(Integer.valueOf(id));
            employee.setFirstName(firstName);
            employee.setLastName(lastName);
            employee.setMobile(mobile);
            employee.setEmail(email);
            employee.setPassword(password);
            employee.setState(state);
            session.update(employee);
        }
        transaction.commit();
        session.close();
        return employee;
    }

    public List listEmployee() {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        return session.createQuery("FROM Employee").list();
    }

    public Employee getEmployee(Integer id) {
        session = configuration.configure().buildSessionFactory().openSession();
        Employee employee = (Employee) session.get(Employee.class, id);
        transaction = session.beginTransaction();
        transaction.commit();
        session.close();
        return employee;
    }

    public void deleteEmployee(String id) {
        session = configuration.configure().buildSessionFactory().openSession();
        Employee employee = (Employee) session.get(Employee.class, Integer.valueOf(id));
        transaction = session.beginTransaction();
        session.delete(employee);
        transaction.commit();
        session.close();
    }

    public List getDataList(String text) {
        session = configuration.configure().buildSessionFactory().openSession();
        transaction = session.beginTransaction();
        return session.createQuery("from Employee where upper(firstName) like '%" + text.toUpperCase() + "%'" +
                "or upper(lastName) like '%" + text.toUpperCase() + "%'"
                + "or upper(mobile) like '%" + text.toUpperCase() + "%'"
                + "or upper(email) like '%" + text.toUpperCase() + "%'"
                + "or upper(state) like '%" + text.toUpperCase() + "%'"
        ).list();
    }
}
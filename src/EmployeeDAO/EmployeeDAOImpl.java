package EmployeeDAO;


import java.util.List;

/**
 * Created by root on 12/14/15.
 */
public interface EmployeeDAOImpl<T> {
    String save(T object);

    List<T> list(T object);

    T getElementById(T object);

    T delete(T object);

    T update(T object);
}

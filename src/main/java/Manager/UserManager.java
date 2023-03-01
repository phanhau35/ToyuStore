/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Manager;

import Entity.User;
import Entity.Manufacturer;
import Util.HibernateUtil;
import java.time.LocalDate;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author phanh
 */
public class UserManager {

    public User getCustomer(String account, String password) {
        User user = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
//            Get object list from table, Query should be from class name 
            Query<User> query = session.createQuery("FROM User WHERE account "
                    + "= :account AND password = :password");

            query.setParameter("account", account);
            query.setParameter("password", password);

            user = (User) query.uniqueResult();
            return user;
        } finally {
            session.close();
        }
    }

    public boolean signUp(String account, String password, String name, String phone, LocalDate dateOfBirth, String address, String gender) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            User user = new User();
            user.setAccount(account);
            user.setPassword(password);
            user.setName(name);
            user.setPhone(phone);
            user.setEmail(phone);
            user.setDob(dateOfBirth);
            user.setAddress(address);
            user.setGender(gender);

            session.save(user);
            return user.getCustomerId() > 0;
        } finally {
            session.close();
        }
//        return false;
    }
}

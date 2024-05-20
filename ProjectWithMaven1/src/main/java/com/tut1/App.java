package com.tut1;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        System.out.println( "**********Project Started!!!!!!**********" );
        
        Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory=cfg.buildSessionFactory();
        
       // SessionFactory factory=new Configuration().configure().buildSessionFactory();
        
        
        //creating student
        Student st=new Student();
        st.setId(105);
        st.setName("Tejaswi");
        st.setCity("pune");
        System.out.println(st);
        
        
        Session session=factory.openSession();
        ///
        Transaction tx=session.beginTransaction();
        
        session.save(st);
        tx.commit();
        
      //  session.getTransaction().commit();
        
        
        
        session.close();
        
        
      System.out.println(factory);
       System.out.println(factory.isClosed());
    }
}

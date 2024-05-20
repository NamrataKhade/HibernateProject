package com.tut1;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FetchDemo {
	public static void main(String[] args) {

		// get data

		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();

		// SessionFactory factory=new Configuration().configure().buildSessionFactory();
		Session session=factory.openSession();
		
		//get:student-id:102
		Student student=(Student)session.get(Student.class, 102);
		System.out.println(student);
		
		
		/*//load:student-is:101
		Student student=(Student)session.load(Student.class, 101);
		System.out.println(student);*/
		
		
		factory.close();

	}

}

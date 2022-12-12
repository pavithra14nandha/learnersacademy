package com.academy.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.pojo.Student;

public class StudentDao {
	Session session;
	StandardServiceRegistry ssr;
	Metadata md;
	SessionFactory sf;
	Transaction tran ;
	int row=0;
	public void hibernateConn() {

		 ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		 md = new MetadataSources(ssr).getMetadataBuilder().build();
	
		 sf = md.getSessionFactoryBuilder().build();
	
	  	session = sf.openSession();
	
	  	tran = session.beginTransaction(); 
	}
		 
		 
	public void close() {
		tran.commit();
		session.close();
		
}
	public int insert(Student s)
	{
		try
		{
			hibernateConn();
		row= (int) session.save(s);	
		close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return row;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Student> getStudent(int id)
	{
		hibernateConn();
		Query q=session.createQuery("from Student where Class_ID="+id);
		return q.list();
	}
	public String update(Student s)
	{
		try {
			hibernateConn();
			session.saveOrUpdate(s);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "updated";
	}
	public String delete(Student s)
	{
		try
		{
			hibernateConn();
			session.delete(s);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "deleted";
	}
	
	public List<Student> display()
	{
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();

		SessionFactory sf=md.getSessionFactoryBuilder().build();
		
		Session session=sf.openSession();
		
		Transaction tran=session.beginTransaction();
		tran.commit();
		
		Query q=session.createQuery("from Student");
		   
		return q.list();
	}
}

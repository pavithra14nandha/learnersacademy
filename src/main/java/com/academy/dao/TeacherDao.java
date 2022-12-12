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

import com.pojo.Teacher;

public class TeacherDao {
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
		sf.close();
}
	public int insert(Teacher t)
	{
		
		try {
			hibernateConn();
			row= (int) session.save(t);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	return row;
	}
	
	public String update(Teacher t)
	{
		try {
			hibernateConn();
			session.saveOrUpdate(t);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "updated";
	}
	public String delete(Teacher t)
	{
		try
		{
			hibernateConn();
			session.delete(t);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "deleted";
	}
	public List<Teacher> displatTeacher()
	{
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();

		SessionFactory sf=md.getSessionFactoryBuilder().build();
		
		Session session=sf.openSession();
		
		Transaction tran=session.beginTransaction();
		tran.commit();
		Query q=session.createQuery("from Teacher");
		   
		return q.list();
	}
}

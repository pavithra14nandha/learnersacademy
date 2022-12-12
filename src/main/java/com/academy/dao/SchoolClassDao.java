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

import com.pojo.SchoolClass;

public class SchoolClassDao {
	int row=0;
		Session session;
		StandardServiceRegistry ssr;
		Metadata md;
		SessionFactory sf;
		Transaction tran ;
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
		public int insert(SchoolClass sclass)
		{
		try {
			hibernateConn();
			row= (int) session.save(sclass);
			close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return row;
		}
		public SchoolClass getcls(int id)
		{
			hibernateConn();
			SchoolClass sclass=session.get(SchoolClass.class,id);
			close();
			return sclass;
		}
		public String update(SchoolClass sclass)
		{
			try {
			hibernateConn();
			session.saveOrUpdate(sclass);
			close();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return "updated";
		}
		public String delete(SchoolClass sclass)
		{
			try {
				hibernateConn();
				session.delete(sclass);
				close();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return "deleted";
		}
		public List<SchoolClass> display()
		{
			
			StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
				
			Metadata  md = new MetadataSources(ssr).getMetadataBuilder().build();
		
			SessionFactory sf = md.getSessionFactoryBuilder().build();
		
		  Session session = sf.openSession();
		
		  Transaction	tran = session.beginTransaction(); 
				tran.commit();
				Query q=session.createQuery("from SchoolClass");
			     return q.list();
			
		}
}

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

import com.pojo.ReportSubjectTeacher;

public class AssignDao {
	Session session;
	StandardServiceRegistry ssr;
	Metadata md;
	SessionFactory sf;
	Transaction tran ;
	
	
	public String insert(ReportSubjectTeacher st)
	{
		hibernateConn();
		 int row = (int) session.save(st);
		if(row>0)
		{
			close();
			return "data inserted";
		}
		else{
			close();
			return "data not inserted";
		}
	}
	public	List<ReportSubjectTeacher> getAllData(int id){
		hibernateConn();
		Query q=session.createQuery("from ReportSubjectTeacher where cid="+id);

		
		tran.commit();
		return q.list();
	}
	public String delete(int id) {
		hibernateConn();

		System.out.print("id" + id);
		ReportSubjectTeacher myObject =(ReportSubjectTeacher) session.load(ReportSubjectTeacher.class, id);
		session.delete(myObject);
		
		session.flush();
		close();
		return "deleted";
	}
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
	
}

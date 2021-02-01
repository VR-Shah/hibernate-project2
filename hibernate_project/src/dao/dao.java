package dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import VO.vo;

public class dao {
	public void insert(vo v2) {

		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		session.save(v2);
		
		transaction.commit();
		session.close();
	
	}
	public List search() {

		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Query q = session.createQuery("from vo");
		List searchList = q.list();
		
		transaction.commit();
		session.close();
		
		return searchList;
	}
	public void delete(vo v2){
		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		session.delete(v2);
		
		transaction.commit();
		session.close();
	
	}
	public List edit(vo v2){
		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Query q = session.createQuery("from vo where id="+v2.getId());
		//mention class name here also
		List searchList = q.list();
		transaction.commit();
		session.close();
		
		return searchList;
	
		}
	
	public void update(vo v2){
		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		session.update(v2);
		
		transaction.commit();
		session.close();
	
	}




}

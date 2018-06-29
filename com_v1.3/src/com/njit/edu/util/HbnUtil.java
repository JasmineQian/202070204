package com.njit.edu.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class HbnUtil {
	private static String CONFIG_FILE_LOCATION = "/hibernate.cfg.xml";
	private static Configuration configuration = new Configuration();
	private static org.hibernate.SessionFactory sessionFactory;
	private static String configFile = CONFIG_FILE_LOCATION;

	static {
		try {
			configuration.configure(configFile);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			System.err.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
	}

	private HbnUtil() {
	}

	public static Session getSession() throws HibernateException {
		Session session = null;
		if (sessionFactory == null) {
			rebuildSessionFactory();
		}
		session = sessionFactory.openSession();
		if (session != null) {
			System.out.println("session open....");
		}
		return session;
	}

	public static void rebuildSessionFactory() {
		try {
			configuration.configure(configFile);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			System.err.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
	}

	public static void closeSession(Session session) throws HibernateException {
		if (session != null && session.isOpen()) {
			session.close();
		}
		if (session == null || (!session.isOpen())) {
			System.out.println("session closed...");
		}
	}

}

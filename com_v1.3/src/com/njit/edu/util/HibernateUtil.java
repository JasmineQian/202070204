//package com.njit.edu.util;
//
//import java.util.List;
//
//import org.hibernate.Query;
//import org.hibernate.Session;
//
//public class HibernateUtil {
//
//	/**
//	 * 获得表中记录的总条数
//	 * 
//	 * @param hql：HQL查询语句
//	 * @return int 记录的总条数
//	 */
//	public static int getRows(String hql) {
//		int totalRows = 0;
//		Session session = null;
//		
//		try {
//			session = HbnUtil.getSession();
//			Query query = session.createQuery(hql);
//			totalRows = (new Integer(query.uniqueResult().toString())).intValue();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			HbnUtil.closeSession(session);
//		}
//		return totalRows;
//	}
//
//	/**
//	 * 分页查询数据
//	 * 
//	 * @param hquery
//	 * @return
//	 */
//	public static List find(HQuery hquery) {
//
//		List list = null;
//		Session session = null;
//		
//		try {
//			session = HbnUtil.getSession();
//			Query query = session.createQuery(hquery.getQueryString());
//
//			query.setFirstResult(hquery.getPageStartNo());
//			query.setMaxResults(Constants.RECORD_PER_PAGE);
//
//			list = query.list();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			HbnUtil.closeSession(session );
//		}
//		return list;
//	}
//}

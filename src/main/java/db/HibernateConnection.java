//package db;
//
//import dao.Flight;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.cfg.Configuration;
//
//public class HibernateConnection {
//    private static final Configuration con = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Flight.class);
//    private static final SessionFactory sf = con.buildSessionFactory();
//    private static final Session session = sf.openSession();
//    private static final Transaction tx = session.beginTransaction();
//
//    public static void insertFlight(Flight flight) {
//        session.save(flight);
//        tx.commit();
//    }
//
//    public static String getFlight(int primary_key) {
//        Flight flight = session.get(Flight.class, primary_key);
//        return flight.toString();
//    }
//}

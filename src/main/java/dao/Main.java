package dao;

import db.HibernateConnection;

public class Main {
    public static void flight(String[] args) {
        Flight flight = new Flight();
        flight.setFlight_id(103);
        flight.setName("HelloAir");
        flight.setDays("SUNDAY");
        flight.setDestination("USA");
        flight.setSource("UK");

        HibernateConnection hb = new HibernateConnection();
        hb.insertFlight(flight);
//        RemoteDB rdb = new RemoteDB();
//        rdb.insertFlight(flight);
    }

    public static void main(String[] args) {
        System.out.println(HibernateConnection.getFlight(101));
    }

}

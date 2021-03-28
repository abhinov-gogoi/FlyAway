//package dao;
//
//import javax.persistence.*;
//
//@Entity
//public class Flight {
//    @Id
//    private int flight_id;
//    private String name;
//    private String source;
//    private String destination;
//    private String days;
//
//    public int getFlight_id() {
//        return flight_id;
//    }
//
//    public void setFlight_id(int flight_id) {
//        this.flight_id = flight_id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getSource() {
//        return source;
//    }
//
//    public void setSource(String source) {
//        this.source = source;
//    }
//
//    public String getDestination() {
//        return destination;
//    }
//
//    public void setDestination(String destination) {
//        this.destination = destination;
//    }
//
//    public String getDays() {
//        return days;
//    }
//
//    public void setDays(String days) {
//        this.days = days;
//    }
//
//    @Override
//    public String toString() {
//        return getFlight_id()+" "+ getName()+" - "+getSource()+" to "+getDestination()+" - "+getDays();
//    }
//}

//package db;
//
//import java.sql.*;
//
//public class JDBCConnection {
//
//    private static final String URL = "jdbc:mysql://localhost:3306/flyaway";
//    private static final String user = "root";
//    private static final String password = "admin";
//    private Connection con = DriverManager.getConnection(URL, user, password);
//    private Statement st = con.createStatement();
//
//    public JDBCConnection() throws SQLException {
//    }
//
//    // print all flight names
//    public void main(String[] args) throws SQLException {
//        String query = "select * from flight";
//        ResultSet rs = st.executeQuery(query);
//        while(rs.next()) {
//            String name = rs.getString("name");
//            System.out.println(name);
//        }
//        st.close();
//        con.close();
//    }
//
//    public String fetchValue(String query, String column) throws SQLException {
//        ResultSet rs = st.executeQuery(query);
//        rs.next();
//        return rs.getString(column);
//    }
//}


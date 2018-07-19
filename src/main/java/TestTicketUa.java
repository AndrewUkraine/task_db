import java.sql.*;


public class TestTicketUa {


    private final String HOST = "jdbc:postgresql://localhost:5433/test_Ticket.ua";
    private final String USENAME = "user";
    private final String PASSWORD = "password";

    private Connection connection;

    public TestTicketUa() {
        try {
            connection = DriverManager.getConnection(HOST, USENAME, PASSWORD);
            System.out.println("Connect is workig" );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}




import java.sql.*;

public class Main {

    public static void main(String[] args) {
        TestTicketUa testTicketUa = new TestTicketUa();


        String query = "SELECT * FROM tdr b\n" +
                "WHERE CURRENT_DATE BETWEEN b.datn AND b.datk\n" +
                "ORDER BY kods;";

        try {
            Statement statement = testTicketUa.getConnection().createStatement();

            ResultSet resultSet = statement.executeQuery(query);


            while (resultSet.next()){
                System.out.println(resultSet.getString(2));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

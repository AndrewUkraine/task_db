import java.sql.*;

public class Main {

    public static void main(String[] args) {
        TestTicketUa testTicketUa = new TestTicketUa();


        String query = "SELECT kods FROM tatus";

        try {
            Statement statement = testTicketUa.getConnection().createStatement();

            ResultSet resultSet = statement.executeQuery(query);


            while (resultSet.next()){
                System.out.println(resultSet.getString("kods"));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

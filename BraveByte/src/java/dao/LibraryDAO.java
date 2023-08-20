
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Game;
import service.DBContext;


public class LibraryDAO extends DBContext {
    public List<Game> getAll(int userId) {
        List<Game> games = new ArrayList<>();
        String sql = "SELECT g.[ID], g.[Title], g.[Kind], g.[Background], g.[Price]\n" +
                     "FROM [BraveBYte].[dbo].[Game] g\n" +
                     "INNER JOIN [BraveByte].[dbo].[Library] l ON g.[ID] = l.[GID]\n" +
                     "WHERE l.[AccID] = ?";
        try (
            PreparedStatement st = connection.prepareStatement(sql)
        ) {
            st.setInt(1, userId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Game game = new Game(
                    rs.getInt("ID"),
                    rs.getString("Title"),
                    rs.getString("Kind"),
                    rs.getString("Background"),
                    rs.getDouble("Price")
                );
                games.add(game);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
        return games;
    }
    public static void main(String[] args) {
        LibraryDAO libraryDAO = new LibraryDAO();
        int userId = 1; // Replace with the actual user ID
        
        List<Game> games = libraryDAO.getAll(userId);
        if (!games.isEmpty()) {
            System.out.println("List of games:");
            for (Game game : games) {
                System.out.println(game);
            }
        } else {
            System.out.println("No games found for the user.");
        }
    }
}





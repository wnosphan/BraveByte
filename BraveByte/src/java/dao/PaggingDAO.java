/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Game;
import model.Pagging;
import service.DBContext;

/**
 *
 * @author user
 */
public class PaggingDAO extends DBContext {

    public PaggingDAO() {
    }

    public Pagging getListNews(int page, int perPage) {
        Pagging pagging = new Pagging();
        ArrayList<Game> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Game ORDER BY id OFFSET ? ROWS  FETCH FIRST ? ROWS ONLY";
        int offset = (page - 1) * perPage;
        
        try {
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, offset);
            pst.setInt(2, perPage);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                Game game = new Game();
                game.setId(rs.getInt(1));
                game.setTitle(rs.getString(2));
                game.setDescription(rs.getString(3));
                game.setAuthor(rs.getString(4));
                game.setKind(rs.getString(5));
                game.setPoster(rs.getString(6));
                game.setBackground(rs.getString(7));
                game.setPrice(rs.getInt(8));
                game.setCreated_at(rs.getString(9));
                game.setRating(rs.getInt(10));
                list.add(game);
            }
            //----------------------------------------------------
            pagging.setItems(list);
            
            String sqlCountAll = "SELECT COUNT(*) FROM dbo.Game";
            pst = connection.prepareStatement(sqlCountAll);
            rs = pst.executeQuery();
            int total = 0;
            while (rs.next()) {
                total = rs.getInt(1); // cột 1 là số lượng tin tức, thay vì dùng tên cột thì dùng index cột
            }
            pagging.setTotal(total);
            pagging.setPage(page);
            pagging.setPerPage(perPage);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return pagging;
    }
    
    public static void main(String[] args) {
        PaggingDAO paggingDAO = new PaggingDAO();
        ArrayList<Game> list = paggingDAO.getListNews(1, 3).getItems();
        for (Game game : list) {
            System.out.println(game);
        }
    }
}

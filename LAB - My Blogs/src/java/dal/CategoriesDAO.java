/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import model.Categories;

/**
 *
 * @author mac
 */
public class CategoriesDAO extends DBContext{

    public String getCateName(int catId) {
        try {
            String sql = "SELECT * FROM CATEGORIES WHERE ID = ?";
            statement = conn.prepareStatement(sql);
            statement.setInt(1, catId);
            resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return resultSet.getString("NAME");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Categories> getAllCate() {
        ArrayList<Categories> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM CATEGORIES";
            statement = conn.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while(resultSet.next()) {
                Categories c = new Categories();
                c.setId(resultSet.getInt("ID"));
                c.setName(resultSet.getString("NAME"));
                list.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

/**
 *
 * @author Do Duc Duong
 */
public class MessageDAO extends DBContext{

    public void insertColumn(String name, String email, String phone, String company, String message) {
        try {
            String sql = "INSERT INTO MESSAGES VALUES (?, ?, ?, ?, ?)";
            statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, company);
            statement.setString(5, message);
            statement.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
}

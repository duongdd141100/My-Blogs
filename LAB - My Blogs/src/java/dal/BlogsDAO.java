/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import model.Blog;
import model.Categories;

/**
 *
 * @author Do Duc Duong
 */
public class BlogsDAO extends DBContext{

    public ArrayList<Blog> getAllBlogFooter(int cateId, int blogId) {
        ArrayList<Blog> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM BLOGS WHERE CATE_ID = ? AND ID != ?";
            
            statement = conn.prepareStatement(sql);
            statement.setInt(1, cateId);
            statement.setInt(2, blogId);
            resultSet = statement.executeQuery();
            while(resultSet.next()) {
                Blog b = new Blog();
                b.setId(resultSet.getInt("ID"));
                b.setName(resultSet.getString("NAME"));
                b.setPostDate(resultSet.getString("POST_DATE"));
                b.setContent(resultSet.getString("CONTENT"));
                Categories c = new Categories();
                c.setId(resultSet.getInt("CATE_ID"));
                b.setCate(c);
                list.add(b);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int getFirstBlogId(int cateId) {
        try {
            String sql = "SELECT * FROM BLOGS WHERE ID = ?";
            statement = conn.prepareStatement(sql);
            statement.setInt(1, cateId);
            resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return resultSet.getInt("ID");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return -1;
    }

    public Blog getBlog(int blogId) {
        try {
            String sql = "SELECT * FROM BLOGS WHERE ID = ?";
            statement = conn.prepareStatement(sql);
            statement.setInt(1, blogId);
            resultSet = statement.executeQuery();
            if(resultSet.next()) {
                Blog b = new Blog();
                b.setId(blogId);
                b.setContent(resultSet.getString("CONTENT"));
                b.setName(resultSet.getString("NAME"));
                b.setPostDate(resultSet.getString("POST_DATE"));
                Categories c = new Categories();
                c.setId(resultSet.getInt("CATE_ID"));
                b.setCate(c);
                return b;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.BlogsDAO;
import dal.CategoriesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Blog;
import model.Categories;

/**
 *
 * @author mac
 */
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogsDAO dbBlog = new BlogsDAO();
        CategoriesDAO dbCate = new CategoriesDAO();
        //get category id
        int cateId = 1;
        //get cateId from cookie
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("cateId")) {
                    cateId = Integer.parseInt(cookies[i].getValue());
                }
            }
        }
        //get blogId
        int blogId;
        if (request.getParameter("blogId") != null) {
            blogId = Integer.parseInt(request.getParameter("blogId"));
        } else {
            blogId = dbBlog.getFirstBlogId(cateId);
        }
        //get blog by blogId
        Blog blog = dbBlog.getBlog(blogId);
        //get list blogs
        ArrayList<Blog> listBlogsFooter = dbBlog.getAllBlogFooter(cateId, blogId);
        //get category name
        String cateName = dbCate.getCateName(cateId);
        //get list categories
        ArrayList<Categories> listCate = dbCate.getAllCate();

        request.setAttribute("blog", blog);
        request.setAttribute("listCate", listCate);
        request.setAttribute("listBlogsFooter", listBlogsFooter);
        request.setAttribute("cateName", cateName);
        request.getRequestDispatcher("view/home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cateId = Integer.parseInt(request.getParameter("cateId"));
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("cateId")) {
                    cookies[i].setValue("");
                    cookies[i].setMaxAge(0);
                    response.addCookie(cookies[i]);
                }
            }
        }
        Cookie cookie = new Cookie("cateId", String.valueOf(cateId));
        response.addCookie(cookie);
        response.sendRedirect("home");

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

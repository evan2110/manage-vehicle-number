/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author duc21
 */
public abstract class BaseController extends HttpServlet {

    private boolean isAuth(HttpServletRequest request)
    {
        Account account = (Account)request.getSession().getAttribute("account");
        return account != null;
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
        if(isAuth(request))
        {
            //business
            processGet(request, response);
        }
        else
        {
            response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>\n" +
            "<html>\n" +
            "    <style>\n" +
            "        html {\n" +
            "            background-color: #9ebed3;\n" +
            "            color: red;\n" +
            "            font-size: 20px;\n" +
            "            font-weight: 700;\n" +
            "            font-family: Arial, Helvetica, sans-serif;\n" +
            "        }\n" +
            "        .cover {\n" +
            "            display: inline-block;\n" +
            "        position: fixed;\n" +
            "        top: 0;\n" +
            "        bottom: 0;\n" +
            "         left: 0;\n" +
            "         right: 0;\n" +
            "         width: 300px;\n" +
            "        height: 300px;\n" +
            "         margin: auto;\n" +
            "        background-color: rgb(134, 148, 147);\n" +
            "        }\n" +
            "        button {\n" +
            "            margin-left: 70px;\n" +
            "        }\n" +
            "        p {\n" +
            "            margin-top: 100px;\n" +
            "            margin-left: 20px;\n" +
            "        }\n" +
            "    </style>\n" +
            "<body>\n" +
            "    <div class=\"cover\">\n" +
            "    <p>Bạn phải đăng nhập để thực hiện chức năng này !</p>\n" +
            "  <button type=\"button\" onclick=\"quay_lai_trang_truoc()\">Quay lại trang trước</button>\n" +
            "</div>\n" +
            "  <script>\n" +
            "      function quay_lai_trang_truoc(){\n" +
            "          history.back();\n" +
            "      }\n" +
            "  </script>\n" +
            "\n" +
            "</body>\n" +
            "</html>");
        }
        }
    }
    
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;
    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;

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
        if(isAuth(request))
        {
            //business
            processPost(request, response);
        }
        else
        {
            response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>\n" +
            "<html>\n" +
            "    <style>\n" +
            "        html {\n" +
            "            background-color: #9ebed3;\n" +
            "            color: red;\n" +
            "            font-size: 20px;\n" +
            "            font-weight: 700;\n" +
            "            font-family: Arial, Helvetica, sans-serif;\n" +
            "        }\n" +
            "        .cover {\n" +
            "            display: inline-block;\n" +
            "        position: fixed;\n" +
            "        top: 0;\n" +
            "        bottom: 0;\n" +
            "         left: 0;\n" +
            "         right: 0;\n" +
            "         width: 300px;\n" +
            "        height: 300px;\n" +
            "         margin: auto;\n" +
            "        background-color: rgb(134, 148, 147);\n" +
            "        }\n" +
            "        button {\n" +
            "            margin-left: 70px;\n" +
            "        }\n" +
            "        p {\n" +
            "            margin-top: 100px;\n" +
            "            margin-left: 20px;\n" +
            "        }\n" +
            "    </style>\n" +
            "<body>\n" +
            "    <div class=\"cover\">\n" +
            "    <p>Bạn phải đăng nhập để thực hiện chức năng này !</p>\n" +
            "  <button type=\"button\" onclick=\"quay_lai_trang_truoc()\">Quay lại trang trước</button>\n" +
            "</div>\n" +
            "  <script>\n" +
            "      function quay_lai_trang_truoc(){\n" +
            "          history.back();\n" +
            "      }\n" +
            "  </script>\n" +
            "\n" +
            "</body>\n" +
            "</html>");
        }
        }
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

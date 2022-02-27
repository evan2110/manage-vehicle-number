/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author duc21
 */
public class AccountDBContext extends DBContext{
    public void insertAccount(Account a){
        String sql = "INSERT INTO [Account]\n" +
                "           ([username]\n" +
                "           ,[password])\n" +
                "     VALUES\n" +
                "           (?\n" +
                "           ,?);";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUsername());
            stm.setString(2, a.getPassword());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm!=null)
            {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if(connection != null)
            {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    public Account getAccount(String username)
    {
        try {
            String sql = "SELECT username,password FROM Account where username = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {   
                Account d = new Account();
                d.setUsername(rs.getString("username"));
                d.setPassword(rs.getString("password"));
                return d;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account getAccount(String username, String password)
    {
        try {
            String sql = "SELECT username,password FROM Account where username = ? and password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {   
                Account d = new Account();
                d.setUsername(rs.getString("username"));
                d.setPassword(rs.getString("password"));
                return d;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}

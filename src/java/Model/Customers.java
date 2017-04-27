/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Trung Tien
 */
public class Customers {
    public Customers(){
     
 }  
 public boolean checkLogin(String user, String pass){
     try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://node6969-env-6095897.kilatiron.com/ps04597","root","HAGxnc37371");
        String sql = "select * from customers where User=? and Pass=?";
         PreparedStatement stm = con.prepareStatement(sql);
         stm.setString(1, user);
         stm.setString(2, pass);
         ResultSet rs = stm.executeQuery();
         boolean exist = false;
         exist = rs.next();
         rs.close();stm.close();con.close();
         if(exist){
             return true;
         }
     }catch(Exception e){
         e.printStackTrace();
     }
     return false;
 }
    
}

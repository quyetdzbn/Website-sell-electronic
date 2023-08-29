/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.Product;
import entty.sanpham;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class sanphamDao {
    public static ArrayList<sanpham> getAllSanpham(int oid){
        ArrayList<sanpham> list=new ArrayList();
        String sql = "select p.name,p.image,p.price,o.quantity from product p join Order_Details o on p.id =o.product_id "
                + "where o.order_id= ?";
        
         try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1, oid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                sanpham p=new sanpham(rs.getString(1),rs.getString(2),rs.getInt(4),rs.getInt(3));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        ArrayList<sanpham> list = getAllSanpham(1);
        for(sanpham s:list){
            System.out.println(s);
        }
    }
}

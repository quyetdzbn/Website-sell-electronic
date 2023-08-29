/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.Account;
import entty.Cart;
import entty.Item;
import entty.Order;
import entty.OrderDetail;
import entty.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class OrderDao {
    public static ArrayList<Order> getAllOrder(){
        ArrayList<Order> list=new ArrayList();
        String sql = "select * from Orders";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Order p=new Order(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void delete(int id){
        String sql="delete from Orders where id='"+id+"'";
        String sql2="delete from Order_Details where order_id='"+id+"'";
        try{
            Connection con=getConnect();
            PreparedStatement pstmt=con.prepareStatement(sql);
            pstmt.executeUpdate();

            
            PreparedStatement st2=con.prepareStatement(sql2);
            st2.executeUpdate();
                
            
        }catch(Exception e){
            
        }
    }
    
    public void addOrder(Account a, Cart cart){
        LocalDate date = java.time.LocalDate.now();
        String d = date.toString();
        try {
            Connection con=getConnect();
            String sql = "insert into Orders values(?,?,?,?)";
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1, d);
            st.setInt(2, a.getId());
            st.setInt(3, cart.getToTalMoney());
            st.setInt(4, 0);
            st.executeUpdate();
            
            String sql1="select top 1 id from Orders order by id desc";
            PreparedStatement st1=con.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            
            if(rs.next()){
                int oid = rs.getInt(1);
                for(Item i: cart.getItems()){
                    String sql2="insert into Order_Details values (?,?,?,?)";
                    PreparedStatement st2=con.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3,i.getProduct().getGia());
                    st2.setInt(4, i.getQuantity());
                    st2.executeUpdate();
                }
            }
            String sql3= "update product set soluong = soluong - ? where id=?";
            PreparedStatement st2 = con.prepareStatement(sql3);
            for(Item item: cart.getItems()){
                st2.setInt(1, item.getQuantity());
                st2.setInt(2, item.getProduct().getId());
                st2.executeUpdate();
            }
        } catch (Exception e) {
        }
    }
    public static void UpdateStatusOrder(int id){
        String query="Update Orders set status=? where id='"+id+"'";
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1, 1);
          
            
            ps.executeUpdate();
        }catch(Exception e){
            
        }          
    }
    public static ArrayList<OrderDetail> getOrderDetailById(int id){
        ArrayList<OrderDetail> list=new ArrayList();
        String sql = "select * from Order_Details where order_id = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                OrderDetail o=new OrderDetail(rs.getInt(2),rs.getInt(3),rs.getInt(5),rs.getInt(4));
                list.add(o);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static Order getOrderById(int id){
        String sql = "select * from Orders where id = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Order o=new Order(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
                return o;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
//        ArrayList<Order> list = getAllOrder();
//        for(Order o: list){
//            System.out.println(o);
//        }
//      
        Order o = getOrderById(1);
        System.out.println(getOrderById(1));
        ArrayList<OrderDetail> list = getOrderDetailById(1);
        for(OrderDetail d: list){
            System.out.println(d);
        }
    }
}

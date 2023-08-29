/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import static connect.connectDB.getConnect;
import entty.Product;
import entty.TypeOfPhuKien;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author tuong
 */
public class DAO {
 
    public static ArrayList<Product> getAllPhuKien(){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product where cateID>4";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }
        
        
        return list;
    }
    
    public static ArrayList<TypeOfPhuKien> getAllType(){
        ArrayList<TypeOfPhuKien> list = new ArrayList();
        String sql = "select * from kindOfPhuKien";
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                TypeOfPhuKien c=new TypeOfPhuKien(rs.getInt(1),rs.getString(2));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<Product> getPhuKienByCateID(String cID){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                    "where cateID=?";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ps.setString(1, cID);
            System.out.println("fff");
            System.out.println(cID);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }

        return list;
    }
    
    public static ArrayList<Product> searchPhuKienByName(String txtSearch){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                    "where [name] like ? and [kind] like  '%2%'";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ps.setString(1,"%"+ txtSearch +"%");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }
        
        
        return list;
    }
    
    
     public static ArrayList<TypeOfPhuKien> getAllTypeLaptop(){
        ArrayList<TypeOfPhuKien> list = new ArrayList();
        String sql = "select * from kindOfLaptop";
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                TypeOfPhuKien c=new TypeOfPhuKien(rs.getInt(1),rs.getString(2));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
     
    public static ArrayList<Product> getAllLaptop(){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product where cateID<5";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }
        
        
        return list;
    }
    
    
    public static ArrayList<Product> getLapByCateID(String cID){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                    "where cateID=?";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ps.setString(1, cID);
            System.out.println("fff");
            System.out.println(cID);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }

        return list;
    }
    
    public static ArrayList<Product> searchLapByName(String txtSearch){
        ArrayList<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                    "where [name] like ? and [kind] like  '%1%'";
        try{
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(query);
            ps.setString(1,"%"+ txtSearch +"%");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(9),
                        rs.getInt(10));
        
                list.add(p);
            }
        }catch(Exception e){
            
        }
        
        
        return list;
    }
//     public static void main(String[] args) {
//         ArrayList<TypeOfPhuKien> list = getAllType();
//        for(TypeOfPhuKien c:list){
//            System.out.println(c);
//        }
//    }
//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        List<Product> list = dao.getAllPhuKien();
//        for(Product o : list){
//            System.out.println(o);
//        }
//    }
}

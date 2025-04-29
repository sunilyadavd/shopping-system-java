package com.app.DAO;

import java.util.List;
import java.util.Vector;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.app.DB.DBConnection;
import com.app.DTO.customerDTO;

public class customerDAO {
	
	public int insert(customerDTO dto)	
	{
		int x=0;
		try {
	  Connection con1=	DBConnection.getConn();
	 PreparedStatement ps=con1.prepareStatement
	("insert into customer(cname,cadd,email,mob,unm,pw) values(?,?,?,?,?,?)");		
	  ps.setString(1, dto.getCnm());
	  ps.setString(2, dto.getCadd());
	  ps.setString(3, dto.getEmail());
	  ps.setInt(4,dto.getMob());
	  ps.setString(5, dto.getUnm());
	  ps.setString(6, dto.getPw());
	 x=ps.executeUpdate();
		
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return x;
	}
	
	public List checkLogin(customerDTO dto)
	{
		List lst=new ArrayList();
		try {
			  Connection con1=	DBConnection.getConn();	
			 PreparedStatement ps=con1.prepareStatement
			("select * from customer where unm=? AND pw=?");		
			  ps.setString(1, dto.getUnm());
			  ps.setString(2, dto.getPw());
			 ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
				lst.add(rs.getInt(1));
				lst.add(rs.getString(2));
				lst.add(rs.getString(3));
				lst.add(rs.getString(4));
				lst.add(rs.getInt(5));
				lst.add(rs.getString(6));
				lst.add(rs.getString(7));
				}
				}catch(Exception tt)
				{System.out.println(tt);}
		return lst;
		
	}
	
	public List getAllData()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from customer where status=0");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getString(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   v1.addElement(rs1.getString(6));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	public int uploadFile(String fnm,String price,String type,InputStream in)
	{
		int x=0;
		int price1=Integer.parseInt(price);
		try {
			Connection con1=DBConnection.getConn();
		   PreparedStatement ps=con1.prepareStatement
			("insert into imagedata(name,price,type) values(?,?,?)");
		  ps.setString(1, fnm);
		  ps.setInt(2, price1);
		  ps.setString(3, type);
		 x= ps.executeUpdate();
		 if(x==1)
		 {
	    String path="C:\\Users\\IT\\OneDrive\\Desktop\\java advance\\Hexashop\\src\\main\\webapp\\assets\\images\\"+fnm;
	    FileOutputStream fos=new FileOutputStream(path);
	     byte bt[]= in.readAllBytes();
		 fos.write(bt);
		 fos.close();
		 }
		   
		}catch(Exception tt)
		{System.out.println(tt);}
		return x;
	}
	
	public List getAllImage()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from imagedata");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getInt(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	
	public List getwomenImage()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from imagedata where status=0 and type='women'");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getInt(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	public List getmenImage()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from imagedata where status=0 and type='men'");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getInt(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	public List getkidImage()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from imagedata where status=0 and type='kid'");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getInt(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	public List getassImage()
	{
		List lst=new ArrayList();
		try{
			 Connection con1=	DBConnection.getConn();	
			Statement stmt= con1.createStatement();
			ResultSet rs1= stmt.executeQuery
			("select * from imagedata where status=0 and type='acc'");
		  while(rs1.next())
		  {
		   Vector v1=new Vector();
		   v1.addElement(rs1.getInt(1));
		   v1.addElement(rs1.getString(2));
		   v1.addElement(rs1.getInt(3));
		   v1.addElement(rs1.getString(4));
		   v1.addElement(rs1.getInt(5));
		   lst.add(v1);
		  }
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return lst;
	}
	
	
	public int changestatus(int id,int status)	
	{
		int x=0;
		try {
	  Connection con1=	DBConnection.getConn();
	  
	  if(status==0)
	  {
		  PreparedStatement ps = con1.prepareStatement("UPDATE imagedata SET status = ? WHERE imp_id = ?");
		  ps.setInt(1, 1); 
		  ps.setInt(2, id); 
		  x= ps.executeUpdate();;
	  }else
	  {
		  PreparedStatement ps = con1.prepareStatement("UPDATE imagedata SET status = ? WHERE imp_id = ?");
		  ps.setInt(1, 0); 
		  ps.setInt(2, id); 
		  x= ps.executeUpdate();;		
				  
	  }
	  
		}catch(Exception tt)
		{System.out.println(tt);}
		
		return x;
	}
}

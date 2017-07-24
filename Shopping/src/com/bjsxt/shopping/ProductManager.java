package com.bjsxt.shopping;

import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.dao.ProductDao;
import com.bjsxt.shopping.dao.ProductMysqlDao;

public class ProductManager {
	
	private static ProductManager pm = null;
	
	static {
		if(pm == null){
			pm = new ProductManager();
			//you should read the config file to set the specific dao object
			pm.setDao(new ProductMysqlDao());//设置数据库类型
		}
	}
	
	private ProductManager(){}
	
	public static ProductManager getInstance(){
		return pm;
	}
	
	ProductDao dao = null;
	
	public ProductDao getDao() {
		return dao;
	}

	public void setDao(ProductDao dao) {
		this.dao = dao;
	}

	public List<Product> getProducts(){
		return dao.getProducts();
	}
	
	public List<Product> getProducts(int pageNo,int pageSize){
		return dao.getProducts(pageNo, pageSize);
	}
	
	/**
	 * 
	 * @param list
	 * @param pageNo
	 * @param pageSize
	 * @return page counts of the specified pagesize
	 */
	public int getProducts(List<Product> list, int pageNo,int pageSize){
		return dao.getProducts(list, pageNo, pageSize);
	}
	
	public int findpProducts(List<Product> list,
			   int[] categoryId,
			   String keyWord,
			   double lowNormalPrice,
			   double highNormalPrice,
			   double lowMemberPrice,
			   double highMemberPrice,
			   Date startDate,
			   Date endDate,
			   int pageNo,
			   int pageSize){
		return dao.findpProducts(list, categoryId, keyWord, lowNormalPrice, highNormalPrice, lowMemberPrice, highMemberPrice, startDate, endDate, pageNo, pageSize);
	}
	
	public List<Product> findpProducts(String name){
		return null;
	}
	
	public boolean deleteProductByCategoryId(int categoryId){
		return false;
	}
	
	public boolean deleteProductsById(int[] idArray){
		return false;
	}
	
	public boolean updateProduct(Product p){
		return false;
	}
	
	public boolean addProducts(Product p){
		return dao.addProduct(p);
	}
}

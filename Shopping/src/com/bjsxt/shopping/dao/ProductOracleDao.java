package com.bjsxt.shopping.dao;

import java.util.Date;
import java.util.List;

import com.bjsxt.shopping.Product;

public class ProductOracleDao implements ProductDao {

	@Override
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getProducts(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
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
		return 0;
	}
			   

	@Override
	public boolean deleteProductByCategoryId(int categoryId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteProductsById(int[] idArray) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateProduct(Product p) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addProduct(Product p) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getProducts(List<Product> list, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public Product loadById(int id){
		Product p = null;
		
		return p;
	}
	
	public List<Product> getLatestProducts(int count){
		List<Product> list = null;
		return list;
	}

}

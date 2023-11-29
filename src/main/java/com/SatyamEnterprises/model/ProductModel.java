package com.SatyamEnterprises.model;

public class ProductModel {
	private int productID;
	private String CatName,ProdName,MRP,CostPrice,SellingPrice,image;
	
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getCatName() {
		return CatName;
	}
	public void setCatName(String catName) {
		CatName = catName;
	}
	public String getProdName() {
		return ProdName;
	}
	public void setProdName(String prodName) {
		ProdName = prodName;
	}
	public String getMRP() {
		return MRP;
	}
	public void setMRP(String mRP) {
		MRP = mRP;
	}
	public String getCostPrice() {
		return CostPrice;
	}
	public void setCostPrice(String costPrice) {
		CostPrice = costPrice;
	}
	public String getSellingPrice() {
		return SellingPrice;
	}
	public void setSellingPrice(String sellingPrice) {
		SellingPrice = sellingPrice;
	}
	
}

package com.kh.mcdonald.model.dto;

import java.util.Objects;

public class Hamburger {
	
	private String name;
	private int price;
	private String brand;
	
	public Hamburger() {
		super();
	}
	
	public Hamburger(String name, int price, String brand) {
		super();
		this.name = name;
		this.price = price;
		this.brand = brand;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	@Override
	public String toString() {
		return "Hamburger [name=" + name + ", price=" + price + ", brand=" + brand + "]";
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(brand, name, price);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Hamburger other = (Hamburger) obj;
		return Objects.equals(brand, other.brand) && Objects.equals(name, other.name) && price == other.price;
	}
}

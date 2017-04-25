package com.niit.ShoppingCartBackEnd.dto;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1759016930182599588L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private int price;  
	@Column(name="image")
	private String pimage;

	@Transient
	transient private MultipartFile image;

	

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}



	@Column(name = "active")
	private boolean active = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", description="
				+ description + ", active=" + active + ", price=" + price
				+ ", image=" + image + "]";
	}

	public String getFilePath(String path1, String contextPath) {

		String fileName = null;

		if (!image.isEmpty()) {
			try {

				fileName = image.getOriginalFilename();
				byte[] bytes = image.getBytes();
				String npath = path1 + "\\assets\\images\\" + fileName;

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(npath)));
				stream.write(bytes);
				stream.close();
				String dbfileName = contextPath + "/resources/images/"+ fileName;
				this.setPimage(dbfileName);

				return dbfileName;
			} catch (Exception e) {
				return "You failed to upload " + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload because the file was empty";
		}
	}

}

/*
 * Private fields
 */


package com.oracle.strutsdemo.model.bean;

import java.io.Serializable;
import java.util.Set;
public class Dr  implements Serializable{  
	public Dr(int drId) {
		super();
		this.drId = drId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + drId;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Dr other = (Dr) obj;
		if (drId != other.drId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Dr [drId=" + drId + ", drBrand=" + drBrand + ", drSeries=" + drSeries + ", drPrice=" + drPrice
				+ ", drSales=" + drSales + ", drSize=" + drSize + ", drNumber=" + drNumber
				+ ", drWeight=" + drWeight + ",  drCleanliness=" + drCleanliness
				+ ", drColor=" + drColor + ", drCutting=" + drCutting + ", drMaterial=" + drMaterial
				+ ", DRFirstPicture=" + DRFirstPicture + ", DRDescription=" + DRDescription + ", imgs=" + imgs + ", DRExtension="
				+ DRExtension + "]";
	}
	private int   drId;			//���
	private String  drBrand;	//Ʒ��
	private String drSeries;	//ϵ��
	private float  drPrice;		//�ۼ�
	private int drSales;		//����
	private String drSize;		//�ߴ�
	private int  drNumber;		//����
	private String drWeight;	//������
	private String drCleanliness;//����
	private String drColor;		//��ɫ
	private String drCutting;	//�й�
	private String drMaterial;	//����
	private String DRFirstPicture;//��ͼ
	private String DRDescription;	//����
	private int DRExtension;	//�Ƿ��ƹ�
	
	private  Set<DrImage>  imgs;
	
	public Dr(int drId, String drBrand, String drSeries, float drPrice, int drSales, String drSize, int drNumber,
			String drWeight, String drCleanliness, String drColor, String drCutting, String drMaterial,
			String dRFirstPicture, String dRDescription, int dRExtension, Set<DrImage> imgs) {
		super();
		this.drId = drId;
		this.drBrand = drBrand;
		this.drSeries = drSeries;
		this.drPrice = drPrice;
		this.drSales = drSales;
		this.drSize = drSize;
		this.drNumber = drNumber;
		this.drWeight = drWeight;
		this.drCleanliness = drCleanliness;
		this.drColor = drColor;
		this.drCutting = drCutting;
		this.drMaterial = drMaterial;
		DRFirstPicture = dRFirstPicture;
		DRDescription = dRDescription;
		DRExtension = dRExtension;
		this.imgs = imgs;
	}
	public Set<DrImage> getImgs() {
		return imgs;
	}

	public void setImgs(Set<DrImage> imgs) {
		this.imgs = imgs;
	}
	
	public int getDrId() {
		return drId;
	}

	public void setDrId(int drId) {
		this.drId = drId;
	}

	public String getDrBrand() {
		return drBrand;
	}

	public void setDrBrand(String drBrand) {
		this.drBrand = drBrand;
	}

	public String getDrSeries() {
		return drSeries;
	}

	public void setDrSeries(String drSeries) {
		this.drSeries = drSeries;
	}

	public float getDrPrice() {
		return drPrice;
	}

	public void setDrPrice(float drPrice) {
		this.drPrice = drPrice;
	}

	public int getDrSales() {
		return drSales;
	}

	public void setDrSales(int drSales) {
		this.drSales = drSales;
	}

	public String getDrSize() {
		return drSize;
	}

	public void setDrSize(String drSize) {
		this.drSize = drSize;
	}

	public int getDrNumber() {
		return drNumber;
	}

	public void setDrNumber(int drNumber) {
		this.drNumber = drNumber;
	}

	public String getDrWeight() {
		return drWeight;
	}

	public void setDrWeight(String drWeight) {
		this.drWeight = drWeight;
	}

	public String getDrCleanliness() {
		return drCleanliness;
	}

	public void setDrCleanliness(String drCleanliness) {
		this.drCleanliness = drCleanliness;
	}

	public String getDrColor() {
		return drColor;
	}

	public void setDrColor(String drColor) {
		this.drColor = drColor;
	}

	public String getDrCutting() {
		return drCutting;
	}

	public void setDrCutting(String drCutting) {
		this.drCutting = drCutting;
	}

	public String getDrMaterial() {
		return drMaterial;
	}

	public void setDrMaterial(String drMaterial) {
		this.drMaterial = drMaterial;
	}

	public String getDRFirstPicture() {
		return DRFirstPicture;
	}

	public void setDRFirstPicture(String dRFirstPicture) {
		DRFirstPicture = dRFirstPicture;
	}

	public String getDRDescription() {
		return DRDescription;
	}

	public void setDRDescription(String dRDescription) {
		DRDescription = dRDescription;
	}

	public int getDRExtension() {
		return DRExtension;
	}

	public void setDRExtension(int dRExtension) {
		DRExtension = dRExtension;
	}


	public Dr() {
		super();
	}

}

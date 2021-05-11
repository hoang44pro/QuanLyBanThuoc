package entity;

import java.io.Serializable;

public class ChiTietHoaDon implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maChiTietHD;
	private int soLuong;
	private Thuoc thuoc;
	public String getMaChiTietHD() {
		return maChiTietHD;
	}
	public void setMaChiTietHD(String maChiTietHD) {
		this.maChiTietHD = maChiTietHD;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	public Thuoc getThuoc() {
		return thuoc;
	}
	public void setThuoc(Thuoc thuoc) {
		this.thuoc = thuoc;
	}
	
	public ChiTietHoaDon(String maChiTietHD, int soLuong, Thuoc thuoc) {
		super();
		this.maChiTietHD = maChiTietHD;
		this.soLuong = soLuong;
		this.thuoc = thuoc;
	}
	public ChiTietHoaDon(String maChiTietHD) {
		super();
		this.maChiTietHD = maChiTietHD;
	}
	
	public ChiTietHoaDon() {
		super();
	}
	public double tongTien() {
		return soLuong * thuoc.getDonGia();
	}
	@Override
	public String toString() {
		return "ChiTietHoaDon [maChiTietHD=" + maChiTietHD + ", soLuong=" + soLuong + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maChiTietHD == null) ? 0 : maChiTietHD.hashCode());
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
		ChiTietHoaDon other = (ChiTietHoaDon) obj;
		if (maChiTietHD == null) {
			if (other.maChiTietHD != null)
				return false;
		} else if (!maChiTietHD.equals(other.maChiTietHD))
			return false;
		return true;
	}
	
}

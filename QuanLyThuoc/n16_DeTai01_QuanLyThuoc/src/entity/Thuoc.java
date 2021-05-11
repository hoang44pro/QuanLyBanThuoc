package entity;

import java.io.Serializable;
import java.time.LocalDate;

public class Thuoc implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maThuoc;
	private String tenThuoc;
	private double donGia;
	private LocalDate ngaySX;
	private LocalDate hanSuDung;
	private int SLTon;
	private NhaCungCap ncc;
	private LoaiThuoc loaiThuoc;
	private NuocSX nuocSX;

	public String getMaThuoc() {
		return maThuoc;
	}

	public void setMaThuoc(String maThuoc) {
		this.maThuoc = maThuoc;
	}

	public String getTenThuoc() {
		return tenThuoc;
	}

	public void setTenThuoc(String tenThuoc) {
		this.tenThuoc = tenThuoc;
	}

	public double getDonGia() {
		return donGia;
	}

	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}

	public LocalDate getNgaySX() {
		return ngaySX;
	}

	public void setNgaySX(LocalDate ngaySX) {
		this.ngaySX = ngaySX;
	}

	public LocalDate getHanSuDung() {
		return hanSuDung;
	}

	public void setHanSuDung(LocalDate hanSuDung) {
		this.hanSuDung = hanSuDung;
	}

	public int getSLTon() {
		return SLTon;
	}

	public void setSLTon(int sLTon) {
		SLTon = sLTon;
	}

	public NhaCungCap getNcc() {
		return ncc;
	}

	public void setNcc(NhaCungCap ncc) {
		this.ncc = ncc;
	}

	public LoaiThuoc getLoaiThuoc() {
		return loaiThuoc;
	}

	public void setLoaiThuoc(LoaiThuoc loaiThuoc) {
		this.loaiThuoc = loaiThuoc;
	}

	public NuocSX getNuocSX() {
		return nuocSX;
	}

	public void setNuocSX(NuocSX nuocSX) {
		this.nuocSX = nuocSX;
	}

	public Thuoc(String maThuoc, String tenThuoc, double donGia, LocalDate ngaySX, LocalDate hanSuDung, int sLTon,
			NhaCungCap ncc, LoaiThuoc loaiThuoc, NuocSX nuocSX) {
		super();
		this.maThuoc = maThuoc;
		this.tenThuoc = tenThuoc;
		this.donGia = donGia;
		this.ngaySX = ngaySX;
		this.hanSuDung = hanSuDung;
		SLTon = sLTon;
		this.ncc = ncc;
		this.loaiThuoc = loaiThuoc;
		this.nuocSX = nuocSX;
	}

	public Thuoc(String maThuoc) {
		super();
		this.maThuoc = maThuoc;
	}

	public Thuoc() {
		super();
	}

	@Override
	public String toString() {
		return "Thuoc [maThuoc=" + maThuoc + ", tenThuoc=" + tenThuoc + ", donGia=" + donGia + ", ngaySX=" + ngaySX
				+ ", hanSuDung=" + hanSuDung + ", SLTon=" + SLTon + ", ncc=" + ncc + ", loaiThuoc=" + loaiThuoc
				+ ", nuocSX=" + nuocSX + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maThuoc == null) ? 0 : maThuoc.hashCode());
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
		Thuoc other = (Thuoc) obj;
		if (maThuoc == null) {
			if (other.maThuoc != null)
				return false;
		} else if (!maThuoc.equals(other.maThuoc))
			return false;
		return true;
	}

}

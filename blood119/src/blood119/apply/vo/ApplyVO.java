package blood119.apply.vo;

import java.sql.Date;

public class ApplyVO {
	private int apply_index;
	private String apply_sort;
	private String apply_id;
	private Date apply_date;
	private String location;
	private String ani_name;
	private String ani_type;
	private String ani_bloodtype;
	private String ani_gender;
	private int ani_age;
	private String result;
	
	public int getApply_index() {
		return apply_index;
	}
	public void setApply_index(int apply_index) {
		this.apply_index = apply_index;
	}
	public String getApply_sort() {
		return apply_sort;
	}
	public void setApply_sort(String apply_sort) {
		this.apply_sort = apply_sort;
	}
	public String getApply_id() {
		return apply_id;
	}
	public void setApply_id(String apply_id) {
		this.apply_id = apply_id;
	}
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAni_name() {
		return ani_name;
	}
	public void setAni_name(String ani_name) {
		this.ani_name = ani_name;
	}
	public String getAni_type() {
		return ani_type;
	}
	public void setAni_type(String ani_type) {
		this.ani_type = ani_type;
	}
	public String getAni_bloodtype() {
		return ani_bloodtype;
	}
	public void setAni_bloodtype(String ani_bloodtype) {
		this.ani_bloodtype = ani_bloodtype;
	}
	public String getAni_gender() {
		return ani_gender;
	}
	public void setAni_gender(String ani_gender) {
		this.ani_gender = ani_gender;
	}
	public int getAni_age() {
		return ani_age;
	}
	public void setAni_age(int ani_age) {
		this.ani_age = ani_age;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}

package org.alpreah.domain;

import lombok.Data;

@Data
public class member {
	private String m_name;
	private String m_id;
	private String m_pw;
	private String m_pwc;
	private String m_hint;
	private String m_anw;
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}	
	public String getM_pwc() {
		return m_pwc;
	}
	public void setM_pwc(String m_pwc) {
		this.m_pwc = m_pwc;
	}
	public String getM_hint() {
		return m_hint;
	}
	public void setM_hint(String m_hint) {
		this.m_hint = m_hint;
	}
	public String getM_anw() {
		return m_anw;
	}
	public void setM_anw(String m_anw) {
		this.m_anw = m_anw;
	}
}

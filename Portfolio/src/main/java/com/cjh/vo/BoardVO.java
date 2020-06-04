package com.cjh.vo;

public class BoardVO {
	private int idx;
	private String id;
	private String subject;
	private String contents;
	private int count;
	private String regdate;
		
	public BoardVO() {
		
	}
	
	public BoardVO(String subject , String contents , int idx ) {
		this.subject = subject;
		this.contents = contents;
		this.idx = idx;
		
	}
	
	public BoardVO(String id , String subject, String contents, int count) {
		this.id = id;
		this.subject = subject;
		this.contents = contents;
		this.count = count;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}

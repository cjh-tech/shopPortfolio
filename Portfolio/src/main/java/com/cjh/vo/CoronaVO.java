package com.cjh.vo;

public class CoronaVO {
    private String totalCase;
    private String city1p;
    private String city2p;
    private String city3p;
    private String city4p;
    private String city5p;
    private String updateTime;
    
    public CoronaVO() {
    	
    }
	
    public CoronaVO(String totalCase, String city1p, String city2p, String city3p
    		,String city4p, String city5p, String updateTime) {
    	this.totalCase = totalCase;
    	this.city1p=city1p;
    	this.city2p=city2p;
    	this.city3p=city3p;
    	this.city4p=city4p;
    	this.city5p=city5p;
    	this.updateTime=updateTime;
    }

	public String getTotalCase() {
		return totalCase;
	}

	public void setTotalCase(String totalCase) {
		this.totalCase = totalCase;
	}

	public String getCity1p() {
		return city1p;
	}

	public void setCity1p(String city1p) {
		this.city1p = city1p;
	}

	public String getCity2p() {
		return city2p;
	}

	public void setCity2p(String city2p) {
		this.city2p = city2p;
	}

	public String getCity3p() {
		return city3p;
	}

	public void setCity3p(String city3p) {
		this.city3p = city3p;
	}

	public String getCity4p() {
		return city4p;
	}

	public void setCity4p(String city4p) {
		this.city4p = city4p;
	}

	public String getCity5p() {
		return city5p;
	}

	public void setCity5p(String city5p) {
		this.city5p = city5p;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
       
	
 }
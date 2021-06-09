package com.VO;

public class covidDataVO {
	
	private String day;
	private String zone;
	private String confirmedPatient;
	private String foreignImport;
	private String inQuarantine;
	private String releaseFromQuarantine;
	
	public covidDataVO(String day, String zone, String confirmedPatient, String foreignImport, String inQuarantine,
			String releaseFromQuarantine) {
		super();
		this.day = day;
		this.zone = zone;
		this.confirmedPatient = confirmedPatient;
		this.foreignImport = foreignImport;
		this.inQuarantine = inQuarantine;
		this.releaseFromQuarantine = releaseFromQuarantine;
	}
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public String getConfirmedPatient() {
		return confirmedPatient;
	}
	public void setConfirmedPatient(String confirmedPatient) {
		this.confirmedPatient = confirmedPatient;
	}
	public String getForeignImport() {
		return foreignImport;
	}
	public void setForeignImport(String foreignImport) {
		this.foreignImport = foreignImport;
	}
	public String getInQuarantine() {
		return inQuarantine;
	}
	public void setInQuarantine(String inQuarantine) {
		this.inQuarantine = inQuarantine;
	}
	public String getReleaseFromQuarantine() {
		return releaseFromQuarantine;
	}
	public void setReleaseFromQuarantine(String releaseFromQuarantine) {
		this.releaseFromQuarantine = releaseFromQuarantine;
	}
	
	
	
}


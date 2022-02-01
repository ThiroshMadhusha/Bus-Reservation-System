package com.lectures;

public class Lecture {
    private int id;
    private String module;
    private String topic;
    private String lecture;
    private String lectureId;
    private String password;
	public Lecture(int id, String module, String topic, String lecture, String lectureId, String password) {
		
		this.id = id;
		this.module = module;
		this.topic = topic;
		this.lecture = lecture;
		this.lectureId = lectureId;
		this.password = password;
	}
	public int getId() {
		return id;
	}

	public String getModule() {
		return module;
	}

	public String getTopic() {
		return topic;
	}

	public String getLecture() {
		return lecture;
	}

	public String getLectureId() {
		return lectureId;
	}

	public String getPassword() {
		return password;
	}

    
}
    
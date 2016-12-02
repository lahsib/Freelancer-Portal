package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerSkillModel {
    private String id,name,proflieId;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProflieId() {
        return proflieId;
    }

    public void setProflieId(String proflieId) {
        this.proflieId = proflieId;
    }

    @Override
    public String toString() {
        return "FreelancerSkillModel{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", proflieId='" + proflieId + '\'' +
                '}';
    }
}

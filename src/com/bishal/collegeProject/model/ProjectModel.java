package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class ProjectModel {
    private String id,projectName,projectDesc,projectPrice,projectSkills,employerName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectDesc() {
        return projectDesc;
    }

    public void setProjectDesc(String projectDesc) {
        this.projectDesc = projectDesc;
    }

    public String getProjectPrice() {
        return projectPrice;
    }

    public void setProjectPrice(String projectPrice) {
        this.projectPrice = projectPrice;
    }

    public String getProjectSkills() {
        return projectSkills;
    }

    public void setProjectSkills(String projectSkills) {
        this.projectSkills = projectSkills;
    }

    public String getEmployerName() {
        return employerName;
    }

    public void setEmployerName(String employerName) {
        this.employerName = employerName;
    }

    @Override
    public String toString() {
        return "ProjectModel{" +
                "id='" + id + '\'' +
                ", projectName='" + projectName + '\'' +
                ", projectDesc='" + projectDesc + '\'' +
                ", projectPrice='" + projectPrice + '\'' +
                ", projectSkills='" + projectSkills + '\'' +
                ", employerName='" + employerName + '\'' +
                '}';
    }
}

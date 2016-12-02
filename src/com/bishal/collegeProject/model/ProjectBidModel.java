package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class ProjectBidModel {

    private String id,projectId,freelancerId,description,bidAmount,bidDuration;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getFreelancerId() {
        return freelancerId;
    }

    public void setFreelancerId(String freelancerId) {
        this.freelancerId = freelancerId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBidAmount() {
        return bidAmount;
    }

    public void setBidAmount(String bidAmount) {
        this.bidAmount = bidAmount;
    }

    public String getBidDuration() {
        return bidDuration;
    }

    public void setBidDuration(String bidDuration) {
        this.bidDuration = bidDuration;
    }

    @Override
    public String toString() {
        return "ProjectBidModel{" +
                "id='" + id + '\'' +
                ", projectId='" + projectId + '\'' +
                ", freelancerId='" + freelancerId + '\'' +
                ", description='" + description + '\'' +
                ", bidAmount='" + bidAmount + '\'' +
                ", bidDuration='" + bidDuration + '\'' +
                '}';
    }
}

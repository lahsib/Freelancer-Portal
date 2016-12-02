package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class ImageModel {
    private String id,name,profileId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProfileId() {
        return profileId;
    }

    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    @Override
    public String toString() {
        return "ImageModel{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", profileId='" + profileId + '\'' +
                '}';
    }
}

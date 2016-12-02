package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class FreelancerProfileModel {
    private String id,name,tile,email,country,categoryId,userTypeId;


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

    public String getTile() {
        return tile;
    }

    public void setTile(String tile) {
        this.tile = tile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(String userTypeId) {
        this.userTypeId = userTypeId;
    }

    @Override
    public String toString() {
        return "FreelancerProfileModel{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", tile='" + tile + '\'' +
                ", email='" + email + '\'' +
                ", country='" + country + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", userTypeId='" + userTypeId + '\'' +
                '}';
    }
}

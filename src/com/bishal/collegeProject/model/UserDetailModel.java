package com.bishal.collegeProject.model;

/**
 * Created by user on 10/21/16.
 */
public class UserDetailModel {
    private String detailId,description,price,userId,image;

    public String getDetailId() {
        return detailId;
    }

    public void setDetailId(String detailId) {
        this.detailId = detailId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "UserDetailModel{" +
                "detailId='" + detailId + '\'' +
                ", description='" + description + '\'' +
                ", price='" + price + '\'' +
                ", userId='" + userId + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}

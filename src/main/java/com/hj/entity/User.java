package com.hj.entity;

import lombok.Data;

/**
 * Author: hj
 * Date: 2019-04-28 15:34
 * Description: <描述>
 */
@Data
public class User {

    //id
    private int id;

    //姓名
    private String username;

    //手机号
    private String phone;

    //地址
    private String address;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

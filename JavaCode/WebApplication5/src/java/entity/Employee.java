/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author dinhv
 */
public class Employee {
    private int id;
    private String name;
    private String gender;
    private String phone;
    private String mail;
    private String address;
    private Date birth;
    private Date startDate;
    private int idRoom;
    private int idPeople;
    private String img;

    public Employee() {
    }

    public Employee(int id, String name, String gender, String phone, String mail, String address, Date birth, Date startDate, int idRoom, int idPeople, String img) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.phone = phone;
        this.mail = mail;
        this.address = address;
        this.birth = birth;
        this.startDate = startDate;
        this.idRoom = idRoom;
        this.idPeople = idPeople;
        this.img = img;
    }

    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }
   

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public int getIdPeople() {
        return idPeople;
    }

    public void setIdPeople(int idPeople) {
        this.idPeople = idPeople;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", name=" + name + ", gender=" + gender + ", phone=" + phone + ", mail=" + mail + ", address=" + address + ", birth=" + birth + ", startDate=" + startDate + ", idRoom=" + idRoom + ", idPeople=" + idPeople + ", img=" + img + '}';
    }


    
     
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author dinhv
 */
public class NguoiThan {
    private int idNt;
    private String name;
    private String phone;
    private String address;

    public NguoiThan() {
    }

    public NguoiThan(int idNt, String name, String phone, String address) {
        this.idNt = idNt;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }

   
    public int getIdNt() {
        return idNt;
    }

    public void setIdNt(int idNt) {
        this.idNt = idNt;
    }

  

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "NguoiThan{" + "idNt=" + idNt +", name=" + name + ", phone=" + phone + ", address=" + address + '}';
    }
    
    
    
}

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
public class Room {
    private int tpId;
    private int rID;
    private String roomName;
    private int eId;

    public Room() {
    }

    public Room(int tpId, int rID, String roomName, int eId) {
        this.tpId = tpId;
        this.rID = rID;
        this.roomName = roomName;
        this.eId = eId;
    }

    public int getTpId() {
        return tpId;
    }

    public void setTpId(int tpId) {
        this.tpId = tpId;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public int geteId() {
        return eId;
    }

    public void seteId(int eId) {
        this.eId = eId;
    }

    @Override
    public String toString() {
        return "Room{" + "tpId=" + tpId + ", rID=" + rID + ", roomName=" + roomName + ", eId=" + eId + '}';
    }
    
    
}

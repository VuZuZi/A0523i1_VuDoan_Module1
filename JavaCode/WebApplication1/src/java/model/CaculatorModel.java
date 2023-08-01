/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dinhv
 */
public class CaculatorModel {
    private double nb1,nb2;
    char option;

    public CaculatorModel(double nb1, double nb2, char option) {
        this.nb1 = nb1;
        this.nb2 = nb2;
        this.option = option;
    }

    public double getNb1() {
        return nb1;
    }

    public void setNb1(double nb1) {
        this.nb1 = nb1;
    }

    public double getNb2() {
        return nb2;
    }

    public void setNb2(double nb2) {
        this.nb2 = nb2;
    }

    public char getOption() {
        return option;
    }

    public void setOption(char option) {
        this.option = option;
    }

    @Override
    public String toString() {
        return "CaculatorModel{" + "nb1=" + nb1 + ", nb2=" + nb2 + ", option=" + option + '}';
    }
    
    public double getResult(char op, double nb1, double nb2){
        if(op == '+'){
            return nb1 + nb2;
        }else if(op == '-'){
            return nb1 - nb2;
        }else if(op == '*'){
            return nb1 * nb2;
        }else if(op == '/'){
            return nb1 / nb2;
        }
        return 0;
    }
    
}

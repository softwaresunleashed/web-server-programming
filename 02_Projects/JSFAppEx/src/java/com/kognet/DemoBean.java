/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kognet;

import javax.faces.bean.ManagedBean; 
import javax.faces.bean.RequestScoped; 

@ManagedBean(name="DemoBean") 
@RequestScoped
public class DemoBean {
    private String name; 
    
    public DemoBean() {
    }
    
    public String sayDemo() {
        return "hi"; 
    }
    
    public String getName() { 
        return name;
    }
    
    public void setName(String name) {
        this.name = name; 
    }
}
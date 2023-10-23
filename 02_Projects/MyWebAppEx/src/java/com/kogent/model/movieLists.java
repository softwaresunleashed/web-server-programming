/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kogent.model;
import java.util.*;
public class movieLists {
    
    public List getMovies(String genre){
        
       List movies=new ArrayList(); 
        
        if (genre.equals("Comedy")){
            movies.add("I love you to death"); 
            movies.add("scary movie 1"); 
            movies.add("scary movie 2");
        }else if(genre.equals("Sci-Fi")) {
            movies.add("matrix"); 
            movies.add("matric reloaded");    
        }else{
            return null;
        }
        
        return movies;
    
    }
}
    
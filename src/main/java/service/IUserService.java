/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.ArrayList;
import model.User;

/**
 *
 * @author mallo
 */
public interface IUserService {
    
    public ArrayList<User> findAllUsers();
    public User findUserById();
    public User saveUser(User userSave);
}

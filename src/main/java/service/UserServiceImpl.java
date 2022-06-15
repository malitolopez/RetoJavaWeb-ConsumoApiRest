/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import utilities.JsonRequest;

/**
 *
 * @author mallo
 */
public class UserServiceImpl implements IUserService {

    private static IUserService instance;

    private UserServiceImpl() {

    }

    /*Patrón Singleton*/
    public static IUserService getInstance() {
        if (instance == null) {
            instance = new UserServiceImpl();
            return instance;
        } else {
            return instance;
        }
    }

    @Override
    public ArrayList<User> findAllUsers() {
        String salida = "";
        try {
            URL url = new URL("https://62a89c2a943591102ba6872a.mockapi.io/usuario");
            HttpURLConnection apiService = (HttpURLConnection) url.openConnection();
            apiService.setRequestMethod("GET");
            apiService.setRequestProperty("Accept", "application/json");
            if (apiService.getResponseCode() == 200) {
                InputStreamReader entrada = new InputStreamReader(apiService.getInputStream());
                BufferedReader lectura = new BufferedReader(entrada);
                salida = lectura.readLine();
            } else {
                salida = "";
                System.out.println("No se puede conectar a la api: " + apiService.getResponseCode());
            }
            apiService.disconnect();

        } catch (Exception ex) {
            System.out.println("Error api: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public User saveUser(User usuario) {
        try {
            URL url = new URL("https://62a89c2a943591102ba6872a.mockapi.io/usuario");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json");
            con.setRequestProperty("Accept", "application/json");
            con.setDoOutput(true);
            String usuarioJson = JsonRequest.userToJson(usuario);
            try ( OutputStream os = con.getOutputStream()) {
                byte[] input = usuarioJson.getBytes("utf-8");
                os.write(input, 0, input.length);
            }
            try ( BufferedReader br = new BufferedReader(
                    new InputStreamReader(con.getInputStream(), "utf-8"))) {
                StringBuilder response = new StringBuilder();
                String responseLine = null;
                while ((responseLine = br.readLine()) != null) {
                    response.append(responseLine.trim());
                }
                String userJson = response.toString();
                return JsonRequest.jsonToUser(userJson);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    @Override
    public User findUserById() {
        return null;
    }
}

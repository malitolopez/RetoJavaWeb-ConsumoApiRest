<%-- 
    Document   : VerPerfil
    Created on : 14/06/2022, 10:26:17 AM
    Author     : mallo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            .wrapper{display: flex;justify-content: center;align-items: center;height: 100vh;background:#000}.profile{position: relative;width: 500px;height: 500px;background:url("https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200009/91087331-icono-de-perfil-de-avatar-predeterminado-para-hombre-marcador-de-posici%C3%B3n-de-foto-gris-vector-de-ilu.jpg?ver=6.jpg");background-size: cover;cursor: pointer;border: 12px;border-top-right-radius: 35px !important;border-radius: 6px}.overlay{width: 100%;height: 100%;background:rgba(0,0,0,0.8);border-radius: 12px;cursor: pointer;opacity: 0;transition: all 1s;border-top-right-radius: 35px !important;border-radius: 6px}.profile:hover .overlay{opacity: 1}.social-icons{display: flex;list-style: none;bottom: 10px;position: absolute;text-align: center;justify-content: center;left: 22px}.social-icons li{width: 25px;height: 25px;border: 1px solid #eee;padding: 20px;margin-right: 10px;display: flex;justify-content: center;align-items: center;color: #fff;border-radius: 5px;transition: all 1s}.social-icons li:hover{background:#fff;color: #000}.overlay .about{position: relative;justify-content: center;align-items: center;display: flex;top:40%;color: #fff;flex: column}
        </style>

    </head>
    <body>
        
        <div class="wrapper">
            
            <div class="profile">
                <div class="overlay">
                    <div class="about d-flex flex-column">
                        <h4>${user.getNombre()} ${user.getApellido()} </h4> 
                        <span>${user.getEmail()}</span>
                        <span>${user.getTelefono()}</span>
                        <span>${user.getCiudad()}</span>
                        <span>${user.getPais()}</span>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
